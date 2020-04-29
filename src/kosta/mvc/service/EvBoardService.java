package kosta.mvc.service;

import java.sql.SQLException;
import java.util.List;

import kosta.mvc.model.dao.EvBoardDAO;
import kosta.mvc.vo.EvBoard;



public class EvBoardService {

   
   private static EvBoardDAO EvBoardDAO;
   
   //전체검색
   public static List<EvBoard> selectAll() throws SQLException {
      List<EvBoard> list = EvBoardDAO.selectAllEvBoard();
      return list;
   }
   //상세검색
   
   
   //등록
   public static void insert(EvBoard evBoard) throws SQLException{
		int result = EvBoardDAO.evBoardinsert(evBoard);
		if (result==0) {
			throw new SQLException("등록되지않음");
		}
	}

   
}