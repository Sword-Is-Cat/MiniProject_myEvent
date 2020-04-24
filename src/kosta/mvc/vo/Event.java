package kosta.mvc.vo;

public class Event {
	private int evNo;
	private Category category;
	private Channel channel;
	private String evName;
	private int evPrice;
	private String evAddr;
	private int evBookMax;
	private String evDescription;
	private String evImg;
	private String evImgDetail;
	private String evPhone;
	private String evEmail;
	private EvTime evTime;
	private int evStatus;
	
	public Event() {}
	/**
	 * 행사개설용
	 * @param category
	 * @param channel
	 * @param evName
	 * @param evPrice
	 * @param evAddr
	 * @param evBookMax
	 * @param evDescription
	 * @param evImg
	 * @param evPhone
	 * @param evEmail
	 */
	public Event(Category category, Channel channel, String evName, int evPrice, String evAddr, int evBookMax,
			String evDescription, String evImg, String evImgDetail, String evPhone, EvTime evTime, String evEmail) {
		super();
		this.category = category;
		this.channel = channel;
		this.evName = evName;
		this.evPrice = evPrice;
		this.evAddr = evAddr;
		this.evBookMax = evBookMax;
		this.evDescription = evDescription;
		this.evImg = evImg;
		this.evImgDetail = evImgDetail;
		this.evPhone = evPhone;
		this.evEmail = evEmail;
	}

	public Event(int evNo, Category category, Channel channel, String evName, int evPrice, String evAddr, int evBookMax,
			String evDescription, String evImg, String evImgDetail, String evPhone, String evEmail, EvTime evTime, int evStatus) {
		this(category, channel, evName, evPrice, evAddr, evBookMax,
				evDescription, evImg, evImgDetail, evPhone, evTime, evEmail);
		this.evNo = evNo;
		this.evStatus = evStatus;
	}
	public int getEvNo() {
		return evNo;
	}
	public void setEvNo(int evNo) {
		this.evNo = evNo;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public Channel getChannel() {
		return channel;
	}
	public void setChannel(Channel channel) {
		this.channel = channel;
	}
	public String getEvName() {
		return evName;
	}
	public void setEvName(String evName) {
		this.evName = evName;
	}
	public int getEvPrice() {
		return evPrice;
	}
	public void setEvPrice(int evPrice) {
		this.evPrice = evPrice;
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
	public int getEvStatus() {
		return evStatus;
	}
	public void setEvStatus(int evStatus) {
		this.evStatus = evStatus;
	};
	
}
