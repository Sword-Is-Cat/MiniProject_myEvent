package kosta.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kosta.mvc.service.ChannelService;
import kosta.mvc.vo.Channel;

public class ManageChannelController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HttpSession session = request.getSession();
		int userNo = (int)session.getAttribute("userNo");
		
		List<Channel> list = ChannelService.manageChannel(userNo);
		request.setAttribute("chList", list);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/pages/channelMng.jsp");
		
		return mv;
	}

}
