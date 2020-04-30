package kosta.mvc.model.dao;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import kosta.mvc.util.DbUtil;
import kosta.mvc.vo.Category;
import kosta.mvc.vo.Channel;
import kosta.mvc.vo.EvTime;
import kosta.mvc.vo.Event;
import kosta.mvc.vo.User;

public class EventDAO {
	Connection con;
	Statement st;
	PreparedStatement ps;
	ResultSet rs;
	Properties pro = new Properties();

	public EventDAO() {

		InputStream input = getClass().getClassLoader().getResourceAsStream("kosta/mvc/model/dao/sqlQuery.properties");
		try {
			pro.load(input);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int insertEvent(Event event) throws Exception {

		String sql = pro.getProperty("insertEvent");
		String sql2 = pro.getProperty("insertEventTime");
		int result = 0;
		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);

			ps.setInt(1, event.getCategory().getCateNo());
			ps.setInt(2, event.getChannel().getChNo());
			ps.setString(3, event.getEvName());
			ps.setString(4, event.getEvAddr());
			ps.setInt(5, event.getEvBookMax());
			ps.setString(6, event.getEvDescription());
			ps.setString(7, event.getEvImg());
			ps.setString(8, event.getEvImgDetail());
			ps.setString(9, event.getEvPhone());
			ps.setString(10, event.getEvEmail());

			ps.executeUpdate();

			ps = con.prepareStatement(sql2);

			ps.setTimestamp(1, event.getEvTime().getEvStartTime());
			ps.setTimestamp(2, event.getEvTime().getEvEndTime());
			ps.setTimestamp(3, event.getEvTime().getEvBookStartTime());
			ps.setTimestamp(4, event.getEvTime().getEvBookEndTime());

			ps.executeUpdate();

			ps = con.prepareStatement("select evseq.currval from dual");
			rs = ps.executeQuery();

			if (rs.next())
				result = rs.getInt(1);

		} finally {
			DbUtil.dbClose(rs, ps, con);
		}

		return result;
	}

	public int updateEvent(Event event) throws Exception {

		StringBuilder sqle = new StringBuilder();
		sqle.append("update event set cateNo=?, evName=?, evBookMax=?, evDescription=?, ");
		if (event.getEvAddr() != null) {
			sqle.append("evAddr=?, ");
		}
		if (event.getEvImg() != null) {
			sqle.append("evImg=?, ");
		}
		if (event.getEvImgDetail() != null) {
			sqle.append("evImgDetail=?, ");
		}
		sqle.append("evPhone=?, evEmail=? where evno=? and evStatus=1");

		StringBuilder sqlt = new StringBuilder();
		sqlt.append("update evTime set evCreateTime=sysdate");
		if (event.getEvTime().getEvStartTime() != null) {
			sqlt.append(", evStartTime=?");
		}
		if (event.getEvTime().getEvEndTime() != null) {
			sqlt.append(", evEndTime=?");
		}
		if (event.getEvTime().getEvBookStartTime() != null) {
			sqlt.append(", evBookStartTime=?");
		}
		if (event.getEvTime().getEvBookEndTime() != null) {
			sqlt.append(", evBookEndTime=?");
		}

		sqlt.append(" where evNo=?");

		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sqle.toString());

			int i = 0;
			ps.setInt(++i, event.getCategory().getCateNo());
			ps.setString(++i, event.getEvName());
			ps.setInt(++i, event.getEvBookMax());
			ps.setString(++i, event.getEvDescription());
			if (event.getEvAddr() != null) {
				ps.setString(++i, event.getEvAddr());
			}
			if (event.getEvImg() != null) {
				ps.setString(++i, event.getEvImg());
			}
			if (event.getEvImgDetail() != null) {
				ps.setString(++i, event.getEvImgDetail());
			}
			ps.setString(++i, event.getEvPhone());
			ps.setString(++i, event.getEvEmail());
			ps.setInt(++i, event.getEvNo());

			ps.executeUpdate();

			int j = 0;
			ps = con.prepareStatement(sqlt.toString());
			if (event.getEvTime().getEvStartTime() != null) {
				ps.setTimestamp(++j, event.getEvTime().getEvStartTime());
			}
			if (event.getEvTime().getEvEndTime() != null) {
				ps.setTimestamp(++j, event.getEvTime().getEvEndTime());
			}
			if (event.getEvTime().getEvBookStartTime() != null) {
				ps.setTimestamp(++j, event.getEvTime().getEvBookStartTime());
			}
			if (event.getEvTime().getEvBookEndTime() != null) {
				ps.setTimestamp(++j, event.getEvTime().getEvBookEndTime());
			}
			ps.setInt(++j, event.getEvNo());

			if (j > 1)
				ps.executeUpdate();

		} finally {
			DbUtil.dbClose(ps, con);
		}

		return event.getEvNo();
	}

	public int deleteEvent(int evNo) throws Exception {

		String sql = pro.getProperty("deleteEvent");
		int result = 0;

		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);

			ps.setInt(1, evNo);

			result = ps.executeUpdate();

		} finally {
			DbUtil.dbClose(ps, con);
		}

		return result;
	}

	public Event selectEventByEvNo(int evNo) throws Exception {

		Category category = null;
		Channel channel = null;
		User user = null;
		EvTime evTime = null;
		Event event = null;

		String sql = pro.getProperty("selectEventByEvNo");

		try {

			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);

			ps.setInt(1, evNo);

			rs = ps.executeQuery();

			if (rs.next()) {

				category = new Category(rs.getInt("cateNo"), rs.getString("cateName"));
				user = new User(rs.getInt("userNo"), rs.getString("userName"), rs.getString("userPwd"),
						rs.getString("userName"), rs.getString("userAddr"), rs.getString("userPhone"),
						rs.getString("userEmail"), rs.getTimestamp("userJoinDate"), rs.getInt("userStatus"));
				channel = new Channel(rs.getInt("chNo"), user, rs.getString("chName"), rs.getString("chImg"),
						rs.getInt("chStatus"), rs.getString("chDescription"));
				evTime = new EvTime(rs.getInt("evNo"), rs.getTimestamp("evCreateTime"), rs.getTimestamp("evStartTime"),
						rs.getTimestamp("evEndTime"), rs.getTimestamp("evBookStartTime"),
						rs.getTimestamp("evBookEndTime"));
				event = new Event(rs.getInt("evNo"), category, channel, rs.getString("evName"), rs.getString("evAddr"),
						rs.getInt("evBookMax"), rs.getString("evDescription"), rs.getString("evImg"),
						rs.getString("evImgDetail"), rs.getString("evPhone"), rs.getString("evEmail"), evTime,
						rs.getInt("evStatus"));

			} else {
				throw new Exception("검색된 이벤트가 없습니다");
			}

		} finally {
			DbUtil.dbClose(rs, ps, con);
		}

		return event;
	}

	public List<Event> selectEventByChNo(int chNo) throws Exception {

		List<Event> list = new ArrayList<>();
		String sql = pro.getProperty("selectEventByChNo");

		Map<Integer, Category> cateMap = new HashMap<>();

		Category category = null;
		Channel channel = null;
		User user = null;
		EvTime evTime = null;
		Event event = null;

		try {

			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);

			ps.setInt(1, chNo);

			rs = ps.executeQuery();

			while (rs.next()) {

				if (channel == null) {
					user = new User(rs.getInt("userNo"), rs.getString("userName"), rs.getString("userPwd"),
							rs.getString("userName"), rs.getString("userAddr"), rs.getString("userPhone"),
							rs.getString("userEmaill"), rs.getTimestamp("userJoinDate"), rs.getInt("userStatus"));
					channel = new Channel(rs.getInt("chNo"), user, rs.getString("chName"), rs.getString("chImg"),
							rs.getInt("chStatus"), rs.getString("chDescription"));
				}

				int cateNo = rs.getInt("cateNo");
				if (cateMap.containsKey(cateNo)) {
					category = cateMap.get(cateNo);
				} else {
					category = new Category(cateNo, rs.getString("cateName"));
					cateMap.put(cateNo, category);
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
		} finally {
			DbUtil.dbClose(rs, ps, con);
		}

		if (list.size() == 0)
			throw new Exception("검색결과가없습니다");

		return list;
	}

	public List<Event> selectEventByCateNo(int cateNo) throws Exception {

		List<Event> list = new ArrayList<>();
		String sql = pro.getProperty("selectEventByCateNo");

		Map<Integer, User> userMap = new HashMap<>();
		Map<Integer, Channel> chMap = new HashMap<>();

		Category category = null;
		Channel channel = null;
		User user = null;
		EvTime evTime = null;
		Event event = null;

		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);

			ps.setInt(1, cateNo);

			rs = ps.executeQuery();

			while (rs.next()) {

				if (category == null) {
					category = new Category(cateNo, rs.getString("cateName"));
				}

				int userNo = rs.getInt("userNo");
				if (userMap.containsKey(userNo)) {
					user = userMap.get(userNo);
				} else {
					user = new User(userNo, rs.getString("userName"), rs.getString("userPwd"), rs.getString("userName"),
							rs.getString("userAddr"), rs.getString("userPhone"), rs.getString("userEmaill"),
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

		} finally {
			DbUtil.dbClose(rs, ps, con);
		}

		if (list.size() == 0)
			throw new Exception("검색결과가없습니다");

		return list;

	}

	public List<Event> selectNewEventByCateNo(int cateNo, int no) throws Exception {

		List<Event> list = new ArrayList<>();
		String sql = pro.getProperty("selectNewEventsByCateNo");

		Map<Integer, User> userMap = new HashMap<>();
		Map<Integer, Channel> chMap = new HashMap<>();

		Category category = null;
		Channel channel = null;
		User user = null;
		EvTime evTime = null;
		Event event = null;

		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);

			ps.setInt(1, cateNo);
			ps.setInt(2, no);

			rs = ps.executeQuery();

			while (rs.next()) {

				if (category == null) {
					category = new Category(cateNo, rs.getString("cateName"));
				}

				int userNo = rs.getInt("userNo");
				if (userMap.containsKey(userNo)) {
					user = userMap.get(userNo);
				} else {
					user = new User(userNo, rs.getString("userName"), rs.getString("userPwd"), rs.getString("userName"),
							rs.getString("userAddr"), rs.getString("userPhone"), rs.getString("userEmaill"),
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

		} finally {
			DbUtil.dbClose(rs, ps, con);
		}

		if (list.size() == 0)
			throw new Exception("검색결과가없습니다");

		return list;

	}

	public List<Event> selectNewEvents(int no) throws Exception {

		List<Event> list = new ArrayList<>();
		String sql = pro.getProperty("selectNewEvents");

		Map<Integer, User> userMap = new HashMap<>();
		Map<Integer, Channel> chMap = new HashMap<>();
		Map<Integer, Category> cateMap = new HashMap<>();

		Category category = null;
		Channel channel = null;
		User user = null;
		EvTime evTime = null;
		Event event = null;

		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);

			ps.setInt(1, no);

			rs = ps.executeQuery();

			while (rs.next()) {

				int cateNo = rs.getInt("cateNo");
				if (cateMap.containsKey(cateNo)) {
					category = cateMap.get(cateNo);
				} else {
					category = new Category(cateNo, rs.getString("cateName"));
					cateMap.put(cateNo, category);
				}

				int userNo = rs.getInt("userNo");
				if (userMap.containsKey(userNo)) {
					user = userMap.get(userNo);
				} else {
					user = new User(userNo, rs.getString("userName"), rs.getString("userPwd"), rs.getString("userName"),
							rs.getString("userAddr"), rs.getString("userPhone"), rs.getString("userEmaill"),
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

		} finally {
			DbUtil.dbClose(rs, ps, con);
		}

		if (list.size() == 0)
			throw new Exception("검색결과가없습니다");

		return list;

	}

	public List<Event> selectEventByEvName(String evName) throws Exception {

		List<Event> list = new ArrayList<>();
		String sql = pro.getProperty("selectEventByEvName");

		Map<Integer, User> userMap = new HashMap<>();
		Map<Integer, Channel> chMap = new HashMap<>();
		Map<Integer, Category> cateMap = new HashMap<>();

		Category category = null;
		Channel channel = null;
		User user = null;
		EvTime evTime = null;
		Event event = null;

		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);

			ps.setString(1, "%" + evName + "%");

			rs = ps.executeQuery();

			while (rs.next()) {

				int cateNo = rs.getInt("cateNo");
				if (cateMap.containsKey(cateNo)) {
					category = cateMap.get(cateNo);
				} else {
					category = new Category(cateNo, rs.getString("cateName"));
					cateMap.put(cateNo, category);
				}

				int userNo = rs.getInt("userNo");
				if (userMap.containsKey(userNo)) {
					user = userMap.get(userNo);
				} else {
					user = new User(userNo, rs.getString("userName"), rs.getString("userPwd"), rs.getString("userName"),
							rs.getString("userAddr"), rs.getString("userPhone"), rs.getString("userEmaill"),
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

		} finally {
			DbUtil.dbClose(rs, ps, con);
		}

		if (list.size() == 0)
			throw new Exception("검색결과가없습니다");

		return list;

	}

	public List<Event> selectRecentEvents() throws Exception {

		List<Event> list = new ArrayList<>();
		String sql = pro.getProperty("selectRecentEv");

		Map<Integer, User> userMap = new HashMap<>();
		Map<Integer, Channel> chMap = new HashMap<>();
		Map<Integer, Category> cateMap = new HashMap<>();

		Category category = null;
		Channel channel = null;
		User user = null;
		EvTime evTime = null;
		Event event = null;

		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);

			ps.setInt(1, 4);

			rs = ps.executeQuery();

			while (rs.next()) {

				int cateNo = rs.getInt("cateNo");
				if (cateMap.containsKey(cateNo)) {
					category = cateMap.get(cateNo);
				} else {
					category = new Category(cateNo, rs.getString("cateName"));
					cateMap.put(cateNo, category);
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
		} finally {
			DbUtil.dbClose(rs, ps, con);
		}

		if (list.size() == 0)
			throw new Exception("검색결과가없습니다");

		return list;
	}

	public List<Event> selectEventByCateNoList(List<Integer> myCateNo, int count) throws Exception {
		List<Event> list = new ArrayList<>();
		
		Map<Integer, User> userMap = new HashMap<>();
		Map<Integer, Channel> chMap = new HashMap<>();

		Category category = null;
		Channel channel = null;
		User user = null;
		EvTime evTime = null;
		Event event = null;
		
		String sql = pro.getProperty("selectEventByMyCateNoList");
		boolean flag = false;
		sql += " (";
		for(int cateNo : myCateNo) {
			sql += flag ? " OR cateNo="+cateNo : "cateNo="+cateNo;
			flag=true;
		}
		sql += ")";

		try {
			con = DbUtil.getConnection();
			ps = con.prepareStatement(sql);
			
			rs = ps.executeQuery();
			
			int stop = 0;
			while (rs.next()) {
				if(stop>=count)break;
				
				if (category == null) {
					category = new Category(rs.getInt("cateNo"), rs.getString("cateName"));
				}

				int userNo = rs.getInt("userNo");
				if (userMap.containsKey(userNo)) {
					user = userMap.get(userNo);
				} else {
					user = new User(rs.getInt("userNo"), rs.getString("userName"), rs.getString("userPwd"),
							rs.getString("userName"), rs.getString("userAddr"), rs.getString("userPhone"),
							rs.getString("userEmail"), rs.getTimestamp("userJoinDate"), rs.getInt("userStatus"));
					userMap.put(userNo, user);
				}

				int chNo = rs.getInt("chNo");
				if (chMap.containsKey(chNo)) {
					channel = chMap.get(chNo);
				} else {
					channel = new Channel(rs.getInt("chNo"), user, rs.getString("chName"), rs.getString("chImg"),
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
				stop++;
			}

		} finally {
			DbUtil.dbClose(rs, ps, con);
		}

		if (list.size() == 0)
			throw new Exception("검색결과가없습니다");

		return list;
	}
}
