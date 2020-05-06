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
		int chNo = Integer.parseInt(request.getParameter("chNo"));
		
		User user = UserService.selectUserNoByUserId(userId);
		int userNo = user.getUserNo();
		
		Manager manager = new Manager();
		
		Channel channel = new Channel();
		channel.setChNo(chNo);
		
		manager.setChannel(channel);
		manager.setUser(user);///// userNo에 대해서
		
		EmpowerService.insertChMng(manager);
		
		ModelAndView mv = new ModelAndView(true, "");
		// viewName을 바꿔야됨 
		
		return mv;
	}
}