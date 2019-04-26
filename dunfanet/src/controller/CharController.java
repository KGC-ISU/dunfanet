package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.CharData;
import vo.CharAvatarOptionVO;
import vo.CharAvatarVO;
import vo.CharEquipVO;
import vo.CharItemVO;
import vo.CharStatVO;
import vo.CharVO;

public class CharController implements Controller {
	
	private final String viewPath = "/WEB-INF/view/character/";
	
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
				forward = charSearch(req, resp);
				break;
			case "result":
				forward = charResult(req, resp);
				break;
			case "info":
				forward = charInfo(req, resp);
				break;
		}
		
		return forward;
	
	}

	private ControllerForward charInfo(HttpServletRequest req, HttpServletResponse resp) {
		
		CharEquipVO equip = CharData.getInstance().getCharInfo(req, resp);
		req.setAttribute("infos", equip);
		
		List<CharItemVO> lEquip = equip.getEquipment();
		CharItemVO nullCk = new CharItemVO();
		nullCk.setSlotId(null);
		nullCk.setSlotName(null);
		lEquip.add(nullCk);
		req.setAttribute("equip", lEquip);
		
		CharAvatarVO avatar = CharData.getInstance().getCharAvatar(req, resp);
		req.setAttribute("avatar", avatar);
		
		List<CharAvatarOptionVO> oAvatar = avatar.getAvatar();
		CharAvatarOptionVO nullCkAvatar = new CharAvatarOptionVO();
		nullCkAvatar.setSlotId(null);
		nullCkAvatar.setSlotName(null);
		oAvatar.add(nullCkAvatar);
		req.setAttribute("aOption", oAvatar);
		
		CharStatVO stat = CharData.getInstance().getCharStat(req, resp);
		req.setAttribute("charStat", stat);
		
		CharData.getInstance().getCharSwitcing(req, resp);
		
		

		ControllerForward forward = ControllerForward.getInstance();
		forward.setPath(viewPath + "charInfo.jsp");
		return forward;
		
	}

	private ControllerForward charResult(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		CharData.getInstance().getCharId(req, resp);
		
		ControllerForward forward = ControllerForward.getInstance();
		forward.setPath(viewPath + "charResult.jsp");
		return forward;
		
	}

	private ControllerForward charSearch(HttpServletRequest req, HttpServletResponse resp) {
		
		ControllerForward forward = ControllerForward.getInstance();
		forward.setPath(viewPath + "charSearch.jsp");
		return forward;
		
	}
	
	
	
}
