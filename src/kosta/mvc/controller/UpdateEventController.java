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

public class UpdateEventController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse rsponse) throws Exception {

		String saveDir = request.getServletContext().getRealPath("/eventImage");

		int maxSize = 1024 * 1024 * 50;// 50M
		String encoding = "UTF-8";

		MultipartRequest m = new MultipartRequest(request, saveDir, maxSize, encoding, new DefaultFileRenamePolicy());

		int evNo = Integer.parseInt(m.getParameter("evNo"));
		String evName = m.getParameter("evName");
		int cateNo = Integer.parseInt(m.getParameter("cateNo"));
		int chNo = Integer.parseInt(m.getParameter("chNo"));
		int evBookMax = Integer.parseInt(m.getParameter("evBookMax"));
		String evDescription = m.getParameter("evDescription");
		String evBookStarts = m.getParameter("evBookStart");
		String evBookEnds = m.getParameter("evBookEnd");
		String evStarts = m.getParameter("evStart");
		String evEnds = m.getParameter("evEnd");
		String evAddr = m.getParameter("evAddr");
		String evPhone = m.getParameter("evPhone");
		String evEmail = m.getParameter("evEmail");
		String postalCode = m.getParameter("postalCode");
		String roadAddress = m.getParameter("roadAddress");
		String detailAddress = m.getParameter("detailAddress");
		String extraAddress = m.getParameter("extraAddress");

		if (evName == null || evName.equals("") || evDescription == null || evDescription.equals("")) {

			throw new RuntimeException("입력값부족");
		}
		
		if(detailAddress==null || detailAddress.equals("")){
			detailAddress = "-";
		}
		
		if (postalCode == null || postalCode.equals("")) {
			evAddr = "Online";
		} else {
			evAddr = postalCode+"," + roadAddress +"," + extraAddress+ "," + detailAddress;
		}
		
		Category category = new Category();
		category.setCateNo(cateNo);
		Channel channel = new Channel();
		channel.setChNo(chNo);

		Timestamp evStart;
		Timestamp evEnd;
		Timestamp evBookStart;
		Timestamp evBookEnd;
		
		if (evStarts == null || evStarts.equals("")) {
			evStart = null;
		} else {
			evStart = Timestamp.valueOf(evStarts.replace('T', ' ')+":00");
			
		}
		if (evEnds == null || evEnds.equals("")) {
			evEnd = null;
		} else {
			evEnd = Timestamp.valueOf(evEnds.replace('T', ' ')+":00");
			
		}
		if (evBookStarts == null || evBookStarts.equals("")) {
			evBookStart = null;
		} else {
			evBookStart = Timestamp.valueOf(evBookStarts.replace('T', ' ')+":00");

		}
		if (evBookEnds == null || evBookEnds.equals("")) {
			evBookEnd = null;
		} else {
			evBookEnd = Timestamp.valueOf(evBookEnds.replace('T', ' ')+":00");
		}

		EvTime evTime = new EvTime(evStart, evEnd, evBookStart, evBookEnd);

		Event event = new Event(evNo, category, channel, evName, evAddr, evBookMax, evDescription, null, null, evPhone, evEmail, evTime, 1);

		if (m.getFilesystemName("evImage") != null) {
			event.setEvImg(m.getFilesystemName("evImage"));
		}else {
			event.setEvImg(null);
		}

		if (m.getFilesystemName("evImageDetail") != null) {
			event.setEvImgDetail(m.getFilesystemName("evImageDetail"));
		}else {
			event.setEvImgDetail(null);
		}

		
		new EventDAO().updateEvent(event);

		ModelAndView mv = new ModelAndView(true, "front?key=selectEvent&evNo="+evNo);
		return mv;
	}
}
