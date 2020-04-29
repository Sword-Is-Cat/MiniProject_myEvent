package kosta.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.mvc.model.dao.EventDAO;
import kosta.mvc.vo.Event;

public class SelectEventByChNoController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int chNo = Integer.parseInt(request.getParameter("chNo"));
		
		List<Event> list = new EventDAO().selectEventByChNo(chNo);
		
		request.setAttribute("list", list);

		ModelAndView mv = new ModelAndView(true, "☆★☆★어디로가야하오☆★☆★");
		return mv;
	}

}
