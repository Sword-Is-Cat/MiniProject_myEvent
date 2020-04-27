package kosta.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.mvc.service.UserService;

public class IdChkController implements Controller {
	UserService userService = new UserService();
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String userId = request.getParameter("userId");
		if(userId.equals("") || userId==null)throw new Exception("아이디를 입력해주세요.");
		int result = userService.idDuplicationChk(userId);
		request.setAttribute("idChk", result);
		ModelAndView mv = new ModelAndView(false, "/pages/idChk.jsp");
		return mv;
	}

}
