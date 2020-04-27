package kosta.mvc.model.dao;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import kosta.mvc.util.DbUtil;
import kosta.mvc.vo.Category;

public class CategoryDAO {
	Connection con;
	Statement st;
	PreparedStatement ps;
	ResultSet rs;
	Properties pro = new Properties();
	
	public CategoryDAO() {

		InputStream input = getClass().getClassLoader().getResourceAsStream("kosta/mvc/model/dao/sqlQuery.properties");
		try {
			pro.load(input);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<Category> selectAll() throws SQLException{
		List<Category> list = new ArrayList<>();
		try {
			String sql=pro.getProperty("cateSelectAll");
			con=DbUtil.getConnection();
			ps=con.prepareStatement(sql);
			
			rs=ps.executeQuery();
			while(rs.next()) {
				list.add(new Category(rs.getInt("cateNo"), rs.getString("cateName")));
			}
			
			return list;
		}finally {
			DbUtil.dbClose(rs, ps, con);
		}
	}
}
