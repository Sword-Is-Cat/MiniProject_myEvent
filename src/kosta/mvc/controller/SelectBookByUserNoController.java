package kosta.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.mvc.model.dao.BookDAO;
import kosta.mvc.vo.Book;

public class SelectBookByUserNoController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		int userNo = (int)request.getSession().getAttribute("userNo");
		
		List<Book> list = new BookDAO().selectBookByUserNo(userNo);
		
		request.setAttribute("list", list);
		
		ModelAndView mv	= new ModelAndView(false, "pages/bookHistory.jsp");
		
		return mv;
	}

}
