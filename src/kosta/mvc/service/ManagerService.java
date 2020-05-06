package kosta.mvc.service;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.mvc.controller.Controller;
import kosta.mvc.controller.ModelAndView;
import kosta.mvc.model.dao.ManagerDAO;
import kosta.mvc.vo.ChBoard;
import kosta.mvc.vo.Manager;

public class ManagerService{

	private static ManagerDAO mngDAO = new ManagerDAO();

	public static List<Manager> selectManager(int chNo) throws SQLException {
		List<Manager> dbManager = mngDAO.selectManager(chNo);
		if(dbManager==null) throw new SQLException("채널 리뷰가 없습니다.");
		return dbManager;
	}

}
