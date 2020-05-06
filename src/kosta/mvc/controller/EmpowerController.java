package kosta.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.mvc.service.EmpowerService;
import kosta.mvc.service.UserService;
import kosta.mvc.vo.Channel;
import kosta.mvc.vo.Manager;
import kosta.mvc.vo.User;

public class EmpowerController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String userId = request.getParameter("userId");
		User user = UserService.selectById(userId);
		int userNo = user.getUserNo();
		int chNo = Integer.parseInt(request.getParameter("chNo"));
		
		Manager manager = new Manager();
		
		Channel channel = new Channel();
		channel.setChNo(chNo);
		
		manager.setChannel(channel);
		
		User user2 = new User();
		user2.setUserNo(userNo);	
		manager.setUser(user);
		EmpowerService.insertChMng(manager);
		
		ModelAndView mv = new ModelAndView(true, "front?key=selectChAuthority&chNo="+chNo);
		// viewName을 바꿔야됨 
		
		return mv;
	}
}