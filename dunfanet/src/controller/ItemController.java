package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.ItemData;

public class ItemController implements Controller {
	
	private final String viewPath = "/WEB-INF/view/item/";
	
	@Override
	public ControllerForward execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String uri = req.getRequestURI();
		
		if(uri.indexOf(req.getContextPath()) == 0) {
			int length = req.getContextPath().length();
			uri = uri.substring(length);
		}
		
		String[] cmds = uri.split("/");
		
		ControllerForward forward = null;
		String path = null;
		
		if(cmds.length <= 2) {
			path = "search";
		}
		else {
			path = cmds[2];
		}
		
		switch (path) {
			case "search":
				forward = itemSearch(req, resp);
				break;
			case "result":
				forward = itemResult(req, resp);
				break;
			case "info":
				forward = itemInfo(req, resp);
				break;
		}
		
		return forward;
	
	}

	private ControllerForward itemInfo(HttpServletRequest req, HttpServletResponse resp) {
		
		ItemData.getInstance().getItemInfo(req, resp);
		
		ControllerForward forward = ControllerForward.getInstance();
		forward.setPath(viewPath + "itemInfo.jsp");
		return forward;
		
	}

	private ControllerForward itemResult(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		ItemData.getInstance().getItemResult(req, resp);
		
		ControllerForward forward = ControllerForward.getInstance();
		forward.setPath(viewPath + "itemResult.jsp");
		return forward;
		
	}

	private ControllerForward itemSearch(HttpServletRequest req, HttpServletResponse resp) {
		
		ControllerForward forward = ControllerForward.getInstance();
		forward.setPath(viewPath + "itemSearch.jsp");
		return forward;
		
	}
	
	
	
}
