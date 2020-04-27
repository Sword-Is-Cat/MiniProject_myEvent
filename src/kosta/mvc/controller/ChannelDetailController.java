package kosta.mvc.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.mvc.service.ChannelService;
import kosta.mvc.vo.Channel;
import kosta.mvc.vo.User;

public class ChannelDetailController implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int chNo = Integer.parseInt(request.getParameter("chNo"));
		String flag = request.getParameter("flag");
		User userId = (User) request.getAttribute("userId");
		
		boolean state = flag == null ? true : false;
		
		Channel channel = ChannelService.selectByChNo(chNo, state, userId);
		request.setAttribute("channel", channel);
		ModelAndView mv = new ModelAndView();
		mv.setViewName(request.getServletContext().getContextPath()+"/pages/channelDetail.html");
		
		return mv;
	}

	
}
