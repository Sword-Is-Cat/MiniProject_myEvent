package kosta.mvc.vo;

public class Book {
	private int bookNo;
	private User user;
	private Event event;
	private long bookTime;
	private int bookStatus;
	
	public Book() {}

	/**
	 * 에약목록 삽입용
	 * @param user
	 * @param event
	 */
	public Book(User user, Event event) {
		super();
		this.user = user;
		this.event = event;
	}

	public Book(int bookNo, User user, Event event, long bookTime, int bookStatus) {
		this(user, event);
		this.bookNo = bookNo;
		this.bookTime = bookTime;
		this.bookStatus = bookStatus;
	}

	public int getBookNo() {
		return bookNo;
	}

	public void setBookNo(int bookNo) {
		this.bookNo = bookNo;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Event getEvent() {
		return event;
	}

	public void setEvent(Event event) {
		this.event = event;
	}

	public long getBookTime() {
		return bookTime;
	}

	public void setBookTime(long bookTime) {
		this.bookTime = bookTime;
	}

	public int getBookStatus() {
		return bookStatus;
	}

	public void setBookStatus(int bookStatus) {
		this.bookStatus = bookStatus;
	};
	
	
	
}
