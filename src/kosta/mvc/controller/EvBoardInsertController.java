package kosta.mvc.controller;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.mvc.service.EvBoardService;
import kosta.mvc.vo.EvBoard;

public class EvBoardInsertController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String evBoardNo = request.getParameter("evBoardNo");
		String userName = request.getParameter("name");
		String evBoardConten = request.getParameter("evBoardConten");
		String evBoardTime = request.getParameter("evBoardTime");
		
		if(evBoardNo==null || evBoardNo.equals("") ||
				userName==null || userName.equals("") ||
				evBoardConten == null || evBoardConten.equals("") || evBoardTime == null || evBoardTime.equals("")) {
		} else {

		}
		if (evBoardConten.equals("evBoardConten")) {
			throw new RuntimeException("입력값이 충분하지 않습니다");
		}
		EvBoard elec = new EvBoard();

		EvBoardService.insert(elec);
		ModelAndView mv = new ModelAndView(true, "elec");
		return mv;
	}

}// end


