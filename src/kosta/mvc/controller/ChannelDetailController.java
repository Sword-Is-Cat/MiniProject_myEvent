package kosta.mvc.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.mvc.model.dao.EventDAO;
import kosta.mvc.service.ChannelService;
import kosta.mvc.vo.Channel;
import kosta.mvc.vo.Event;

public class ChannelDetailController implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int chNo = Integer.parseInt(request.getParameter("chNo"));
		//String flag = request.getParameter("flag");
		//User userId = (User) request.getAttribute("userId");
		
		//boolean state = flag == null ? true : false;
		
		//Channel channel = ChannelService.selectByChNo(chNo, state, userId);
		Channel channel = ChannelService.selectByChNo(chNo);
		request.setAttribute("channel", channel);
		
		List<Event> newList = new EventDAO().selectNewEventByChNo(chNo);
		List<Event> endList = new EventDAO().selectEndEventByChNo(chNo);
		
		request.setAttribute("newList", newList);
		request.setAttribute("endList", endList);
		
		ModelAndView mv = new ModelAndView(false, "/pages/channelDetail.jsp");
		
		return mv;
	}

	
}
