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
		HttpSession session = request.getSession();
		// 최근항목들
		List<Event> recentEvList = EvService.selectRecentEvents(4);
		
		List<Event> myCategoryEvList = null;

		// 내 카테고리에 맞는 항목들 or 비로그인시 랜덤하나 찍어주기
		if(session.getAttribute("userNo")!=null) {
			int userNo = (int) session.getAttribute("userNo");
			myCategoryEvList = EvService.selectRecentEventByMyCategory(userNo);
		}else {
			myCategoryEvList = EvService.selectRecentEventByRandomCategory();
		}
		

		request.setAttribute("recentEvList", recentEvList);
		request.setAttribute("myCategoryEvList", myCategoryEvList);

		return new ModelAndView(false, "/pages/index.jsp");
	}

}
