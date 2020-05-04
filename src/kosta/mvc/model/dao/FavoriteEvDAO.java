package kosta.mvc.model.dao;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashSet;
import java.util.Properties;
import java.util.Set;

import kosta.mvc.util.DbUtil;

public class FavoriteEvDAO {
	Connection con;
	Statement st;
	PreparedStatement ps;
	ResultSet rs;
	Properties pro = new Properties();
	
	public FavoriteEvDAO() {

		InputStream input = getClass().getClassLoader().getResourceAsStream("kosta/mvc/model/dao/sqlQuery.properties");
		try {
			pro.load(input);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public Set<Integer> selectByUserNo(int userNo) throws SQLException {
		Set<Integer> set = new HashSet<>();
		
		try {
			String sql = pro.getProperty("selectFavoriteEvByUserNo");
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			
			ps.setInt(1, userNo);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				set.add(rs.getInt("evNo"));
			}
			
			return set;
		}finally {
			DbUtil.dbClose(rs, st, con);
		}
	}
}
