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
import kosta.mvc.vo.ChBoard;
import kosta.mvc.vo.Channel;
import kosta.mvc.vo.Manager;
import kosta.mvc.vo.User;

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

	public int insertChMng(Manager manager) throws SQLException{
		Connection con = DbUtil.getConnection();
		PreparedStatement ps = null;
		int result = 0;
		try {
			String sql = pro.getProperty("insertChManager");
			ps = con.prepareStatement(sql);
			
			ps.setInt(1, manager.getChannel().getChNo());
			ps.setInt(2, manager.getUser().getUserNo());
			
			result = ps.executeUpdate();
		} finally {
			DbUtil.dbClose(ps, con);
		}
		
		return result;
	}

	public List<Manager> selectManager(int chNo) throws SQLException {
		Connection con = DbUtil.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Manager> list = new ArrayList<>();
		Manager manager = null;
		String sql=pro.getProperty("selectManager");
		System.out.println(sql);
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, chNo);
			rs = ps.executeQuery();
			while(rs.next()) {
				int userNo = rs.getInt("userNo");
				int grade = rs.getInt("grade");
				User user = new User(userNo);
				Channel channel = new Channel(chNo);
				
				user.setUserId(rs.getString("userId"));
				user.setUserName(rs.getString("userName"));
				manager = new Manager(channel, user, grade);
				list.add(manager);
			}
		} finally {
			DbUtil.dbClose(rs, ps, con);
		}
		return list;
	}

}
