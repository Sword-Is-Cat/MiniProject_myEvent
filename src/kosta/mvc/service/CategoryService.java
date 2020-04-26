package kosta.mvc.service;

import java.sql.SQLException;
import java.util.List;

import kosta.mvc.model.dao.CategoryDAO;
import kosta.mvc.vo.Category;

public class CategoryService {
	private static CategoryDAO cateDAO = new CategoryDAO();
	
	public static List<Category> selectAll() throws SQLException{
		List<Category> list = cateDAO.selectAll();
		
		return list;
	}
}
