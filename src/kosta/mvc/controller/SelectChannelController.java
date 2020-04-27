package kosta.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.mvc.service.ChannelService;
import kosta.mvc.vo.Channel;

public class SelectChannelController implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<Channel> list = ChannelService.selectAll();
		request.setAttribute("list", list);
		
		ModelAndView mv = new ModelAndView();
		mv.setRedirect(false);
		mv.setViewName("/pages/channelList.jsp");
		return mv;
	}
}
