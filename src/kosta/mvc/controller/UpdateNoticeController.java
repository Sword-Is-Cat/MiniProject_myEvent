package kosta.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.mvc.service.NoticeService;
import kosta.mvc.vo.Notice;

public class UpdateNoticeController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String noticeSubject = request.getParameter("noticeSubject");
		String noticeContent = request.getParameter("noticeContent");
		int noticeNo = Integer.parseInt(request.getParameter("noticeNo"));
		
		if(noticeSubject==null || noticeSubject.equals("") ||noticeContent==null || noticeContent.equals("") ) {
			throw new RuntimeException("입력값이 충분하지 않습니다");
		}
		
		Notice notice = new Notice(noticeSubject, noticeContent);
		notice.setNoticeNo(noticeNo);
		
		NoticeService.update(notice);
		
		ModelAndView mv = new ModelAndView(); //생성자 통해서 초기화할것인지
		mv.setRedirect(true);
		mv.setViewName("front?key=viewToNotice");
		return mv;
		
	}

}
