package kosta.mvc.vo;

public class ChannelVO {
	private int chNo;
	private Users user;
	private String chName;
	private String chlmg;
	private int chStatus;
	private String chDescription;
	
	
	public ChannelVO(){}
	
	// ä�� �̹��� ���� ���ε� ����
	public ChannelVO(int chNo, Users user, String chName, int chStatus, String chDescription) {
		super();
		this.chNo = chNo;
		this.user = user;
		this.chName = chName;
		this.chStatus = chStatus;
		this.chDescription = chDescription;
	}
	
	// ä�� �̹��� ���� ���ε� ����
	public ChannelVO(int chNo, Users user, String chName, String chlmg, int chStatus, String chDescription) {
		super();
		this.chNo = chNo;
		this.user = user;
		this.chName = chName;
		this.chlmg = chlmg;
		this.chStatus = chStatus;
		this.chDescription = chDescription;
	}

	public int getChNo() {
		return chNo;
	}

	public void setChNo(int chNo) {
		this.chNo = chNo;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	public String getChName() {
		return chName;
	}

	public void setChName(String chName) {
		this.chName = chName;
	}

	public String getChlmg() {
		return chlmg;
	}

	public void setChlmg(String chlmg) {
		this.chlmg = chlmg;
	}

	public int getChStatus() {
		return chStatus;
	}

	public void setChStatus(int chStatus) {
		this.chStatus = chStatus;
	}

	public String getChDescription() {
		return chDescription;
	}

	public void setChDescription(String chDescription) {
		this.chDescription = chDescription;
	}
	
}
