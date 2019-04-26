package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.SetItemData;

public class SetItemController implements Controller {
	private final String viewPath = "/WEB-INF/view/setItem/";
	
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
				forward = setItemSearch(req, resp);
				break;
			case "result":
				forward = setItemResult(req, resp);
				break;
			case "info":
				forward = setItemInfo(req, resp);
				break;
		}
		
		return forward;
	
	}

	private ControllerForward setItemInfo(HttpServletRequest req, HttpServletResponse resp) {
		
		SetItemData.getInstance().getSetItemInfo(req, resp);
		
		ControllerForward forward = ControllerForward.getInstance();
		forward.setPath(viewPath + "setItemInfo.jsp");
		return forward;
		
	}

	private ControllerForward setItemResult(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		SetItemData.getInstance().getSetItemResult(req, resp);
		
		ControllerForward forward = ControllerForward.getInstance();
		forward.setPath(viewPath + "setItemResult.jsp");
		return forward;
		
	}

	private ControllerForward setItemSearch(HttpServletRequest req, HttpServletResponse resp) {
		
		ControllerForward forward = ControllerForward.getInstance();
		forward.setPath(viewPath + "setItemSearch.jsp");
		return forward;
		
	}
}
