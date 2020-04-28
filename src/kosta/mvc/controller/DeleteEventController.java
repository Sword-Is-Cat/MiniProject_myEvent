package kosta.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.mvc.model.dao.EventDAO;
import kosta.mvc.vo.Event;

public class DeleteEventController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int evNo = Integer.parseInt(request.getParameter("evNo"));

		Event event = new EventDAO().selectEventByEvNo(evNo);

		request.setAttribute("event", event);

		ModelAndView mv = new ModelAndView(false, "pages/updateEvent.jsp");
		return mv;
	}

}
