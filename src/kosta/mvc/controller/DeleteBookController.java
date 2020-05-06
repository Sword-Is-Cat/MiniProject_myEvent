package kosta.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.mvc.model.dao.BookDAO;

public class DeleteBookController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int evNo = Integer.parseInt(request.getParameter("evNo"));
		int userNo = (int)request.getSession().getAttribute("userNo");
		
		new BookDAO().deleteBook(userNo, evNo);
		
		ModelAndView mv = new ModelAndView(true, "front?key=selectBookByUserNo");
		
		return mv;
	}

}
