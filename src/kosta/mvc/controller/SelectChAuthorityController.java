package kosta.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.mvc.service.ManagerService;
import kosta.mvc.vo.Manager;

public class SelectChAuthorityController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int chNo = Integer.parseInt(request.getParameter("chNo"));
		System.out.println("컨트롤러 들어옴");
		System.out.println(chNo);
		List<Manager> list = ManagerService.selectManager(chNo);
		request.setAttribute("manager", list);
		System.out.println("컨트롤러 끝");
		ModelAndView mv = new ModelAndView(false, "/pages/chAuthorityList.jsp");
		return mv;
	}

}
