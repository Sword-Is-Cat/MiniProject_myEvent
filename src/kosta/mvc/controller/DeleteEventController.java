package kosta.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.mvc.model.dao.EventDAO;
import kosta.mvc.vo.Event;

public class DeleteEventController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int evNo = Integer.parseInt(request.getParameter("evNo"));

		new EventDAO().deleteEvent(evNo);

		ModelAndView mv = new ModelAndView(true, "pages/index.jsp");
		return mv;
	}

}
