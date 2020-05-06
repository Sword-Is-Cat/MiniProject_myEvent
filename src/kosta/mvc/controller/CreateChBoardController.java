package kosta.mvc.controller;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kosta.mvc.service.ChBoardService;
import kosta.mvc.vo.ChBoard;
import kosta.mvc.vo.Channel;
import kosta.mvc.vo.User;


public class CreateChBoardController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		int userNo = (int)session.getAttribute("userNo");
		int chNo = Integer.parseInt(request.getParameter("chNo"));
		String chBoardContent = request.getParameter("chBoardContent");
		int chBoardStar = Integer.parseInt(request.getParameter("chBoardStar"));
		
		Timestamp chBoardTime = new Timestamp(System.currentTimeMillis()); // null도 가능
		
		if(chBoardContent==null | chBoardContent.equals("")) {
			throw new RuntimeException("입력값이 충분하지 않습니다.");
		}
		
		User user = new User();
		user.setUserNo(userNo);
		
		Channel channel = new Channel();
		channel.setChNo(chNo);
		
		ChBoard chBoard = new ChBoard();
		chBoard.setUser(user);
		chBoard.setChannel(channel);
		chBoard.setChBoardContent(chBoardContent);
		chBoard.setChBoardStar(chBoardStar);
		chBoard.setChBoardTime(chBoardTime);
		
		ChBoardService.insertChBoard(chBoard);
		
		ModelAndView mv = new ModelAndView(true, request.getServletContext().getContextPath()+"/front?key=channelDetail&chNo="+chNo);
		// viewName을 바꿔야됨 채널 디테일로
		
		return mv;
	}

}
