package kosta.mvc.model.dao;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

import kosta.mvc.util.DbUtil;
import kosta.mvc.vo.Book;

public class BookDAO {
	Connection con;
	Statement st;
	PreparedStatement ps;
	ResultSet rs;
	Properties pro = new Properties();
	
	public BookDAO() {

		InputStream input = getClass().getClassLoader().getResourceAsStream("kosta/mvc/model/dao/sqlQuery.properties");
		try {
			pro.load(input);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int insertBook(Book book) throws Exception{
		
		int result = 0;
		String sql = pro.getProperty("insertBook");
		
		try {
			
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			
//			insert into book(bookno, userno, evno, booktime, bookstatus) 
//			values (bookseq.nextval, ?, ?, sysdate, 1)
			
			ps.setInt(1, book.getUser().getUserNo());
			ps.setInt(2, book.getEvent().getEvNo());
			
			result = ps.executeUpdate();
			
		}finally {
			DbUtil.dbClose(ps, con);
		}
		
		return result;
	}
}
