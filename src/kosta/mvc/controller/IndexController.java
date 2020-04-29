package kosta.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kosta.mvc.service.EvService;
import kosta.mvc.vo.Event;

public class IndexController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session =  request.getSession();
		int userNo = (int) session.getAttribute("userNo");
		//최근항목들
		List<Event> recentEvList = EvService.selectRecentEvents();
		
		for(Event ev : recentEvList) {
			System.out.println("recent : "+ev.getEvNo());
		}
		//내 카테고리에 맞는 항목들
		List<Event> myCategoryEvList = EvService.selectRecentEventByMyCategory(userNo);
		for(Event ev : myCategoryEvList) {
			System.out.println("recent : "+ev.getEvNo());
		}
		
		return new ModelAndView(false, "/pages/index.jsp");
	}

}
