package kosta.mvc.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Set;

import kosta.mvc.model.dao.FavoriteEvDAO;
import kosta.mvc.vo.Event;

public class FavoriteEvService {
	private static FavoriteEvDAO favoriteEvDAO = new FavoriteEvDAO();
	
	public static Set<Integer> selectByUserNo(int userNo) throws SQLException {
		Set<Integer> set = null;
		set = favoriteEvDAO.selectByUserNo(userNo);
		
		return set;
	}

	public static void insert(int userNo, int evNo) throws SQLException {
		int result = favoriteEvDAO.insert(userNo, evNo);
		if(result==0)throw new SQLException("찜목록 등록에 실패하였습니다");		
	}

	public static void delete(int userNo, int evNo) throws SQLException {
		int result = favoriteEvDAO.delete(userNo, evNo);
	}

	public static List<Event> selectEventByEventNumbers(Set<Integer> set) throws SQLException {
		List<Event> list = favoriteEvDAO.selectEventByEventNumbers(set);
		return list;
	}

}
