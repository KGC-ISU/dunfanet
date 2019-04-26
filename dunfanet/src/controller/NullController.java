package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NullController implements Controller {

	@Override
	public ControllerForward execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		ControllerForward forward = ControllerForward.getInstance();
		forward.setPath("/WEB-INF/notfound.jsp");
		return forward;
		
	}

}
