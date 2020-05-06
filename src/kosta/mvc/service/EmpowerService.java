package kosta.mvc.service;

import java.sql.SQLException;

import kosta.mvc.model.dao.ManagerDAO;
import kosta.mvc.vo.Manager;

public class EmpowerService {

	private static ManagerDAO mngDAO = new ManagerDAO();
	
	public static void insertChMng(Manager manager) throws SQLException {
		int result = 0;
		result = mngDAO.insertChMng(manager);
		if(result == 0) throw new SQLException("등록되지 않았습니다.");
		
	}

}
