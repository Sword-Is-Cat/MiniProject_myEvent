package kosta.mvc.controller;

import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kosta.mvc.model.dao.BookDAO;
import kosta.mvc.service.FavoriteEvService;
import kosta.mvc.vo.Book;
import kosta.mvc.vo.Event;
import kosta.mvc.vo.User;

public class InsertBookController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		int evNo = Integer.parseInt(request.getParameter("evNo"));
		int userNo = (int)session.getAttribute("userNo");
		
		new BookDAO().insertBook(userNo, evNo);
		
		ModelAndView mv = new ModelAndView(true, "front?key=selectEvent&evNo="+evNo);
		
		if(session.getAttribute("favoriteEventsNo")!=null) {
			Set<Integer> favoriteEventsNo = (Set<Integer>) session.getAttribute("favoriteEventsNo");
			FavoriteEvService.delete(userNo, evNo);
			favoriteEventsNo.remove(evNo);			
			session.setAttribute("favoriteEventsNo", favoriteEventsNo);
		}
		return mv;
	}

}
