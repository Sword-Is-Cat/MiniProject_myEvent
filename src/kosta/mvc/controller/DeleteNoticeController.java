package kosta.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.mvc.service.NoticeService;

public class DeleteNoticeController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int noticeNo = Integer.parseInt(request.getParameter("noticeNo"));
		
		NoticeService.delete(noticeNo);
		
//		ModelAndView mv = new ModelAndView(true, "${pageContext.request.contextPath}/pages/notice.jsp?noticeNo="+noticeNo);
		ModelAndView mv = new ModelAndView(true, "./front?key=viewToNotice");
	
		return mv;
	}

}
