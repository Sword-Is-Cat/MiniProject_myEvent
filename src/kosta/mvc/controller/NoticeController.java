package kosta.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.mvc.service.NoticeService;
import kosta.mvc.vo.Notice;

public class NoticeController implements Controller {
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<Notice> list = NoticeService.selectAll();
		request.setAttribute("list", list);
		//request.setAttribute("test", "test");
		
		ModelAndView mv = new ModelAndView(false, "./pages/front?key=viewToNotice");
		return mv;
	}

}
