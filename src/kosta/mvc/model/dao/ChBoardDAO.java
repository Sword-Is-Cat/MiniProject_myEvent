package kosta.mvc.model.dao;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import kosta.mvc.util.DbUtil;
import kosta.mvc.vo.ChBoard;
import kosta.mvc.vo.Channel;
import kosta.mvc.vo.User;

public class ChBoardDAO {
	
	Properties pro = new Properties();
	public ChBoardDAO() {
		InputStream input= 
				  getClass().getClassLoader().getResourceAsStream("kosta/mvc/model/dao/sqlQuery.properties");
		try {
	    	pro.load(input);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int insertChBoard(ChBoard chBoard) throws SQLException{
		Connection con = DbUtil.getConnection();
		PreparedStatement ps = null;
		int result = 0;
		try {
			String sql = pro.getProperty("createChBoard");
			ps = con.prepareStatement(sql);
			
			ps.setInt(1, chBoard.getUser().getUserNo());
			ps.setInt(2, chBoard.getChannel().getChNo());
			ps.setString(3, chBoard.getChBoardContent());
			ps.setInt(4, chBoard.getChBoardStar());
			
			result = ps.executeUpdate();
		} finally {
			DbUtil.dbClose(ps, con);
		}
		
		return result;
	}

	public List<ChBoard> selectChBoard(int chNo) throws SQLException {
		Connection con = DbUtil.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<ChBoard> list = new ArrayList<>();
		ChBoard chBoard = null;
		String sql=pro.getProperty("selectChBoard");
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, chNo);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				int chBoardNo = rs.getInt("chBoardNo");
				int userNo = rs.getInt("userNo");
				String chBoardContent = rs.getString("chBoardContent");
				int chBoardStar = rs.getInt("chBoardStar");
				int chBoardStatus = rs.getInt("chBoardStatus");
				Timestamp chBoardTime = rs.getTimestamp("chBoardTime");
				
				User user = new User(userNo);
				Channel channel = new Channel(chNo);
				user.setUserName(rs.getString("userName"));
				chBoard = new ChBoard(chBoardNo, user, channel, chBoardContent, chBoardStar, chBoardStatus, chBoardTime);
				list.add(chBoard);
			}
		} finally {
			DbUtil.dbClose(rs, ps, con);
		}
		return list;
	}

	public List<ChBoard> selectChBoardByUserNo(int userNo) throws SQLException {
		Connection con = DbUtil.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<ChBoard> list = new ArrayList<>();
		ChBoard chBoard = null;
		String sql=pro.getProperty("selectChBoardByUserNo");
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, userNo);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				int chBoardNo = rs.getInt("chBoardNo");
				int chNo = rs.getInt("chNo");
				String chBoardContent = rs.getString("chBoardContent");
				int chBoardStar = rs.getInt("chBoardStar");
				int chBoardStatus = rs.getInt("chBoardStatus");
				Timestamp chBoardTime = rs.getTimestamp("chBoardTime");
				
				User user = new User(userNo);
				Channel channel = new Channel(chNo);
				channel.setChName(rs.getString("chName"));
				chBoard = new ChBoard(chBoardNo, user, channel, chBoardContent, chBoardStar, chBoardStatus, chBoardTime);
				list.add(chBoard);
			}
		} finally {
			DbUtil.dbClose(rs, ps, con);
		}
		return list;
	}

}
