package kosta.mvc.service;

import java.sql.SQLException;
import java.util.List;

import kosta.mvc.model.dao.FavoriteCateDAO;
import kosta.mvc.model.dao.UsersDAO;
import kosta.mvc.vo.User;

public class UserService {
	
	private static UsersDAO usersDAO = new UsersDAO();
	private static FavoriteCateDAO favoriteCateDAO = new FavoriteCateDAO();
	
	public static int signUp(User user, List<Integer> cateNo) throws SQLException {
		int result = 0;
		
		//회원가입
		result = usersDAO.insert(user);
		if(result==0)throw new SQLException("회원가입에 실패하였습니다.");
		
		//선호 카테고리 등록
		User newUser = usersDAO.selectById(user.getUserId());
		
		result = favoriteCateDAO.insert(newUser.getUserNo(), cateNo);
		if(result==0 && cateNo.size()>0)throw new SQLException("카테고리 설정에 실패하였습니다.");
		
		return result;
	}
	
	public static int idDuplicationChk(String userId) throws SQLException {
		return usersDAO.idDuplicationChk(userId);
	}

	public static User selectById(String userId) throws SQLException {		
		return usersDAO.selectById(userId);
	}
	
}
