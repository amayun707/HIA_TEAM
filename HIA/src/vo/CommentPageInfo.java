package vo;

public class CommentPageInfo {
	// 페이징 처리 관련 정보를 저장하는 클래스
		private int commentPage;
		private int commentMaxPage;
		private int commentStartPage;
		private int commentEndPage;
		private int commentListCount;
		
		
		public CommentPageInfo() {}
		
		public CommentPageInfo(int commentPage, int commentMaxPage, int commentStartPage, int commentEndPage,
				int commentListCount) {
			super();
			this.commentPage = commentPage;
			this.commentMaxPage = commentMaxPage;
			this.commentStartPage = commentStartPage;
			this.commentEndPage = commentEndPage;
			this.commentListCount = commentListCount;
		}


		public int getCommentPage() {
			return commentPage;
		}
		public void setCommentPage(int commentPage) {
			this.commentPage = commentPage;
		}
		public int getCommentMaxPage() {
			return commentMaxPage;
		}
		public void setCommentMaxPage(int commentMaxPage) {
			this.commentMaxPage = commentMaxPage;
		}
		public int getCommentStartPage() {
			return commentStartPage;
		}
		public void setCommentStartPage(int commentStartPage) {
			this.commentStartPage = commentStartPage;
		}
		public int getCommentEndPage() {
			return commentEndPage;
		}
		public void setCommentEndPage(int commentEndPage) {
			this.commentEndPage = commentEndPage;
		}
		public int getCommentListCount() {
			return commentListCount;
		}
		public void setCommentListCount(int commentListCount) {
			this.commentListCount = commentListCount;
		}
		

}
