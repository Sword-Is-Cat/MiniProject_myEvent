package kosta.mvc.controller;
/**
 * 요청 결과에 대한 데이터정보와
 * 결과 view이름과 이동방식에 대한 관리
 * */
public class ModelAndView {
  private boolean isRedirect; //이동방식 (true이면 redirect, false이면 forward)
  private String viewName; //결과뷰이름 
  
  public ModelAndView() {}
  public ModelAndView(boolean isRedirect, String viewName) {
		this.isRedirect = isRedirect;
		this.viewName = viewName;
  }
  
	public boolean isRedirect() {
		return isRedirect;
	}
	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}
	public String getViewName() {
		return viewName;
	}
	public void setViewName(String viewName) {
		this.viewName = viewName;
	}
  
  
}
