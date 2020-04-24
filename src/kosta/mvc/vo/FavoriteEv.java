package kosta.mvc.vo;

public class FavoriteEv {
	private User user;
	private Event event;
	
	public FavoriteEv() {}

	public FavoriteEv(User user, Event event) {
		super();
		this.user = user;
		this.event = event;
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
	};
	
}
