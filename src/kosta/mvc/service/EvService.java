package kosta.mvc.service;

import java.sql.SQLException;
import java.util.List;

import kosta.mvc.model.dao.EventDAO;
import kosta.mvc.vo.Event;

public class EvService {
	private static EventDAO evDAO = new EventDAO();
	
	public static List<Event> selectRecentEvents() throws Exception {
		List<Event> list = evDAO.selectRecentEvents();
		if(list.size()==0) throw new SQLException("최근 이벤트 목록을 불러오는데 실패하였습니다");
		
		return list;
	}
}
