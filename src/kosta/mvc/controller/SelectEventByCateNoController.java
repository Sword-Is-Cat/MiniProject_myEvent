package kosta.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.mvc.model.dao.EventDAO;
import kosta.mvc.vo.Event;

public class SelectEventByCateNoController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int cateNo = Integer.parseInt(request.getParameter("cateNo"));

		List<Event> list = new EventDAO().selectEventByCateNo(cateNo);

		request.setAttribute("list", list);

		ModelAndView mv = new ModelAndView(false, "/pages/eventList.jsp");
		return mv;
	}

}
