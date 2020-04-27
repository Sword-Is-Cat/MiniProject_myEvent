package kosta.mvc.vo;

import java.sql.Timestamp;

public class User {
	private int userNo;
	private String userId;
	private String userPwd;
	private String userName;
	private String userAddr;
	private String userPhone;
	private String userEmail;
	private Timestamp userJoinDate;
	private int userStatus;
	
	public User() {};
	/**
	 * 가입용
	 * @param userId
	 * @param userPwd
	 * @param userName
	 * @param userAddr
	 * @param userPhone
	 * @param userEmail
	 */
	public User(String userId, String userPwd, String userName, String userAddr, String userPhone, String userEmail) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.userAddr = userAddr;
		this.userPhone = userPhone;
		this.userEmail = userEmail;
	}
	public User(int userNo, String userId, String userPwd, String userName, String userAddr, String userPhone,
			String userEmail, Timestamp userJoinDate, int userStatus) {
		this(userId, userPwd, userName, userAddr, userPhone, userEmail);
		this.userNo = userNo;
		this.userJoinDate = userJoinDate;
		this.userStatus = userStatus;
	}
	
	public User(int userNo) {
		this.userNo = userNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserAddr() {
		return userAddr;
	}
	public void setUserAddr(String userAddr) {
		this.userAddr = userAddr;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public Timestamp getUserJoinDate() {
		return userJoinDate;
	}
	public void setUserJoinDate(Timestamp userJoinDate) {
		this.userJoinDate = userJoinDate;
	}
	public int getUserStatus() {
		return userStatus;
	}
	public void setUserStatus(int userStatus) {
		this.userStatus = userStatus;
	}
	
	
}
