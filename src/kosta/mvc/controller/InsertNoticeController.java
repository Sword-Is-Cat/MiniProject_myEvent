package kosta.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.mvc.service.NoticeService;
import kosta.mvc.vo.Notice;

public class InsertNoticeController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String noticeSubject = request.getParameter("noticeSubject");
		String noticeContent = request.getParameter("noticeContent");
				

		if(noticeSubject==null || noticeSubject.equals("") ||noticeContent==null || noticeContent.equals("") ) {
			throw new RuntimeException("입력값이 충분하지 않습니다");
		}
		Notice notice = new Notice(noticeSubject, noticeContent);

		NoticeService.insert(notice);
		ModelAndView mv = new ModelAndView(true, "viewToNotice"); 

		return mv;
	}

}//end
