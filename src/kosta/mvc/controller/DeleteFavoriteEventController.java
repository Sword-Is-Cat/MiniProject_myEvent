package kosta.mvc.controller;

import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kosta.mvc.service.FavoriteEvService;

public class DeleteFavoriteEventController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		int evNo = Integer.parseInt(request.getParameter("evNo"));
		int userNo = (int) session.getAttribute("userNo");
		Set<Integer> favoriteEventsNo = (Set<Integer>) session.getAttribute("favoriteEventsNo");
		
		FavoriteEvService.delete(userNo, evNo);
		favoriteEventsNo.remove(evNo);
		
		session.setAttribute("favoriteEventsNo", favoriteEventsNo);
		
		ModelAndView mv = new ModelAndView(true, request.getServletContext().getContextPath()+"/front?key=favoriteEvent");
		return mv;
	}

}
