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
		try {
			String sql1 = pro.getProperty("insertChannel");
			ps = con.prepareStatement(sql1);
			ps.setInt(1, channel.getUser().getUserNo());
			ps.setString(2, channel.getChName());
			ps.setString(3, channel.getChImg());
			ps.setString(4, channel.getChDescription());
			
			ps.executeUpdate();
			
			String sql2 = pro.getProperty("insertManager");
			ps = con.prepareStatement(sql2);
			ps.setInt(1, channel.getUser().getUserNo());
			
			
			result = ps.executeUpdate();
		} finally {
			DbUtil.dbClose(ps, con);
		}
		return result;
	}
	
	public int updateChannel(Channel channel) throws Exception{
		Connection con = DbUtil.getConnection();
		PreparedStatement ps = null;
		
		/*
		 * StringBuilder sqlc = new StringBuilder();
		 * sqlc.append("update channel set chName=?, "); if(channel.getChImg() != null)
		 * { sqlc.append("chImg=?, "); }
		 * sqlc.append("chDescription=? where chNo=?, chStatus=1");
		 */
		
		String sql = pro.getProperty("updateChannel");
		
		int result = 0;
		try {
			//ps = con.prepareStatement(sqlc.toString());
			ps = con.prepareStatement(sql);
			
			ps.setString(1, channel.getChName());
			ps.setString(2, channel.getChImg());
			ps.setString(3, channel.getChDescription());
			ps.setInt(4, channel.getChNo());
			
			result = ps.executeUpdate();
		} finally {
			DbUtil.dbClose(ps, con);
		}
		return result;
		
	}
	
	public int deleteChannel(int chNo) throws SQLException{
		Connection con = DbUtil.getConnection();
		PreparedStatement ps = null;
		int result = 0;
		String sql = pro.getProperty("deleteChannel");
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, chNo);
			
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
			rs=ps.executeQuery();
			
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

	public Channel selectByChNo(int chNo) throws SQLException{
		Connection con = DbUtil.getConnection();
		PreparedStatement ps =null;
		ResultSet rs =null;
		Channel channel =null;
		String sql=pro.getProperty("channelDetail");
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, chNo);
			rs = ps.executeQuery();
			/*
			 * User userId = null; UsersDAO usersDAO = new UsersDAO(); User user =
			 * usersDAO.selectById(userId.getUserId());
			 */
			
			if(rs.next()) {
				int userNo = rs.getInt("userNo");
				String chName = rs.getString("chName");
				String chImg = rs.getString("chImg");
				int chStatus = rs.getInt("chStatus");
				String chDescription = rs.getString("chDescription");
				
				User user2 = new User(userNo);
				user2.setUserName(rs.getString("userName"));
				channel = new Channel(chNo, user2, chName, chImg, chStatus, chDescription);
			}
		} finally {
			DbUtil.dbClose(rs, ps, con);
		}
		return channel;
	}

	public List<Channel> manageChannel(int userNo) throws SQLException{
		Connection con = DbUtil.getConnection();
		PreparedStatement ps =null;
		ResultSet rs =null;
		List<Channel> list = new ArrayList<>();
		Channel channel = null;
		String sql=pro.getProperty("manageChannel");
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, userNo);
			rs = ps.executeQuery();
			while(rs.next()) {
				int chNo = rs.getInt("chNo");
				String chName = rs.getString("chName");
				String chImg = rs.getString("chImg");
				int chStatus = rs.getInt("chStatus");
				String chDescription = rs.getString("chDescription");
				
				User user2 = new User(userNo);
				user2.setUserName(rs.getString("userName"));
				user2.setUserEmail(rs.getString("userEmail"));
				channel = new Channel(chNo, user2, chName, chImg, chStatus, chDescription);
				list.add(channel);
			}
		} finally {
			DbUtil.dbClose(ps, con);
		}
		return list;
	}

	
}
