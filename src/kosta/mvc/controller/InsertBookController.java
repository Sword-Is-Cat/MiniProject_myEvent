package kosta.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kosta.mvc.model.dao.BookDAO;
import kosta.mvc.vo.Book;
import kosta.mvc.vo.Event;
import kosta.mvc.vo.User;

public class InsertBookController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		int evNo = Integer.parseInt(request.getParameter("evNo"));
		HttpSession session = request.getSession();
		int userNo = (int)session.getAttribute("userNo");
		
		Event event = new Event();
		event.setEvNo(evNo);
		User user = new User();
		user.setUserNo(userNo);
		
		Book book = new Book(user, event);
		request.setAttribute("book", book);
		
		new BookDAO().insertBook(book);
		
		ModelAndView mv = new ModelAndView(true, "front?key=selectEvent&evNo="+evNo);
		
		return mv;
	}

}
