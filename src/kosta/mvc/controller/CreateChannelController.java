package kosta.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kosta.mvc.model.dao.ChannelDAO;
import kosta.mvc.service.ChannelService;
import kosta.mvc.vo.ChannelVO;

public class CreateChannelController implements Controller{
	public CreateChannelController() {}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String saveDir = request.getServletContext().getRealPath("/channelImg");
		int maxSize = 1024 * 1024 * 100;
		String encoding = "UTF-8";
		
		MultipartRequest m = new MultipartRequest(request, saveDir, maxSize, encoding, new DefaultFileRenamePolicy());
		
		String chNo = m.getParameter("chNo");
		String userNo = m.getParameter("userNo");
		String chName = m.getParameter("chName");
		String chStatus = m.getParameter("cStatus");
		String chDescription = m.getParameter("chDescription");
		
		if(chNo==null || chNo.equals("")||
				userNo==null || userNo.equals("")||
				chName==null || chName.equals("")||
				chStatus==null || chStatus.equals("")||
				chDescription==null || chDescription.equals("")) {
			throw new RuntimeException("입력값이 충분하지 않습니다."); // DispatcherServlet의 catch 부분으로 넘어간다.
		}
		
		ChannelVO chan = new ChannelVO(chNo, user, chName, chStatus, chDescription);
		
		// 채널 이미지 파일이 첨부되었다면
		if(m.getFilesystemName("chImg")!=null) {
			chan.setChlmg(m.getFilesystemName("chImg"));
		}
		
		ChannelService.insertChannel(chan);
		
		ModelAndView mv = new ModelAndView(true, "chan");
		
		return null;
	}

}
