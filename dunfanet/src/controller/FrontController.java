package controller;

import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FrontController extends HttpServlet{
	
	//서브 컨트롤러를 관리하는 객체
	private Map<String, Object> instanceMap = new HashMap();
	
	public FrontController() {}
	
	@Override
	public void init() throws ServletException {
		
		String path = getInitParameter("Path");
		Properties p = new Properties();
		
		try {
			FileReader fs = new FileReader(getServletContext().getRealPath(path));
			p.load(fs);
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		Iterator<?> iter = p.keySet().iterator();
		
		while(iter.hasNext()) {
			
			String key = (String)iter.next();
			String className = p.getProperty(key);
			
			try {
				Class<?> loadClass = Class.forName(className);
				Object instance = loadClass.newInstance();
				instanceMap.put(key, instance);
			} catch (Exception e) {
				e.printStackTrace();
			}		
		}
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		service(req, resp);
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		service(req, resp);
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		ControllerForward forward = null;

		String uri = req.getRequestURI();
		
		if(uri.indexOf(req.getContextPath()) == 0) {
			int length = req.getContextPath().length();
			uri = uri.substring(length);
		}
		
		String[] cmds = uri.split("/");
		
		if(cmds.length <= 1) {
			uri = "main";
		}
		else {
			uri = cmds[1];
		}
		
		Controller con = (Controller)instanceMap.get(uri);
		
		if(con == null) {
			con = new NullController();
		}
		
		try {
			forward = con.execute(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if(forward.isRedirect()) {
			resp.sendRedirect(forward.getPath());
		}
		else {
			RequestDispatcher rd = req.getRequestDispatcher(forward.getPath());
			rd.forward(req, resp);
		}
		
	}
	
}
