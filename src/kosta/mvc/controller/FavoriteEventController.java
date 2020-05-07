package kosta.mvc.controller;

import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kosta.mvc.service.FavoriteEvService;
import kosta.mvc.vo.Event;

public class FavoriteEventController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		Set<Integer> set = (Set<Integer>) session.getAttribute("favoriteEventsNo");
		List<Event> list = null;
		
		if(set.size()!=0) {
			list = FavoriteEvService.selectEventByEventNumbers(set);
		}
		
		request.setAttribute("eventList", list);
		
		ModelAndView mv = new ModelAndView(false, "/pages/interestEvent.jsp");
		return mv;
	}

}
