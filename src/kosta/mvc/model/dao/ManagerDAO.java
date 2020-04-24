package kosta.mvc.model.dao;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import kosta.mvc.util.DbUtil;

public class ManagerDAO {
	
	Connection con;
	Statement st;
	PreparedStatement ps;
	ResultSet rs;
	Properties pro = new Properties();
	
	public ManagerDAO() {

		InputStream input = getClass().getClassLoader().getResourceAsStream("kosta/mvc/model/dao/sqlQuery.properties");
		try {
			pro.load(input);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int isManager(int chNo, int userNo) throws SQLException {
		
		String sql = pro.getProperty("isManager");
		int answer = 0;
		
		try {
			
			
		con = DbUtil.getConnection();
		ps = con.prepareStatement(sql);
		
		ps.setInt(1, chNo);
		ps.setInt(2, userNo);
		
		answer = ps.executeUpdate();
		
		}finally {
			DbUtil.dbClose(ps, con);
		}
		
		return answer;
	}

}
