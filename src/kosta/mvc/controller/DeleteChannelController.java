package kosta.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.mvc.service.ChannelService;

public class DeleteChannelController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int chNo = Integer.parseInt(request.getParameter("chNo"));
		String path = request.getServletContext().getRealPath("/channelImg");
		
		ChannelService.deleteChannel(chNo, path);
		
		ModelAndView mv = new ModelAndView();
		mv.setRedirect(true);
		mv.setViewName("front?key=manageChannel"); // 내 채널 리스트로 수정해야됨.
		
		return mv;
	}
}
