package kosta.mvc.service;

import java.sql.SQLException;
import java.util.List;

import kosta.mvc.model.dao.NoticeDAO;
import kosta.mvc.vo.Notice;

public class NoticeService {
	
	private static NoticeDAO noticeDAO = new NoticeDAO() ;
	
	public static List<Notice> selectAll() throws SQLException {
		List<Notice> list = noticeDAO.selectAll();
		return list;
	}
	
	public static void insert(Notice notice) throws SQLException{
		int result = noticeDAO.insert(notice);
		if (result==0) {
			throw new SQLException("등록되지않음");
		}
	}
	public static void delete(int noticeNo) throws SQLException{
	
		  int result =noticeDAO.delete(noticeNo);
		  if(result==0) throw new SQLException("삭제불가");
		  
	  }
	 
	  
	 public static int update(Notice notice) throws SQLException{
	
		int result = noticeDAO.update(notice);
		if(result==0)throw new SQLException("수정되지 않았습니다.");
			  return result;
	}

	
}//end
