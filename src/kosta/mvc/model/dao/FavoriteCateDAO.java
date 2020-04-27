package kosta.mvc.model.dao;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.Properties;

import kosta.mvc.util.DbUtil;

public class FavoriteCateDAO {
	Connection con;
	Statement st;
	PreparedStatement ps;
	ResultSet rs;
	Properties pro = new Properties();
	
	public FavoriteCateDAO() {

		InputStream input = getClass().getClassLoader().getResourceAsStream("kosta/mvc/model/dao/sqlQuery.properties");
		try {
			pro.load(input);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int insert(int userNo, List<Integer> cateNo) throws SQLException {
		int result=0;
		
		try {
			String sql = pro.getProperty("cateInsert");
			con = DbUtil.getConnection();
			
			for(int catNo : cateNo) {				
				ps = con.prepareStatement(sql);
				
				ps.setInt(1, userNo);
				ps.setInt(2, catNo);
				
				result += ps.executeUpdate();
			}
			
			return result;
			
		}finally {
			DbUtil.dbClose(ps, con);
		}
		
	}
	
	public int insert(Connection con, int userNo, List<Integer> cateNo) throws SQLException {
		int result=0;
		
		try {
			String sql = pro.getProperty("cateInsert");
			con = DbUtil.getConnection();
			
			for(int catNo : cateNo) {				
				ps = con.prepareStatement(sql);
				
				ps.setInt(1, userNo);
				ps.setInt(2, catNo);
				
				result += ps.executeUpdate();
			}
			
			return result;
			
		}finally {
			DbUtil.dbClose(ps, con);
		}	
	}
	
	public int delete(Connection con, int userNo) throws SQLException {
		int result=0;
		try {
			String sql = pro.getProperty("favCateDelete");
			ps = con.prepareStatement(sql);
			ps.setInt(1, userNo);
			result = ps.executeUpdate();
		}finally {
			DbUtil.dbClose(ps);
		}
		return result;
	}
	
	public int delete(int userNo) throws SQLException {
		int result=0;
		try {
			con=DbUtil.getConnection();
			String sql = pro.getProperty("favCateDelete");
			ps = con.prepareStatement(sql);
			ps.setInt(1, userNo);
			result = ps.executeUpdate();
		}finally {
			DbUtil.dbClose(ps);
		}
		return result;
	}
}
