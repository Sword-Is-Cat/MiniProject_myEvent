package kosta.mvc.model.dao;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Properties;

import kosta.mvc.util.DbUtil;
import kosta.mvc.vo.Channel;
import kosta.mvc.vo.User;

public class ChannelDAO {
	Properties pro = new Properties();
	public ChannelDAO() {
		InputStream input= 
		  getClass().getClassLoader().getResourceAsStream("kosta/mvc/model/dao/sqlQuery.properties");
		try {
	    	pro.load(input);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int insertChannel(Channel channel) throws SQLException {
		Connection con = DbUtil.getConnection();
		PreparedStatement ps = null;
		int result = 0;
		String sql = pro.getProperty("insertChannel");
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, channel.getChNo());
			ps.setInt(2, channel.getUser().getUserNo());
			ps.setString(3, channel.getChName());
			ps.setString(4, channel.getChImg());
			ps.setInt(5, channel.getChStatus());
			ps.setString(6, channel.getChDescription());
			
			result = ps.executeUpdate();
		} finally {
			DbUtil.dbClose(ps, con);
		}
		return result;
	}
	
	public int updateChannel(Channel channel) throws SQLException{
		Connection con = DbUtil.getConnection();
		PreparedStatement ps = null;
		int result = 0;
		String sql = pro.getProperty("updateChannel");
		try {
			ps = con.prepareStatement(sql);
			
			ps.setString(1, channel.getChName());
			ps.setString(2, channel.getChImg());
			ps.setString(3, channel.getChDescription());
			ps.setInt(4, channel.getChNo());
			ps.setInt(5, channel.getUser().getUserNo());
			
			result = ps.executeUpdate();
		} finally {
			DbUtil.dbClose(ps, con);
		}
		return result;
	}
	
	public int deleteChannel(int chNo, int userNo) throws SQLException{
		Connection con = DbUtil.getConnection();
		PreparedStatement ps = null;
		int result = 0;
		String sql = pro.getProperty("deleteChannel");
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, chNo);
			ps.setInt(2, userNo);
			
			result = ps.executeUpdate();
		} finally {
			DbUtil.dbClose(ps, con);
		}
		return result;
	}

	public List<Channel> selectAllChannel() throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Channel> list = new ArrayList<Channel>();
		String sql = pro.getProperty("selectChannel");
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			
			Channel channel;
			HashMap<Integer, User> userMap = new HashMap<Integer, User>();
			
			while(rs.next()) {
				int chNo = rs.getInt("chNo");
				
				int userNo = rs.getInt("userNo");
				User user;
				if(userMap.get(userNo)!=null) {
					user = userMap.get(userNo);
				} else {
					/*
					 * String userName = rs.getString("userName"); String userEmail =
					 * rs.getString("userEmail"); user = new User(userNo, userName, userEmail);
					 * userMap.put(userNo, user);
					 */
					user = new User(userNo);
				}
				
				String chName = rs.getString("chName");
				String chImg = rs.getString("chImg");
				int chStatus = rs.getInt("chStatus");
				String chDescription = rs.getString("chDescription");
				
				channel = new Channel(chNo, user, chName, chImg, chStatus, chDescription);
				list.add(channel);
			}
		} finally {
			DbUtil.dbClose(rs, ps, con);
		}
		return list;
	}
}
