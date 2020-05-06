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
import kosta.mvc.vo.User;


public class EvBoardDAO {
   private static final int EvBoard = 0;
private static final int List = 0;
Connection con;
   Statement st;
   PreparedStatement ps;
   ResultSet rs;
   Properties pro = new Properties();

   private int evNo;
   
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
   public int evBoardinsert( EvBoard evBoard) throws SQLException {

      int result=0;
        String sql = pro.getProperty("InsertEvBoard");   
    try {
          con=DbUtil.getConnection();
          ps = con.prepareStatement(sql);
          ps.setInt(1,evBoard.getEvent().getEvNo());
          ps.setInt(2, evBoard.getUser().getUserNo());
          ps.setInt(3, evBoard.getEvBoardParentNo());
          ps.setString(4, evBoard.getEvBoardContent());
 											
            result = ps.executeUpdate();
    }finally {
       DbUtil.dbClose( ps, con);
    }				
    return result;
   }
              
//   InsertEvBoard=insert into evBoard
//         (evBoardNo, evNo, userNo, evBoardParentNo, evBoardContent,evBoardTime,
//               evBoardStatus)values(evBoardSeq.nextval, ?, ?, ?, ?, sysdate, 1)

   
   
      /**
       * 수정하기
       */
   public int Update(final EvBoard evBoard) throws SQLException {
      int result=0;
      String sql = pro.getProperty("UpdateEvBoard");   
   try {
      con=DbUtil.getConnection();
       ps = con.prepareStatement(sql);
       
       ps.setString(1,evBoard.getEvBoardContent());
       
           result = ps.executeUpdate();
   }finally {
      DbUtil.dbClose( ps, con);
   }
   return result;
}
   
   //updateEvBoard=update evBoard set evBoardContent=?
   
   
   /**
    * 삭제하기
    */
   public int Delete (final EvBoard evBoard ) throws SQLException {
      int result=0;
         final String sql = pro.getProperty("deleteEvBoard");   
      try {
         con=DbUtil.getConnection();
          ps = con.prepareStatement(sql);
          ps.setInt(1,evBoard.getEvent().getEvNo());
          ps.setInt(2, evBoard.getUser().getUserNo());
          ps.setInt(3, evBoard.getEvBoardParentNo());
          ps.setString(4,evBoard.getEvBoardContent());
           
              result = ps.executeUpdate();
      }finally {
         DbUtil.dbClose( ps, con);
      }
      return result;
   }
   
  // deleteEvBoard=update evBoard set 
   
   /***
    * 2.전체검색
    * */
   public List<EvBoard> selectEvBoard() throws SQLException {

      List<EvBoard> list = new ArrayList<EvBoard>();
      String sql = pro.getProperty("selectEvBoard");
      
      try {
         con=DbUtil.getConnection();
         ps = con.prepareStatement(sql);
       
         rs = ps.executeQuery();
         
         while(rs.next()) {
             int evBoardNo = rs.getInt("evBoardNo");
             Event event = new Event();
             event.setEvNo(evNo);
             User user = new User();
             int userNo = rs.getInt("userNo");
             user.setUserNo(userNo);
             int evBoardParentNo = rs.getInt("evBoardParentNo");
             String evBoardContent = rs.getString("evBoardContent");
             Timestamp evBoardTime = rs.getTimestamp("evBoardTime");
             int evBoardStatus = rs.getInt("evBoardStatus");
             EvBoard evBoard = new EvBoard(evBoardNo, event, user, evBoardParentNo, evBoardContent, evBoardTime, evBoardStatus);
             list.add(evBoard);
             					
         }
      } finally {
         DbUtil.dbClose(rs, ps, con);
      }
      return list;
   }//end
   
   
   //evBoardDetail=select * from  evBoard where evBoardNo=?
// 상세보기
   public int evBoardDetail( EvBoard evBoard) throws SQLException{
      
      int result=0;
      String sql = pro.getProperty("DetailEvBoard");
      
      try {
         con=DbUtil.getConnection();
         ps = con.prepareStatement(sql);
         
                int evBoardNo = rs.getInt("evBoardNo");
                Event event = new Event();
                int evNo = 0;
                event.setEvNo(evNo);
                User user = new User();
                int userNo = rs.getInt("userNo");
                user.setUserNo(userNo);
                int evBoardParentNo = rs.getInt("evBoardParentNo");
                String evBoardContent = rs.getString("evBoardContent");
                Timestamp evBoardTime = rs.getTimestamp("evBoardTime");
                int evBoardStatus = rs.getInt("evBoardStatus");
                EvBoard evBoard1 = new EvBoard(evBoardNo, event, user, evBoardParentNo, evBoardContent, evBoardTime, evBoardStatus);
                List<EvBoard> list = null;
            list.add(evBoard);
           
               result = ps.executeUpdate();
            } finally {
               DbUtil.dbClose(rs, ps, con);
            }
            return result;
           }//end
   
   

             
   }



  
 