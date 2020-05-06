package kosta.mvc.controller;

import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kosta.mvc.model.dao.UsersDAO;
import kosta.mvc.service.FavoriteEvService;
import kosta.mvc.vo.User;

public class LoginController implements Controller {
	UsersDAO usersDAO = new UsersDAO();
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		
		if(userId.equals("") || userId==null || userPwd.equals("") || userPwd==null) {
			throw new Exception("아이디와 비밀번호를 확인해 주세요");
		}else {
			userId = userId.toLowerCase();			
		}
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
			
			//찜한 행사
			Set<Integer> favoriteEventsNo = FavoriteEvService.selectByUserNo(dbUser.getUserNo());
			session.setAttribute("favoriteEventsNo", favoriteEventsNo);
			 
			return new ModelAndView(true, request.getContextPath()+"/front?key=index");
		}else {
			
			return new ModelAndView(true, request.getContextPath()+"/pages/loginFail.jsp");
		}
		
	}

}
