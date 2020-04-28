package kosta.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.mvc.service.ChannelService;
import kosta.mvc.vo.Channel;

public class ManageChannelController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int userNo = Integer.parseInt(request.getParameter("userNo"));
		
		List<Channel> channel = ChannelService.manageChannel(userNo);
		request.setAttribute("channel", channel);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/pages/channelMng.jsp");
		
		return mv;
	}

}
