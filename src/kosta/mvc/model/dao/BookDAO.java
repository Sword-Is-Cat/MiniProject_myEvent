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

	public int insertBook(int userNo, int evNo) throws Exception {

		int result = 0;
		String sql = pro.getProperty("insertBook");
//		insertBook=insert into book(bookNo, userNo, evNo, bookTime, bookStatus)
//		values (bookseq.nextval, ?, ?, SYSDATE, 1)

		try {

			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);

			ps.setInt(1, userNo);
			ps.setInt(2, evNo);

			result = ps.executeUpdate();

		} finally {
			DbUtil.dbClose(ps, con);
		}

		return result;
	}

	public int checkBook(int userNo, int evNo) throws Exception {
		int result = 0;
		String sql = pro.getProperty("checkBook");
//		checkBook=select * from book where userNo=? and evNo=? and bookStatus=1

		try {

			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);

			ps.setInt(1, userNo);
			ps.setInt(2, evNo);

			result = ps.executeUpdate();

		} finally {
			DbUtil.dbClose(ps, con);
		}

		return result;
	}

	public int deleteBook(int userNo, int evNo) throws Exception {
		int result = 0;
		String sql = pro.getProperty("deleteBook");
//		deleteBook=update book set bookStatus=0 where userNo=? and evNo=?

		try {

			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);

			ps.setInt(1, userNo);
			ps.setInt(2, evNo);

			result = ps.executeUpdate();

		} finally {
			DbUtil.dbClose(ps, con);
		}

		return result;
	}
}
