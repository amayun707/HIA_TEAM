package vo;

public class ActionForward {
	// 포워딩 URL 과 포워딩 방식을 저장하는 객체
	
	private String path; // 어느페이지로 가는지 
	private boolean isRedirect; // 가능방식
	
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public boolean isRedirect() {
		return isRedirect;
	}
	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}
	
}
