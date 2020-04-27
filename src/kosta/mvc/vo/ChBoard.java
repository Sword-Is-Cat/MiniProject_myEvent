package kosta.mvc.vo;

public class ChBoard {
	private int chBoardNo;
	private User user;
	private Channel channel;
	private String chBoardContent;
	private int chBoardStar;
	private int chBoardStatus;
	private long chBoardTime;
	
	public ChBoard() {}

	/**
	 * 채널리뷰 게시용
	 * @param user
	 * @param channel
	 * @param chBoardContent
	 * @param chBoardStar
	 */
	public ChBoard(User user, Channel channel, String chBoardContent, int chBoardStar) {
		super();
		this.user = user;
		this.channel = channel;
		this.chBoardContent = chBoardContent;
		this.chBoardStar = chBoardStar;
	}


	public ChBoard(int chBoardNo, User user, Channel channel, String chBoardContent, int chBoardStar, int chBoardStatus,
			long chBoardTime) {
		this(user, channel, chBoardContent, chBoardStar);
		this.chBoardNo = chBoardNo;
		this.chBoardStatus = chBoardStatus;
		this.chBoardTime = chBoardTime;
	}


	public int getChBoardNo() {
		return chBoardNo;
	}


	public void setChBoardNo(int chBoardNo) {
		this.chBoardNo = chBoardNo;
	}


	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}


	public Channel getChannel() {
		return channel;
	}


	public void setChannel(Channel channel) {
		this.channel = channel;
	}


	public String getChBoardContent() {
		return chBoardContent;
	}


	public void setChBoardContent(String chBoardContent) {
		this.chBoardContent = chBoardContent;
	}


	public int getChBoardStar() {
		return chBoardStar;
	}


	public void setChBoardStar(int chBoardStar) {
		this.chBoardStar = chBoardStar;
	}


	public int getChBoardStatus() {
		return chBoardStatus;
	}


	public void setChBoardStatus(int chBoardStatus) {
		this.chBoardStatus = chBoardStatus;
	}


	public long getChBoardTime() {
		return chBoardTime;
	}


	public void setChBoardTime(long chBoardTime) {
		this.chBoardTime = chBoardTime;
	}
	
	
	
	
}
