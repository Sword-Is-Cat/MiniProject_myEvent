package kosta.mvc.service;

import java.sql.SQLException;
import java.util.List;

import kosta.mvc.model.dao.EvBoardDAO;
import kosta.mvc.vo.EvBoard;



public class EvBoardService {

   
   private static EvBoardDAO EvBoardDAO;
   
   
   public static List<EvBoard> selectAll() throws SQLException {
      List<EvBoard> list = EvBoardDAO.selectAll();
      return list;
   }
   //상세검색
   public static EvBoard selectByEvBoardNo(int EvBoardNo, boolean flag) 
           throws SQLException{
if(flag) {
if(EvBoardDAO.increamentByReadnum(EvBoardNo) == 0)
throw new SQLException("조회수 증가에 오류가 발생했습니다.");
}

EvBoard DbUtil = EvBoardDAO.selectByEvBoardNo(EvBoardNo);
throw new SQLException("모델번호에 해당하는 정보를 검색할수 없습니다.");


}
   
   public static void insert(EvBoard evBoard) throws SQLException{
		int result = EvBoardDAO.insert(evBoard);
		if (result==0) {
			throw new SQLException("등록되지않음");
		}
	}
   
}