package kosta.mvc.model.dao;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import kosta.mvc.util.DbUtil;
import kosta.mvc.vo.Channel;

public class ChannelDAO {
	Properties pro = new Properties();
	public ChannelDAO() {
		//sqlQuery.properties파일을 로딩하기
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
}

