package kosta.mvc.service;

import java.sql.SQLException;
import java.util.Set;

import kosta.mvc.model.dao.FavoriteEvDAO;

public class FavoriteEvService {
	private static FavoriteEvDAO favoriteEvDAO = new FavoriteEvDAO();
	
	public static Set<Integer> selectByUserNo(int userNo) throws SQLException {
		Set<Integer> set = null;
		set = favoriteEvDAO.selectByUserNo(userNo);
		
		return set;
	}

}
