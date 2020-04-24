package kosta.mvc.vo;

public class Notice {
	private int noticeNo;
	private String noticeSubject;
	private String noticeContent;
	private long noticeTime;
	private int noticeStatus;
	
	public Notice() {}

	/**
	 * 怨듭��궗�빆 寃뚯떆�슜
	 * @param noticeSubject
	 * @param noticeContent
	 */
	public Notice(String noticeSubject, String noticeContent) {
		//super();
		this.noticeSubject = noticeSubject;
		this.noticeContent = noticeContent;
	}


	public Notice(int noticeNo, String noticeSubject, String noticeContent, long noticeTime, int noticeStatus) {
		super();
		this.noticeNo = noticeNo;
		this.noticeSubject = noticeSubject;
		this.noticeContent = noticeContent;
		this.noticeTime = noticeTime;
		this.noticeStatus = noticeStatus;
	}

	public int getNoticeNo() {
		return noticeNo;
	}

	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}

	public String getNoticeSubject() {
		return noticeSubject;
	}

	public void setNoticeSubject(String noticeSubject) {
		this.noticeSubject = noticeSubject;
	}

	public String getNoticeContent() {
		return noticeContent;
	}

	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}

	public long getNoticeTime() {
		return noticeTime;
	}

	public void setNoticeTime(long noticeTime) {
		this.noticeTime = noticeTime;
	}

	public int getNoticeStatus() {
		return noticeStatus;
	}

	public void setNoticeStatus(int noticeStatus) {
		this.noticeStatus = noticeStatus;
	}
	
	
}
