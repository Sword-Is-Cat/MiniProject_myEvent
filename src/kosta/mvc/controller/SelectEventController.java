package kosta.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kosta.mvc.model.dao.BookDAO;
import kosta.mvc.model.dao.EventDAO;
import kosta.mvc.model.dao.FavoriteEvDAO;
import kosta.mvc.model.dao.ManagerDAO;
import kosta.mvc.vo.Event;

public class SelectEventController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		int evNo = Integer.parseInt(request.getParameter("evNo"));
		int userNo = -1;
		if(request.getSession().getAttribute("userNo")!=null) {
			userNo = (int)request.getSession().getAttribute("userNo");
		}
		
		Event event = new EventDAO().selectEventByEvNo(evNo);

		if (event.getEvAddr().equals("Online")) {
			request.setAttribute("evAddr", "Online");

		} else {

			String[] addrArr = event.getEvAddr().split(",");
			StringBuilder evAddr = new StringBuilder();

			evAddr.append("(");
			evAddr.append(addrArr[0]);
			evAddr.append(") ");
			evAddr.append(addrArr[1]);
			evAddr.append(" ");
			evAddr.append(addrArr[2]);
			evAddr.append("<br>");
			evAddr.append(addrArr[3]);
			request.setAttribute("evAddr", evAddr.toString());
		}
		
		int chNo = event.getChannel().getChNo();
		
		boolean isManager = false;
		if(new ManagerDAO().isManager(chNo, userNo)!=0)
			isManager=true;
		
		boolean isBook = false;
		if(new BookDAO().checkBook(userNo, evNo)!=0)
			isBook = true;
		
		boolean isFavor = false;
		if(new FavoriteEvDAO().checkFavorite(userNo, evNo)!=0)
			isFavor = true;
		
		request.setAttribute("event", event);
		request.setAttribute("isManager", isManager);
		request.setAttribute("isBook", isBook);
		request.setAttribute("isFavor", isFavor);
		
		ModelAndView mv = new ModelAndView(false, "pages/event.jsp");
		return mv;
	}

}
