package kosta.mvc.vo;

public class Event {
	public void setEvNo(int evNo) {
		this.evNo = evNo;
	}

	public void setChannel(Channel channel) {
		this.channel = channel;
	}

	private int evNo;
	private Category category;
	private Channel channel;
	private String evName;
	private String evAddr;
	private int evBookMax;
	private String evDescription;
	private String evImg;
	private String evImgDetail;
	private String evPhone;
	private String evEmail;
	private EvTime evTime;
	private int evStatus;

	public Event() {
	}

	public Event(Category category, Channel channel, String evName, String evAddr, int evBookMax, String evDescription,
			String evImg, String evImgDetail, String evPhone, String evEmail, EvTime evTime) {
		super();
		this.category = category;
		this.channel = channel;
		this.evName = evName;
		this.evAddr = evAddr;
		this.evBookMax = evBookMax;
		this.evDescription = evDescription;
		this.evImg = evImg;
		this.evImgDetail = evImgDetail;
		this.evPhone = evPhone;
		this.evEmail = evEmail;
		this.evTime = evTime;
	}

	public Event(int evNo, Category category, Channel channel, String evName, String evAddr, int evBookMax,
			String evDescription, String evImg, String evImgDetail, String evPhone, String evEmail, EvTime evTime,
			int evStatus) {
		this(category, channel, evName, evAddr, evBookMax, evDescription, evImg, evImgDetail, evPhone, evEmail, evTime);
		this.evNo = evNo;
		this.evStatus = evStatus;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public String getEvName() {
		return evName;
	}

	public void setEvName(String evName) {
		this.evName = evName;
	}

	public String getEvAddr() {
		return evAddr;
	}

	public void setEvAddr(String evAddr) {
		this.evAddr = evAddr;
	}

	public int getEvBookMax() {
		return evBookMax;
	}

	public void setEvBookMax(int evBookMax) {
		this.evBookMax = evBookMax;
	}

	public String getEvDescription() {
		return evDescription;
	}

	public void setEvDescription(String evDescription) {
		this.evDescription = evDescription;
	}

	public String getEvImg() {
		return evImg;
	}

	public void setEvImg(String evImg) {
		this.evImg = evImg;
	}

	public String getEvImgDetail() {
		return evImgDetail;
	}

	public void setEvImgDetail(String evImgDetail) {
		this.evImgDetail = evImgDetail;
	}

	public String getEvPhone() {
		return evPhone;
	}

	public void setEvPhone(String evPhone) {
		this.evPhone = evPhone;
	}

	public String getEvEmail() {
		return evEmail;
	}

	public void setEvEmail(String evEmail) {
		this.evEmail = evEmail;
	}

	public EvTime getEvTime() {
		return evTime;
	}

	public void setEvTime(EvTime evTime) {
		this.evTime = evTime;
	}

	public int getEvStatus() {
		return evStatus;
	}

	public void setEvStatus(int evStatus) {
		this.evStatus = evStatus;
	}

	public int getEvNo() {
		return evNo;
	}

	public Channel getChannel() {
		return channel;
	}

}
