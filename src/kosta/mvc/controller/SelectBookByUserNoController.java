package kosta.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kosta.mvc.model.dao.BookDAO;
import kosta.mvc.vo.Book;

public class SelectBookByUserNoController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {		
		HttpSession session = request.getSession();
		int userNo = (int)session.getAttribute("userNo");
		
		List<Book> list = new BookDAO().selectBookByUserNo(userNo);
		
		request.setAttribute("list", list);
		
		ModelAndView mv	= new ModelAndView(false, "pages/bookHistory.jsp");
		
		return mv;
	}

}
