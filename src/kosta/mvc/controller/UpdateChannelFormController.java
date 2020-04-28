package kosta.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.mvc.service.ChannelService;
import kosta.mvc.vo.Channel;

public class UpdateChannelFormController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int chNo = Integer.parseInt(request.getParameter("chNo"));
		
		if(chNo==0) {
			throw new RuntimeException("수정할 수 없습니다..");
		}
		
		Channel channel = ChannelService.selectByChNo(chNo);
		request.setAttribute("channel", channel);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("pages/updateChannel.jsp");
		return mv;
	}

}
