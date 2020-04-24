package kosta.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class CreateEventController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse rsponse) throws Exception {
		
		String saveDir=request.getServletContext().getRealPath("/eventImage");
		
		int maxSize= 1024*1024*100;//100M
		String encoding="UTF-8";
		
		MultipartRequest m = 
				new MultipartRequest(request, saveDir,maxSize, encoding,
						   new DefaultFileRenamePolicy());
		
		//request 전송되는 데이터 유효성 체크
		
		String eventName = m.getParameter("eventName");
		String chNo = m.getParameter("chNo");
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
		
		if(eventName==null || eventName.equals("") ||
				chNo==null || chNo.equals("") ||
				description==null || description.equals("") ||
				evStartDate==null || evStartDate.equals("") ||
				evStartTime==null || evStartTime.equals("") ||
				evEndDate==null || evEndDate.equals("") ||
				evEndTime==null || evEndTime.equals("")) {
			
			throw new RuntimeException("입력값이 충분하지 않습니다..");
		}
		
		if(postalCode==null || postalCode.equals("")) {
			/*온라인행사*/
			Addr = "Online";
		}else {
			Addr = postalCode + roadAddress + detailAddress + extraAddress;
		}
		
//		evBookStartDate==null || evBookStartDate.equals("") ||
//				evBookStartTime==null || evBookStartTime.equals("") ||
//				evBookEndDate==null || evBookEndDate.equals("") ||
//				evBookEndTime==null || evBookEndTime.equals("") ||
		
//		EventVO event = new EventVO(modelNum, modelName, 
//				                         Integer.parseInt(price), 
//				                         description, password);
		
//		if( m.getFilesystemName("evImage")!=null) {
//			//파일 첨부되었다면
//			event.setEvImage(m.getFilesystemName("evImage"));
//		}
//		
//		if( m.getFilesystemName("evImageDetail")!=null) {
//			//파일 첨부되었다면
//			event.setEvImageDetail(m.getFilesystemName("evImageDetail"));
//		}
		
//		EventsService.insert(event);
		ModelAndView mv = new ModelAndView(true,"front");
		return mv;
	}

}
