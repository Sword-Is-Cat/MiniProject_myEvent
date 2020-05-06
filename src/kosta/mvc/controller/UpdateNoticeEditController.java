package kosta.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.mvc.service.NoticeService;
import kosta.mvc.vo.Notice;

public class UpdateNoticeEditController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int noticeNo = Integer.parseInt(request.getParameter("noticeNo"));
		if(noticeNo==0) {
			throw new RuntimeException("잘못된요청쓰");
		}
		
		Notice notice = NoticeService.selectByNoticeNo(noticeNo);
		
		ModelAndView mv = new ModelAndView(true,"pages/updateNotice.jsp");

		return mv;
	}

}
