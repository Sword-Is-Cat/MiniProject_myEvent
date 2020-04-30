package kosta.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.mvc.service.ChBoardService;
import kosta.mvc.vo.ChBoard;
import kosta.mvc.vo.Channel;

public class SelectChBoardController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int chNo = Integer.parseInt(request.getParameter("chNo"));
		List<ChBoard> list = ChBoardService.selectChBoard(chNo);
		request.setAttribute("chB", list);
		ModelAndView mv = new ModelAndView(false, "/pages/chBoardList.jsp");
		return mv;
		
	}

}
