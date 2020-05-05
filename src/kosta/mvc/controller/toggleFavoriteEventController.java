package kosta.mvc.controller;

import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kosta.mvc.service.FavoriteEvService;

public class toggleFavoriteEventController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		Set<Integer> favoriteEventsNo = (Set<Integer>) session.getAttribute("favoriteEventsNo");
		int evNo = Integer.parseInt(request.getParameter("evNo"));
		int userNo = (int) session.getAttribute("userNo");
		
		if(favoriteEventsNo.contains(evNo)) {
			FavoriteEvService.delete(userNo, evNo);
			favoriteEventsNo.remove(evNo);			
			
			session.setAttribute("favoriteEventsNo", favoriteEventsNo);
			request.setAttribute("toggleFavoriteEventResult", "delete");
		}else {
			FavoriteEvService.insert(userNo, evNo);
			favoriteEventsNo.add(evNo);
			
			session.setAttribute("favoriteEventsNo", favoriteEventsNo);
			request.setAttribute("toggleFavoriteEventResult", "insert");
		}
		
		
		ModelAndView mv = new ModelAndView(false, "/pages/toggleFavoriteEventResult.jsp");

		return mv;
	}

}
