package kosta.mvc.model.dao;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Properties;
import kosta.mvc.util.DbUtil;
import kosta.mvc.vo.EvBoard;
import kosta.mvc.vo.Event;
import kosta.mvc.vo.Notice;
import kosta.mvc.vo.User;


public class EvBoardDAO {
   Connection con;
   Statement st;
   PreparedStatement ps;
   ResultSet rs;
   Properties pro = new Properties();
   
   public EvBoardDAO() {

      final InputStream input = getClass().getClassLoader().getResourceAsStream("kosta/mvc/model/dao/sqlQuery.properties");
      try {
         pro.load(input);
      } catch (final Exception e) {
         e.printStackTrace();
      }
   }
   
   
   /**
    * 1.게시물등록
    * */
   public int evBoardinsert(final EvBoard evBoard) throws SQLException {

		int result=0;
	    final String sql = pro.getProperty("InsertEvBoard");   
	 try {
	       con=DbUtil.getConnection();
	       ps = con.prepareStatement(sql);
	       ps.setInt(1, evBoard.getEvBoardNo());
	       ps.setInt(2, evBoard.getEvBoardParentNo());
	       ps.setString(3, evBoard.getEvBoardContent());
	       ps.setTimestamp(4, evBoard.getEvBoardTime());
	   
	         result = ps.executeUpdate();
	 }finally {
	    DbUtil.dbClose( ps, con);
	 }
	 return result;
	}
   		     

   
   
      /**
       * 수정하기
       */
   public int Update(final EvBoard evBoard) throws SQLException {
      int result=0;
      final String sql = pro.getProperty("UpdateEvBoard");   
   try {
         con=DbUtil.getConnection();
         ps = con.prepareStatement(sql);
         ps.setInt(1, evBoard.getEvBoardNo());
         ps.setInt(2, evBoard.getEvBoardParentNo());
         ps.setString(3, evBoard.getEvBoardContent());
         ps.setTimestamp(4, evBoard.getEvBoardTime());
        
           result = ps.executeUpdate();
   }finally {
      DbUtil.dbClose( ps, con);
   }
   return result;
}
   /**
    * 삭제하기
    */
   public int Delete (final EvBoard evBoard ) throws SQLException {
      int result=0;
         final String sql = pro.getProperty("DeleteEvBoard");   
      try {
            con=DbUtil.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, evBoard.getEvBoardNo());
            ps.setInt(2, evBoard.getEvBoardParentNo());
            ps.setString(3, evBoard.getEvBoardContent());
            ps.setTimestamp(4, evBoard.getEvBoardTime());
           
              result = ps.executeUpdate();
      }finally {
         DbUtil.dbClose( ps, con);
      }
      return result;
   }
   

   
   /***
    * 2.전체검색
    * */
   public List<EvBoard> selectAllEvBoard() throws SQLException {

		final List<EvBoard> list = new ArrayList<EvBoard>();
		final String sql = pro.getProperty("EvBoardList");
		try {
			con=DbUtil.getConnection();
			ps = con.prepareStatement(sql);
		
			rs = ps.executeQuery();
			
			while(rs.next()) {
				final EvBoard evBoard =
						new EvBoard ();
						list.add(evBoard);
			
				list.add(evBoard);
			}
		} finally {
			DbUtil.dbClose(rs, ps, con);
		}
		return list;
	}//end


   /**
    * 3. evBoardNo에 해당하는 게시물 검색
    * */
  public EvBoard selectByEvBoardNo(final int evBoardNo) throws SQLException {
   return null;
    
  }

}