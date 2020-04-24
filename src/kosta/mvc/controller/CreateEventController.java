package kosta.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kosta.mvc.vo.Category;
import kosta.mvc.vo.Channel;
import kosta.mvc.vo.Event;

public class CreateEventController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse rsponse) throws Exception {

		String saveDir = request.getServletContext().getRealPath("/eventImage");

		int maxSize = 1024 * 1024 * 100;// 100M
		String encoding = "UTF-8";

		MultipartRequest m = new MultipartRequest(request, saveDir, maxSize, encoding, new DefaultFileRenamePolicy());

		String eventName = m.getParameter("eventName");
		int cateNo = Integer.parseInt(m.getParameter("cateNo"));
		int chNo = Integer.parseInt(m.getParameter("chNo"));
		int evBookMax = Integer.parseInt(m.getParameter("evBookMax"));
		String description = m.getParameter("description");
		String evBookStartDate = m.getParameter("evBookStartDate");
		String evBookStartTime = m.getParameter("evBookStartTime");
		String evBookEndDate = m.getParameter("evBookEndDate");
		String evBookEndTime = m.getParameter("evBookEndTime");
		String evStartDate = m.getParameter("evStartDate");
		String evStartTime = m.getParameter("evStartTime");
		String evEndDate = m.getParameter("evEndDate");
		String evEndTime = m.getParameter("evEndTime");
		String postalCode = m.getParameter("postalCode");
		String roadAddress = m.getParameter("roadAddress");
		String jibunAddress = m.getParameter("jibunAddress");
		String detailAddress = m.getParameter("detailAddress");
		String extraAddress = m.getParameter("extraAddress");
		String Addr = "";

		if (eventName == null || eventName.equals("") || description == null
				|| description.equals("") || evStartDate == null || evStartDate.equals("") || evStartTime == null
				|| evStartTime.equals("") || evEndDate == null || evEndDate.equals("") || evEndTime == null
				|| evEndTime.equals("")) {

			throw new RuntimeException("입력값이 부족합니다");
		}
		
		Category category = new Category();
		category.setCateNo(cateNo);
		Channel channel = new Channel();
		channel.setChNo(chNo);

		if (postalCode == null || postalCode.equals("")) {
			Addr = "Online";
		} else {
			Addr = postalCode + roadAddress + detailAddress + extraAddress;
		}

		if (evBookStartDate == null || evBookStartDate.equals("") || evBookStartTime == null
				|| evBookStartTime.equals("") || evBookEndDate == null || evBookEndDate.equals("")
				|| evBookEndTime == null || evBookEndTime.equals("")) {

			
		}

		Event event = new Event();

		if (m.getFilesystemName("evImage") != null) {
			event.setEvImg(m.getFilesystemName("evImage"));
		}

		if (m.getFilesystemName("evImageDetail") != null) {
			event.setEvImgDetail(m.getFilesystemName("evImageDetail"));
		}

//		EventsService.insert(event);
		ModelAndView mv = new ModelAndView(true, "front");
		return mv;
	}

}
