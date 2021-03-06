package kosta.mvc.model.dao;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import kosta.mvc.util.DbUtil;
import kosta.mvc.vo.Notice;

public class NoticeDAO {
	Connection con;
	Statement st;
	PreparedStatement ps;
	ResultSet rs;
	Properties pro = new Properties();
	
	public NoticeDAO() {

		InputStream input = getClass().getClassLoader().getResourceAsStream("kosta/mvc/model/dao/sqlQuery.properties");
		try {
			pro.load(input);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/**
	 * 글번호 가져오기 
	 * @throws SQLException 
	 */
	public int getSeq() throws RuntimeException, SQLException {
        int result = 1;
        String sql = pro.getProperty("getNoticeNo");
        try {
            con = DbUtil.getConnection();
            
            ps = con.prepareStatement(sql.toString());
            // 쿼리 실행
            rs = ps.executeQuery();
            
            if(rs.next()) result = rs.getInt(1);
 
        } finally {
        	DbUtil.dbClose(rs, st, con);
        }
        return result;    
    } // end getSeq

	
	/**
	 * 전체보기
	 */
	public List<Notice> selectAll() throws SQLException {

		List<Notice> list = new ArrayList<Notice>();
		String sql = pro.getProperty("noticeSelectAll");
		try {
			con=DbUtil.getConnection();
			ps = con.prepareStatement(sql);
		
			rs = ps.executeQuery();
			
			while(rs.next()) {
				Notice notice = 
					new Notice(rs.getInt("noticeNo"),rs.getString(2), rs.getString(3), rs.getTimestamp(4), rs.getInt(5));
			
				list.add(notice);
			}
		} finally {
			DbUtil.dbClose(rs, ps, con);
		}
		return list;
	}//end
	
	/**
	 * 
	 * 등록하기
	 */
	public int insert(Notice notice) throws SQLException {
		int result=0;
		String sql = pro.getProperty("insertNotice");
		
		try {
			  con=DbUtil.getConnection();
			  ps = con.prepareStatement(sql);
			  
//			  ps.setInt(1, notice.getNoticeNo());
//			  ps.setString(2, notice.getNoticeSubject());
//			  ps.setString(3, notice.getNoticeContent());
//			  ps.setTimestamp(4, notice.getNoticeTime());
//			  ps.setInt(5, notice.getNoticeStatus());
			 // INSERT INTO (noticeNo, noticeSubject, noticeContent, noticeTime, noticeStatus ) 
			  //values (NOTICESEQ.nextval,?,?,sysdate,1)
			  	
			/* int noticeNo = notice.getNoticeNo(); */
			  
			  //ps.setInt(1, notice.getNoticeNo());
			  ps.setString(1, notice.getNoticeSubject());
			  ps.setString(2, notice.getNoticeContent());

			  result=ps.executeUpdate();
		}finally {
			DbUtil.dbClose(ps, con);
		}
		return result;
	}//insert end
	
	
	
	
	/**
	 * 수정하기
	 */
	public int update(Notice notice) throws SQLException {
		int result=0;
		String sql=pro.getProperty("noticeUpdate");
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			
			 ps.setString(1, notice.getNoticeSubject());
			 ps.setString(2, notice.getNoticeContent());
			 ps.setInt(3, notice.getNoticeNo());
			
			result = ps.executeUpdate();
		}finally {
			DbUtil.dbClose( ps, con);
		}
		return result;
	}
	
	/**
	 *삭제하기
	 */
	public int delete (int noticeNo ) throws SQLException {
		int result=0;
		String sql=pro.getProperty("noticeDelete");
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setInt(1, noticeNo);	
			result= ps.executeUpdate();
		}finally {
			DbUtil.dbClose(ps, con);
		}
		return result;
	}
	
	/**
	 * 번호로검색
	 */
	public Notice selectByNoticeNo(int noticeNo) throws SQLException {
		Notice notice =null;
		String sql=pro.getProperty("noticeSelecyByNo");
		
		try{
			 con = DbUtil.getConnection();
			 ps = con.prepareStatement( sql);
			 ps.setInt(1, noticeNo);
			 
			 rs = ps.executeQuery();
			 
			 while(rs.next()) {
				notice= new Notice(rs.getInt(1),rs.getString(2), rs.getString(3), rs.getTimestamp(4), rs.getInt(5));
			 }
		
		}finally{
			DbUtil.dbClose(rs, ps, con);
		}
		return notice;
	}
	
	public Notice selectRecentOne() throws SQLException {
		Notice notice =null;
		String sql=pro.getProperty("selectRecentSingleNotice");
		
		try{
			 con = DbUtil.getConnection();
			 ps = con.prepareStatement( sql);
			 
			 rs = ps.executeQuery();
			 
			 while(rs.next()) {
				notice= new Notice(rs.getInt(1),rs.getString(2), rs.getString(3), rs.getTimestamp(4), rs.getInt(5));
			 }
		
		}finally{
			DbUtil.dbClose(rs, ps, con);
		}
		return notice;
	}
}//end

