package kosta.mvc.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import kosta.mvc.model.dao.FavoriteCateDAO;
import kosta.mvc.model.dao.UsersDAO;
import kosta.mvc.util.DbUtil;
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

	public static int userInfoUpdate(User user, List<Integer> cateNo) throws SQLException {
		int result=0;
		Connection con=null;
		
		try {
		con = DbUtil.getConnection();
		con.setAutoCommit(false);
		

		result = usersDAO.update(con, user);
		if(result==0)throw new SQLException("유저 정보 수정에 실패하였습니다");
		
		result = favoriteCateDAO.delete(user.getUserNo());
		
		result = favoriteCateDAO.insert(con, user.getUserNo(), cateNo);
		
		con.commit();
		}finally {
			DbUtil.dbClose(con);
		}
		return result;
	}

	public static User selectUserNoByUserId(String userId) throws Exception {
		// user 정보 가져오기
		User userInfo = UsersDAO.selectUserNoByUserId(userId);
		return userInfo;
	}
	
}
