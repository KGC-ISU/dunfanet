package controller;

public class ControllerForward {
	
	private static ControllerForward instance = new ControllerForward();
	
	public static ControllerForward getInstance() {
		return instance;
	}
	
	boolean redirect = false;
	String path = null;
	
	public boolean isRedirect() {
		return redirect;
	}
	public void setRedirect(boolean redirect) {
		this.redirect = redirect;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	
}
