package kosta.mvc.service;

import java.io.File;
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

	public static Channel selectByChNo(int chNo) throws SQLException{
		
		Channel dbChannel = ChanDAO.selectByChNo(chNo);
		if(dbChannel==null) throw new SQLException("채널이 없습니다.");
		return dbChannel;
	}

	public static void updateChannel(Channel channel) throws Exception{
		Channel dbChannel = ChanDAO.selectByChNo(channel.getChNo());
		
		int result = ChanDAO.updateChannel(channel);
		if(result == 0) throw new SQLException("수정 실패했습니다.");
		
	}

	public static void deleteChannel(int chNo, String path) throws SQLException{
		Channel dbChannel = ChanDAO.selectByChNo(chNo);
		
		int result = ChanDAO.deleteChannel(chNo);
		if(result==0) {
			throw new SQLException("삭제 실패했습니다.");
		}
		
		if(dbChannel.getChImg() != null) {
			new File(path, dbChannel.getChImg()).delete();
		}
		
	}

	public static List<Channel> manageChannel(int userNo) throws SQLException {
		List<Channel> dbChannel = ChanDAO.manageChannel(userNo);
		if(dbChannel==null) throw new SQLException("채널이 없습니다.");
		return dbChannel;
	}

}
