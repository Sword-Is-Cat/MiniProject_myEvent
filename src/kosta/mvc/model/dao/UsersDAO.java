package kosta.mvc.model.dao;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

import kosta.mvc.util.DbUtil;
import kosta.mvc.vo.User;

public class UsersDAO {
	Connection con;
	Statement st;
	PreparedStatement ps;
	ResultSet rs;
	Properties pro = new Properties();
	
	public UsersDAO() {

		InputStream input = getClass().getClassLoader().getResourceAsStream("kosta/mvc/model/dao/sqlQuery.properties");
		try {
			pro.load(input);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int insert(User user) {
		int result=0;
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
		}finally {
			DbUtil.dbClose(st, con);
		}
		
		return result;
	}
}
