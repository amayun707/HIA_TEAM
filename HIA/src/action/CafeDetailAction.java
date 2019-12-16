package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.BoardDetailService;
import svc.CommentListService;
import vo.ActionForward;
import vo.CafeBean;
import vo.CommentBean;
import vo.CommentPageInfo;

public class CafeDetailAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int nowPage;
		int cafe_num = Integer.parseInt(request.getParameter("cafe_num"));
		if(request.getParameter("page")==null) {
			 nowPage = 1;
		} else {
			 nowPage = Integer.parseInt(request.getParameter("page"));
		}
//		System.out.println("들어왔나요?"+cafe_num+nowPage);
		
		BoardDetailService boardDetailService = new BoardDetailService();
		CafeBean cafeBean = boardDetailService.getCafe(cafe_num);
		
		// ===================================================================
		
		int commentPage = 1;
		int commentLimit = 10;
		
		if(request.getParameter("page") != null) {
			commentPage = Integer.parseInt(request.getParameter("page"));
		}
		
		CommentListService commentListService = new CommentListService();
		int commentListCount = commentListService.getCommentCount(cafe_num);
		
		ArrayList<CommentBean>commentList = new ArrayList<CommentBean>();
		commentList = commentListService.getCommentList(cafe_num,commentPage,commentLimit);
		
		// 페이징 작업
		int commentMaxPage = (int)((double)commentListCount/commentLimit + 0.95);
				
		int commentStartPage = ((int)((double)commentPage / 10 + 0.95)-1) * 10 + 1;
				
		int commentEndPage = commentStartPage + 10 - 1;
				
		if(commentEndPage > commentMaxPage) {
			commentEndPage = commentMaxPage;
		}
				
		CommentPageInfo commentPageInfo = new CommentPageInfo(commentPage, commentMaxPage, commentStartPage, commentEndPage, commentListCount);
		
		request.setAttribute("page", nowPage);
		request.setAttribute("cafeBean", cafeBean);
		
		request.setAttribute("commentList", commentList);
		request.setAttribute("commentPageInfo", commentPageInfo);
		
		ActionForward forward = new ActionForward();
		forward.setPath("cafe_detail.jsp");
		
		return forward;
	}

}
