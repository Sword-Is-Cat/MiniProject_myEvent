package kosta.mvc.controller;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.mvc.service.EvBoardService;
import kosta.mvc.vo.EvBoard;
import kosta.mvc.vo.Event;
import kosta.mvc.vo.User;

public class EvBoardInsertController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int evNo = Integer.parseInt(request.getParameter("evNo"));
		int userNo =Integer.parseInt(request.getParameter("userNo"));
		int evBoardParentNo = Integer.parseInt(request.getParameter("evBoardParentNo"));
		String evBoardContent = request.getParameter("evBoardContent");
	
		
		if( evBoardContent==null|| evBoardContent.equals("")) {
			throw new RuntimeException("입력값부족");
		} 
		
		Event event = new Event();
		event.setEvNo(evNo);
		User user = new User();
		user.setUserNo(userNo);
		EvBoard evBoard = new EvBoard(event, user, evBoardParentNo, evBoardContent);

		EvBoardService.insert(evBoard);
		ModelAndView mv = new ModelAndView(true, "");
		return mv;
	}

}// end


