package kosta.mvc.vo;

public class EvBoard {
	private int evBoardNo;
	private Event event;
	private User user;
	private int evBoardParentNo;
	private String evBoardContent;
	private long evBoardTime;
	private int evBoardStatus;
	
	public EvBoard() {};
	
	
	/**
	 * QNA보드 글 작성용
	 * @param event
	 * @param user
	 * @param evBoardParentNo
	 * @param evBoardContent
	 */
	public EvBoard(Event event, User user, int evBoardParentNo, String evBoardContent) {
		super();
		this.event = event;
		this.user = user;
		this.evBoardParentNo = evBoardParentNo;
		this.evBoardContent = evBoardContent;
	}



	public EvBoard(int evBoardNo, Event event, User user, int evBoardParentNo, String evBoardContent, long evBoardTime,
			int evBoardStatus) {
		this(event, user, evBoardParentNo, evBoardContent);
		this.evBoardNo = evBoardNo;
		this.evBoardTime = evBoardTime;
		this.evBoardStatus = evBoardStatus;
	}


	public int getEvBoardNo() {
		return evBoardNo;
	}


	public void setEvBoardNo(int evBoardNo) {
		this.evBoardNo = evBoardNo;
	}


	public Event getEvent() {
		return event;
	}


	public void setEvent(Event event) {
		this.event = event;
	}


	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}


	public int getEvBoardParentNo() {
		return evBoardParentNo;
	}


	public void setEvBoardParentNo(int evBoardParentNo) {
		this.evBoardParentNo = evBoardParentNo;
	}


	public String getEvBoardContent() {
		return evBoardContent;
	}


	public void setEvBoardContent(String evBoardContent) {
		this.evBoardContent = evBoardContent;
	}


	public long getEvBoardTime() {
		return evBoardTime;
	}


	public void setEvBoardTime(long evBoardTime) {
		this.evBoardTime = evBoardTime;
	}


	public int getEvBoardStatus() {
		return evBoardStatus;
	}


	public void setEvBoardStatus(int evBoardStatus) {
		this.evBoardStatus = evBoardStatus;
	}
	
	
	
	
}
