package kosta.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.mvc.model.dao.BookDAO;
import kosta.mvc.vo.User;

public class SelectUserByBookedEvNoController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		int evNo = Integer.parseInt(request.getParameter("evNo"));
		
		List<User> list = new BookDAO().selectUserByBookedEvNo(evNo);
		request.setAttribute("List", list);
		
		ModelAndView mv = new ModelAndView(true, "front?key=selectEvent&evNo="+evNo);
		return null;
	}

}
