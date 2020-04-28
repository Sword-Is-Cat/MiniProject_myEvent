package kosta.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kosta.mvc.model.dao.UsersDAO;
import kosta.mvc.service.ChannelService;
import kosta.mvc.vo.Channel;
import kosta.mvc.vo.User;

public class UpdateChannelController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String saveDir = request.getServletContext().getRealPath("/channelImg");
		int maxSize = 1024 * 1024 * 100;
		String encoding = "euc-kr";
		
		MultipartRequest m = new MultipartRequest(request, saveDir, maxSize, encoding, new DefaultFileRenamePolicy());
		
		int chNo = Integer.parseInt(m.getParameter("chNo"));
		String userNo = m.getParameter("userNo");
		String chName = m.getParameter("chName");
		String chImg = m.getParameter("chImg");
		int chStatus = Integer.parseInt(m.getParameter("chStatus"));
		String chDescription = m.getParameter("chDescription");
		
		if(chNo==0 ||
				chName==null || chName.equals("") ||
				chDescription==null || chDescription.equals("")) {
			throw new RuntimeException("입력값이 부족해 수정할 수 없습니다.");
		}
		
		User user = new User();
		user.setUserNo(Integer.parseInt(userNo));
		
		Channel channel = new Channel(chNo, user, chName, chImg, chStatus, chDescription);
		
		ChannelService.updateChannel(channel);
		ModelAndView mv = new ModelAndView();
		mv.setRedirect(true);
		mv.setViewName("front?key=updateChannel&chNo="+chNo);
		
		return mv;
	}

}
