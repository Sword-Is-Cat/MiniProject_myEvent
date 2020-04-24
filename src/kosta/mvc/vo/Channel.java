package kosta.mvc.vo;

public class Channel {
   private int chNo;
   private User user;
   private String chName;
   private String chImg;
   private int chStatus;
   private String chDescription;
   
   
   public Channel(){}
   
   
   public Channel(User user, String chName, String chImg, String chDescription) {
	super();
	this.user = user;
	this.chName = chName;
	this.chImg = chImg;
	this.chDescription = chDescription;
}


public Channel(int chNo, User user, String chName, String chImg, int chStatus, String chDescription) {
      this(user, chName, chImg, chDescription);
      this.chNo = chNo;
      this.chStatus = chStatus;
   }

   public int getChNo() {
      return chNo;
   }

   public void setChNo(int chNo) {
      this.chNo = chNo;
   }

   public User getUser() {
      return user;
   }

   public void setUser(User user) {
      this.user = user;
   }

   public String getChName() {
      return chName;
   }

   public void setChName(String chName) {
      this.chName = chName;
   }

   public String getChImg() {
      return chImg;
   }

   public void setChlmg(String chImg) {
      this.chImg = chImg;
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
