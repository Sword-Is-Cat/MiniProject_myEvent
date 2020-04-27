package kosta.mvc.controller;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kosta.mvc.model.dao.EventDAO;
import kosta.mvc.vo.Category;
import kosta.mvc.vo.Channel;
import kosta.mvc.vo.EvTime;
import kosta.mvc.vo.Event;

public class CreateEventController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse rsponse) throws Exception {

		String saveDir = request.getServletContext().getRealPath("/eventImage");

		int maxSize = 1024 * 1024 * 50;// 50M
		String encoding = "UTF-8";

		MultipartRequest m = new MultipartRequest(request, saveDir, maxSize, encoding, new DefaultFileRenamePolicy());

		String evName = m.getParameter("evName");
		int cateNo = Integer.parseInt(m.getParameter("cateNo"));
		int chNo = Integer.parseInt(m.getParameter("chNo"));
		int evBookMax = Integer.parseInt(m.getParameter("evBookMax"));
		String evDescription = m.getParameter("evDescription");
		String evBookStarts = m.getParameter("evBookStart");
		String evBookEnds = m.getParameter("evBookEnd");
		String evStarts = m.getParameter("evStart");
		String evEnds = m.getParameter("evEnd");
		String postalCode = m.getParameter("postalCode");
		String roadAddress = m.getParameter("roadAddress");
		String jibunAddress = m.getParameter("jibunAddress");
		String detailAddress = m.getParameter("detailAddress");
		String extraAddress = m.getParameter("extraAddress");
		String evPhone = m.getParameter("evPhone");
		String evEmail = m.getParameter("evEmail");
		String evAddr = "";

		if (evName == null || evName.equals("") || evDescription == null || evDescription.equals("") || evStarts == null
				|| evStarts.equals("") || evEnds == null || evEnds.equals("")) {

			throw new RuntimeException("입력값부족");
		}
		
		evStarts = evStarts.replace('T', ' ')+":00";
		evEnds = evEnds.replace('T', ' ')+":00";

		Category category = new Category();
		category.setCateNo(cateNo);
		Channel channel = new Channel();
		channel.setChNo(chNo);

		if (postalCode == null || postalCode.equals("")) {
			evAddr = "Online";
		} else {
			evAddr = postalCode + roadAddress + detailAddress + extraAddress;
		}

		Timestamp evStart = Timestamp.valueOf(evStarts.replace('T', ' '));
		Timestamp evEnd = Timestamp.valueOf(evEnds.replace('T', ' '));
		Timestamp evBookStart;
		Timestamp evBookEnd;

		if (evBookStarts == null || evBookStarts.equals("")) {
			evBookStart = new Timestamp(System.currentTimeMillis());
		} else {
			evBookStart = Timestamp.valueOf(evBookStarts.replace('T', ' '));

		}
		if (evBookEnds == null || evBookEnds.equals("")) {
			evBookEnd = evStart;
		} else {
			evBookEnd = Timestamp.valueOf(evBookEnds.replace('T', ' '));
		}

		EvTime evTime = new EvTime(evStart, evEnd, evBookStart, evBookEnd);

		Event event = new Event(category, channel, evName, evAddr, evBookMax, evDescription, null, null, evPhone,
				evEmail, evTime);

		if (m.getFilesystemName("evImage") != null) {
			event.setEvImg(m.getFilesystemName("evImage"));
		}else {
			event.setEvImg("sample.png");
		}

		if (m.getFilesystemName("evImageDetail") != null) {
			event.setEvImgDetail(m.getFilesystemName("evImageDetail"));
		}else {
			event.setEvImg("sample.png");
		}

		new EventDAO().insertEvent(event);

		ModelAndView mv = new ModelAndView(false, "pages/event.jsp");
		return mv;
	}

}
