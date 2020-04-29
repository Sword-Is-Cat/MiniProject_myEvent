package kosta.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.mvc.model.dao.EventDAO;
import kosta.mvc.vo.Event;

public class SelectEventController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		int evNo = Integer.parseInt(request.getParameter("evNo"));

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

			request.setAttribute("event", event);
			request.setAttribute("evAddr", evAddr.toString());
		}
		ModelAndView mv = new ModelAndView(false, "pages/event.jsp");
		return mv;
	}

}
