package kosta.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kosta.mvc.service.ChannelService;
import kosta.mvc.vo.Channel;
import kosta.mvc.vo.User;

public class CreateChannelController implements Controller{
	public CreateChannelController() {}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String saveDir = request.getServletContext().getRealPath("/channelImg");
		int maxSize = 1024 * 1024 * 100;
		String encoding = "utf-8";
		
		MultipartRequest m = new MultipartRequest(request, saveDir, maxSize, encoding, new DefaultFileRenamePolicy());
		
		String userNo = m.getParameter("userNo");
		String chName = m.getParameter("chName");
		String chImg = m.getParameter("chImg");
		String chDescription = m.getParameter("chDescription");
		
		if(chName==null || chName.equals("")||
				chDescription==null || chDescription.equals("")) {
			throw new RuntimeException("입력값이 충분하지 않습니다."); // DispatcherServlet�� catch �κ����� �Ѿ��.
		}
		
		User user = new User();
		user.setUserNo(Integer.parseInt(userNo));
		
		Channel chan = new Channel();
		chan.setUser(user);
		chan.setChName(chName);
		chan.setChlmg(chImg);
		chan.setChDescription(chDescription);
		
		if(m.getFilesystemName("chImg")!=null) {
			chan.setChlmg(m.getFilesystemName("chImg"));
		} else {
			chan.setChlmg("channelSample.jpg");
		}
		
		ChannelService.insertChannel(chan);
		
		ModelAndView mv = new ModelAndView(true, "front?key=manageChannel");
		
		return mv;
	}
}
