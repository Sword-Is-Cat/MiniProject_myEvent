package kosta.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.mvc.service.EvService;
import kosta.mvc.vo.Event;

public class IndexController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<Event> list = EvService.selectRecentEvents();
		for(Event ev : list) {
			System.out.println(ev.getEvEmail());
		}
		return new ModelAndView(false, "/pages/index.jsp");
	}

}
