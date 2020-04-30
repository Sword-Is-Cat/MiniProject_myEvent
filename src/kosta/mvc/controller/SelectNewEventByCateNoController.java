package kosta.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.mvc.model.dao.EventDAO;
import kosta.mvc.vo.Event;

public class SelectNewEventByCateNoController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int cateNo = Integer.parseInt(request.getParameter("cateNo"));

		List<Event> list = new EventDAO().selectNewEventByCateNo(cateNo, 4);

		request.setAttribute("list", list);

		ModelAndView mv = new ModelAndView(true, "☆★☆★어디로가야하오☆★☆★");
		return mv;
	}

}
