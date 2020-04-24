package kosta.mvc.service;

import java.sql.SQLException;

import kosta.mvc.model.dao.ChannelDAO;
import kosta.mvc.vo.Channel;

public class ChannelService {
	
	private static ChannelDAO ChanDAO = new ChannelDAO();

	public static void insertChannel(Channel chan) throws SQLException {
		int result = ChanDAO.insertChannel(chan);
		if(result == 0) throw new SQLException("등록되지 않았습니다.");
	}
}
