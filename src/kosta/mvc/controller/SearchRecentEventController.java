package kosta.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.mvc.service.EvService;
import kosta.mvc.vo.Event;

public class SearchRecentEventController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<Event> list = EvService.selectRecentEvents(50);
		
		request.setAttribute("list", list);
		ModelAndView mv = new ModelAndView(false, "/pages/eventList.jsp");
		
		return mv;
	}

}
