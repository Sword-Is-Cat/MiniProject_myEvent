package kosta.mvc.service;

import kosta.mvc.vo.ChBoard;
import kosta.mvc.vo.Channel;

import java.sql.SQLException;
import java.util.List;

import kosta.mvc.model.dao.ChBoardDAO;

public class ChBoardService {
	
	private static ChBoardDAO chBDAO = new ChBoardDAO();
	
	public static void insertChBoard(ChBoard chBoard) throws SQLException {
		int result = 0;
		result = chBDAO.insertChBoard(chBoard);
		if(result == 0) throw new SQLException("등록되지 않았습니다.");
	}

	public static List<ChBoard> selectChBoard(int chNo) throws SQLException {
		List<ChBoard> dbChBoard = chBDAO.selectChBoard(chNo);
		if(dbChBoard==null) throw new SQLException("채널 리뷰가 없습니다.");
		return dbChBoard;
	}

	public static List<ChBoard> selectChBoardByUserNo(int userNo) throws SQLException {
		List<ChBoard> dbMyChBoard = chBDAO.selectChBoardByUserNo(userNo);
		if(dbMyChBoard==null) throw new SQLException("채널 리뷰가 없습니다.");
		return dbMyChBoard;
	}
}
