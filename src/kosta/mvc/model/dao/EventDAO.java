package kosta.mvc.model.dao;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

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
	
	public int insertEvent(EventDAO event) {
		
		
		return 0;
	}
}
