package kosta.mvc.vo;

public class Category {
	private int cateNo;
	private String cateName;
	
	public Category() {}
	
	/**
	 * 가입용
	 * @param cateName
	 */
	public Category(String cateName) {
		this.cateName = cateName;
	}

	public Category(int cateNo, String cateName) {
		super();
		this.cateNo = cateNo;
		this.cateName = cateName;
	}

	public int getCateNo() {
		return cateNo;
	}

	public void setCateNo(int cateNo) {
		this.cateNo = cateNo;
	}

	public String getCateName() {
		return cateName;
	}

	public void setCateName(String cateName) {
		this.cateName = cateName;
	};
	
}
