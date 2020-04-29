package kosta.mvc.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import kosta.mvc.model.dao.EventDAO;
import kosta.mvc.model.dao.FavoriteCateDAO;
import kosta.mvc.vo.Event;

public class EvService {
	private static EventDAO evDAO = new EventDAO();
	private static FavoriteCateDAO favCateDAO = new FavoriteCateDAO();
	
	public static List<Event> selectRecentEvents() throws Exception {
		List<Event> list = evDAO.selectRecentEvents();
		if(list.size()==0) throw new SQLException("최근 이벤트 목록을 불러오는데 실패하였습니다");
		
		return list;
	}

	public static List<Event> selectRecentEventByMyCategory(int userNo) throws Exception {
		List<Event> list = null;
		//내 카테고리 받아오기 
		List<Integer> myCateNo = favCateDAO.selectByUserNo(userNo);
		//카테고리 총 갯수 받아오기
		int cateCount = favCateDAO.selectCateCount();
		//내 카테고리에 맞는 이벤트 4개 개져오기 or 선호카테고리 없으면 랜덤으로 하나 찍어주기
		if(myCateNo.size()==0) {
			myCateNo.add((int) ((Math.random())*cateCount)+1);
		}
		
		list = evDAO.selectEventByCateNoList(myCateNo, 4);
		
		return list;
	}

	public static List<Event> selectRecentEventByRandomCategory() throws Exception {
		List<Event> list = null;
		//카테고리 총 갯수 받아오기
		int cateCount = favCateDAO.selectCateCount();
		//선호 카테고리 랜덤으로 하나 찍어주기
		List<Integer> myCateNo = new ArrayList<>();
				
		myCateNo.add((int) ((Math.random())*cateCount)+1);
		
		
		list = evDAO.selectEventByCateNoList(myCateNo, 4);
		
		return list;
	}
}
