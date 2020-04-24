package kosta.mvc.vo;

public class Manager {
	private Channel channel;
	private User user;
	private int grade;
	
	public Manager() {}

	public Manager(Channel channel, User user, int grade) {
		this.channel = channel;
		this.user = user;
		this.grade = grade;
	}

	public Channel getChannel() {
		return channel;
	}

	public void setChannel(Channel channel) {
		this.channel = channel;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}
	
	
	
}
