package kosta.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kosta.mvc.service.UserService;
import kosta.mvc.vo.User;

public class UserInfoUpdateController implements Controller {
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		if(session.getAttribute("status")==null)return new ModelAndView(true, "pages/loginFirst.html");
		String userId = (String) session.getAttribute("userId");
		
		//가입하는 서비스 구문 넣기
		User user = UserService.selectById(userId);
		
		//제공할 필요 없는 정보 삭제 (-1은 무효값)
		user.setUserPwd(null);
		user.setUserJoinDate(null);
		user.setUserStatus(-1);
		user.setUserNo(-1);
		
		String[] userAddr = user.getUserAddr().split(",");
		
		request.setAttribute("user", user);
		request.setAttribute("userAddr", userAddr);
		
		ModelAndView mv = new ModelAndView(false, "pages/userInfoUpdate.jsp");
		return mv;
	}

}
