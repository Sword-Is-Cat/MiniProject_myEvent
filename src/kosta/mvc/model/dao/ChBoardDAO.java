package kosta.mvc.model.dao;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;
import java.io.InputStream;
import java.sql.Connection;

import kosta.mvc.util.DbUtil;
import kosta.mvc.vo.ChBoard;

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
		System.out.println("DAO 도착, try 가기 전");
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

}
