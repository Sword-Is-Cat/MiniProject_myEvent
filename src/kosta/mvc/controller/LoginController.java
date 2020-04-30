package kosta.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kosta.mvc.model.dao.UsersDAO;
import kosta.mvc.vo.Channel;
import kosta.mvc.vo.User;

public class LoginController implements Controller {
	UsersDAO usersDAO = new UsersDAO();
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String userId = request.getParameter("userId").toLowerCase();
		String userPwd = request.getParameter("userPwd").toLowerCase();
		
		User dbUser = usersDAO.selectById(userId);
		
		//아이디가 없을떄 
		if(dbUser == null) return new ModelAndView(true, request.getContextPath()+"/pages/loginFail.jsp");
		
		String dbUserId = dbUser.getUserId().toLowerCase();
		String dbUserPwd = dbUser.getUserPwd().toLowerCase();
		
		if(userId.equals(dbUserId) && userPwd.equals(dbUserPwd)) {
			//session에 값들 추가
			HttpSession session = request.getSession();
			session.setAttribute("userNo", dbUser.getUserNo());
			session.setAttribute("userId", dbUser.getUserId());
			session.setAttribute("userName", dbUser.getUserName());
			session.setAttribute("status", dbUser.getUserStatus());			
			 
			return new ModelAndView(true, request.getContextPath()+"/front?key=index");
		}else {
			
			return new ModelAndView(true, request.getContextPath()+"/pages/loginFail.jsp");
		}
		
	}

}
