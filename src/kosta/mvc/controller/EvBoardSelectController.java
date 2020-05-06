package kosta.mvc.controller;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.mvc.service.EvBoardService;
import kosta.mvc.vo.EvBoard;

public class EvBoardSelectController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
	  System.out.println("EvBoardSelectController....");
	  
	  //서비스 호출
	  EvBoardService service = new EvBoardService();
	  List<EvBoard> list = service.selectAll();
	  	request.setAttribute("evBoardNo","${evBoard.evBoardNo}");
		request.setAttribute("userNo","${user.userNo}");
		request.setAttribute("evBoardContent", "${evBoard.evBoardContent}");
		request.setAttribute("evBoardTime", "${Timestamp.evBoardTime}");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("pages/EvBoard.jsp");
		
		return mv;
	}

}// end


