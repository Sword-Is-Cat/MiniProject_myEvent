package kosta.mvc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.mvc.service.CategoryService;
import kosta.mvc.service.UserService;
import kosta.mvc.vo.User;

public class SignUpController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		String userName = request.getParameter("userName");
		
		String reaodAddress = request.getParameter("reaodAddress");
		String postalCode = request.getParameter("postalCode");
		String detailAddress = request.getParameter("detailAddress");
		
		String userAddr = postalCode+","+reaodAddress+","+detailAddress; //우편번호,도로명주소,상세주소
		String userPhone = request.getParameter("userPhone");
		String userEmail = request.getParameter("userEmail");
		
		//유효성체크
		if(userId.equals("") || userId==null || userPwd.equals("") || userPwd==null || userName.equals("") || userName==null 
			|| reaodAddress.equals("") || reaodAddress==null || postalCode.equals("") || postalCode==null || detailAddress.equals("") || detailAddress==null
			|| userPhone.equals("") || userPhone==null || userEmail.equals("") || userEmail==null)throw new RuntimeException("입력값이 부족합니다.");
		
		User user = new User(userId, userPwd, userName, userAddr, userPhone, userEmail); //유저생성
		
		//총 카테고리 수 받아오기
		int cateCount = Integer.parseInt(request.getParameter("cateCount"));
		
		List<Integer> cateNo = new ArrayList<>();
		//선호 카테고리 insert
		
		for(int i=1; i<=cateCount ;i++) {//카테고리 이름을 cate1 부터 쭉 찾아주고 없으면 중지
			if(request.getParameter("cate"+i)!=null) {
				cateNo.add(Integer.parseInt((request.getParameter("cate"+i)))); // 체크된 카테고리만 리스트에 add (카테고리번호 cateNo)
			}
		}
		
		UserService.signUp(user, cateNo);		
		
		ModelAndView mv = new ModelAndView(true, request.getServletContext().getContextPath()+"/pages/index.jsp");
		return mv;
	}

}
