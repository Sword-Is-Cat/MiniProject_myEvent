package kosta.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.mvc.model.dao.EventDAO;
import kosta.mvc.vo.Event;

public class SelectEventByEvNameController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		
		String evName = request.getParameter("search");
		List<Event> list = new EventDAO().selectEventByEvName(evName);
		
		request.setAttribute("list", list);
		ModelAndView mv = new ModelAndView(false, "/pages/eventList.jsp");
		
		return mv;
	}

}
