package kosta.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kosta.mvc.model.dao.UsersDAO;

public class GetUserController implements Controller {
	private UsersDAO usersDAO = new UsersDAO();
	/**
	 * AJAX통신으로 유저 정보를 받아와 GSON으로 파싱후 JSON으로 리턴
	 */
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		//session에 status 받아서 String->int
		if(session.getAttribute("status")==null) return new ModelAndView(true, "/pages/login.jsp"); 
		int Status = Integer.parseInt((String)session.getAttribute("status"));
		
		return null;
	}

}
