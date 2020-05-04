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
		int userNo = (int)request.getSession().getAttribute("userNo");
		
		new BookDAO().insertBook(userNo, evNo);
		
		ModelAndView mv = new ModelAndView(true, "front?key=selectEvent&evNo="+evNo);
		
		return mv;
	}

}
