package kosta.mvc.vo;

public class FavoriteCate {
	private User user;
	private Category category;
	
	public FavoriteCate() {}

	public FavoriteCate(User user, Category category) {
		this.user = user;
		this.category = category;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}
		
}
