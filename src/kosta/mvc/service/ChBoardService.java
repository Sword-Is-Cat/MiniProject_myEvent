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
		System.out.println("하의 service 도착, DAO 요청 전");
		result = chBDAO.insertChBoard(chBoard);
		System.out.println("다시 SESRVICE에 왔지. DAO 다녀왔고, CONTROLLER 갈거임");
		if(result == 0) throw new SQLException("등록되지 않았습니다.");
	}

	public static List<ChBoard> selectChBoard(int chNo) throws SQLException {
		List<ChBoard> dbChBoard = chBDAO.selectChBoard(chNo);
		if(dbChBoard==null) throw new SQLException("채널 리뷰가 없습니다.");
		
		return dbChBoard;
	}
}
