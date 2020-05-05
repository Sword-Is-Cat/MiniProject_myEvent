package kosta.mvc.model.dao;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

import kosta.mvc.util.DbUtil;
import kosta.mvc.vo.Category;
import kosta.mvc.vo.Channel;
import kosta.mvc.vo.EvTime;
import kosta.mvc.vo.Event;
import kosta.mvc.vo.User;

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

	public int delete(int userNo, int evNo) throws SQLException {
		int result=0;
		try {
			String sql = pro.getProperty("deleteFavoriteEv");
			con=DbUtil.getConnection();
			ps=con.prepareStatement(sql);
			
			ps.setInt(1, userNo);
			ps.setInt(2, evNo);
			
			result = ps.executeUpdate();
			
			return result;
		}finally {
			DbUtil.dbClose(ps, con);
		}
	}

	public int insert(int userNo, int evNo) throws SQLException {
		int result=0;
		try {
			String sql = pro.getProperty("insertFavoriteEv");
			con=DbUtil.getConnection();
			ps=con.prepareStatement(sql);
			
			ps.setInt(1, userNo);
			ps.setInt(2, evNo);
			
			result = ps.executeUpdate();
			
			return result;
		}finally {
			DbUtil.dbClose(ps, con);
		}
	}
	
	public List<Event> selectEventByEventNumbers(Set<Integer> set) throws SQLException {
		int result=0;
		
		List<Event> list = new ArrayList<>();

		Map<Integer, User> userMap = new HashMap<>();
		Map<Integer, Channel> chMap = new HashMap<>();

		Category category = null;
		Channel channel = null;
		User user = null;
		EvTime evTime = null;
		Event event = null;
		
		Iterator<Integer> iter = set.iterator();
		try {
			boolean flag=false;
			String sql=pro.getProperty("selectEventByEventNumbers");
			sql+=" (";
			while(iter.hasNext()) {
				if(flag)sql+=", ";
				sql+=iter.next();
				flag=true;
			}
			sql+=")";
			
			System.out.println(sql);
			
			con=DbUtil.getConnection();
			ps=con.prepareStatement(sql);
			
			rs=ps.executeQuery();
			
			while (rs.next()) {

				if (category == null) {
					category = new Category(rs.getInt("cateNo"), rs.getString("cateName"));
				}

				int userNo = rs.getInt("userNo");
				if (userMap.containsKey(userNo)) {
					user = userMap.get(userNo);
				} else {
					user = new User(userNo, rs.getString("userName"), rs.getString("userPwd"), rs.getString("userName"),
							rs.getString("userAddr"), rs.getString("userPhone"), rs.getString("userEmail"),
							rs.getTimestamp("userJoinDate"), rs.getInt("userStatus"));
					userMap.put(userNo, user);
				}

				int chNo = rs.getInt("chNo");
				if (chMap.containsKey(chNo)) {
					channel = chMap.get(chNo);
				} else {
					channel = new Channel(chNo, user, rs.getString("chName"), rs.getString("chImg"),
							rs.getInt("chStatus"), rs.getString("chDescription"));
					chMap.put(chNo, channel);
				}

				evTime = new EvTime(rs.getInt("evNo"), rs.getTimestamp("evCreateTime"), rs.getTimestamp("evStartTime"),
						rs.getTimestamp("evEndTime"), rs.getTimestamp("evBookStartTime"),
						rs.getTimestamp("evBookEndTime"));
				event = new Event(rs.getInt("evNo"), category, channel, rs.getString("evName"), rs.getString("evAddr"),
						rs.getInt("evBookMax"), rs.getString("evDescription"), rs.getString("evImg"),
						rs.getString("evImgDetail"), rs.getString("evPhone"), rs.getString("evEmail"), evTime,
						rs.getInt("evStatus"));

				list.add(event);

			}
			
			
		}finally {
			DbUtil.dbClose(rs, ps, con);
		}
		return list;
	}
	
}
