package kosta.mvc.model.dao;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import kosta.mvc.util.DbUtil;
import kosta.mvc.vo.User;

public class UsersDAO {
	Connection con;
	Statement st;
	PreparedStatement ps;
	ResultSet rs;
	static Properties pro = new Properties();
	
	public UsersDAO() {

		InputStream input = getClass().getClassLoader().getResourceAsStream("kosta/mvc/model/dao/sqlQuery.properties");
		try {
			pro.load(input);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int insert(User user) throws SQLException {
		int result=0;
		try {
			String sql = pro.getProperty("userInsert");
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql); //INSERT INTO users(userNo, userId, userPwd, userName, userAddr, userPhone, userEmail) VALUES (userSeq.NEXTVAL, ?, ?, ?, ?, ?, ?)
			ps.setString(1, user.getUserId());
			ps.setString(2, user.getUserPwd());
			ps.setString(3, user.getUserName());
			ps.setString(4, user.getUserAddr());
			ps.setString(5, user.getUserPhone());
			ps.setString(6, user.getUserEmail());
			
			result = ps.executeUpdate();
			
			return result;			
		}finally {
			DbUtil.dbClose(ps, con);
		}
	}

	/**
	 * transaction을 위한 insert항목 userNo return함
	 * @param con
	 * @param user
	 * @return userNo
	 * @throws SQLException
	 */
	public int insert(Connection con, PreparedStatement ps, User user) throws SQLException {
		int result = 0;
		String sql = pro.getProperty("userInsert");
		ps = con.prepareStatement(sql);
		
		ps.setString(1, user.getUserId());
		ps.setString(2, user.getUserPwd());
		ps.setString(3, user.getUserName());
		ps.setString(4, user.getUserAddr());
		ps.setString(5, user.getUserPhone());
		ps.setString(6, user.getUserEmail());
		
		result = ps.executeUpdate();
		
		return result;
	}
	
	public User selectById(String userId) throws SQLException {
		User user = null;
		try {
			String sql = pro.getProperty("selectUserById");
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			
			ps.setString(1, userId);
			rs = ps.executeQuery();
			
			if(rs.next()) {
				user = new User(rs.getInt("userNo"), rs.getString("userId"), rs.getString("userPwd"), rs.getString("userName"), 
					rs.getString("userAddr"), rs.getString("userPhone"), rs.getString("userEmail"), rs.getTimestamp("userJoinDate"), rs.getInt("userStatus"));
			}
			
		}finally {
			DbUtil.dbClose(rs, ps, con);
		}
		return user;
	}
	
	/**
	 * 중복체크
	 * @param id
	 * @return 1 - 중복, 0 - 중복아님
	 * @throws SQLException 
	 */
	public int idDuplicationChk(String userId) throws SQLException {
		User user = this.selectById(userId);
		return (user==null) ? 0 : 1;
	}

	public int update(Connection con, User user) throws SQLException {
		int result=0;
		
		try {
			//UPDATE users SET userPwd=?, userName=?, userAddr=?, userPhone=?, userEmail=? WHERE userNo=?
			String sql=pro.getProperty("userUpdate");
			ps=con.prepareStatement(sql);
			ps.setString(1, user.getUserPwd());
			ps.setString(2, user.getUserName());
			ps.setString(3, user.getUserAddr());
			ps.setString(4, user.getUserPhone());
			ps.setString(5, user.getUserEmail());
			ps.setInt(6, user.getUserNo());
			
			result = ps.executeUpdate();
		}finally {
			DbUtil.dbClose(ps);
		}
		
		return result;
	}

	public static User selectUserNoByUserId(String userId) throws SQLException {
		// 지헤 진행중
		User userInfo = null;
		try {
			Connection con = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			
			String sql = pro.getProperty("selectUserNoByUserId");
			ps=con.prepareStatement(sql);
			
			ps.setString(1, userId);
			rs = ps.executeQuery();
			
			////////
			
		} finally {
			//DbUtil.dbClose(rs, ps, con);
		}
		return null;
	}
}
