package kosta.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.mvc.model.dao.EventDAO;
import kosta.mvc.vo.Event;

public class SelectNewEventsController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		List<Event> list = new EventDAO().selectNewEvents(4);
		
		request.setAttribute("list", list);
		
		ModelAndView mv = new ModelAndView(false, "☆★ 어디로 가야하오 ☆★");
		
		return mv;
	}

}
