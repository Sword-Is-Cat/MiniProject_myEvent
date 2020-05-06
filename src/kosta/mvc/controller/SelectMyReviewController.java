package kosta.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kosta.mvc.service.ChBoardService;
import kosta.mvc.vo.ChBoard;

public class SelectMyReviewController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		int userNo = (int)session.getAttribute("userNo");
		List<ChBoard> list = ChBoardService.selectChBoardByUserNo(userNo);
		request.setAttribute("myChB", list);
		//ModelAndView mv = new ModelAndView(false, "front?key=selectMyReview&userNo="+userNo);
		ModelAndView mv = new ModelAndView(false, "/pages/myReview.jsp");
		
		return mv;
	}

}
