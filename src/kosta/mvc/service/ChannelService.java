package kosta.mvc.service;

import java.sql.SQLException;
import java.util.List;

import kosta.mvc.model.dao.ChannelDAO;
import kosta.mvc.vo.Channel;
import kosta.mvc.vo.User;

public class ChannelService {
	
	private static ChannelDAO ChanDAO = new ChannelDAO();

	public static void insertChannel(Channel chan) throws SQLException {
		int result = 0;
		result = ChanDAO.insertChannel(chan);
		if(result == 0) throw new SQLException("등록되지 않았습니다.");
	}

	public static List<Channel> selectAll() throws SQLException {
		List<Channel> list = ChanDAO.selectAllChannel();
		return list;
	}

	public static Channel selectByChNo(int chNo, boolean state, User userId) throws SQLException{
		Channel dbChannel = ChanDAO.selectByChNo(chNo, userId);
		if(dbChannel==null) throw new SQLException("채널이 없습니다.");
		return dbChannel;
	}

}
