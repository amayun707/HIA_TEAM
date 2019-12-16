package action;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import svc.CommentListService;
import svc.CommentWriteProService;
import vo.ActionForward;
import vo.CommentBean;
import vo.CommentPageInfo;
import vo.PageInfo;

public class CommentWriteProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		System.out.println("댓글라이트프로액션");
		ActionForward forward = null;
		CommentBean cBean = null;
		
		int cafe_num = Integer.parseInt(request.getParameter("cafe_num"));
		String nowPage = request.getParameter("page");
		
		cBean = new CommentBean();
		cBean.setCafe_num_ref(cafe_num);
		cBean.setComment_id(request.getParameter("comment_id"));
		cBean.setComment_content(request.getParameter("comment_content"));
		cBean.setComment_rating(Integer.parseInt(request.getParameter("comment_rating")));
		
		
		CommentWriteProService commentWriteProService = new CommentWriteProService();
		boolean isWriteSuccess = commentWriteProService.registArticle(cBean);
		
		request.setAttribute("cafe_num", cafe_num);
		request.setAttribute("page", nowPage);
		
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html; charset=UTF-8");
		if(!isWriteSuccess) { 
			out.println("<script>");
			out.println("alert('댓글 등록 실패!')");
			out.println("history.back()");
			out.println("</script>");
		} else { 
			int commentPage = 1;
			int commentLimit = 10;
			
			
			CommentListService commentListService = new CommentListService();
			int commentListCount = commentListService.getCommentCount(cafe_num);
			
			ArrayList<CommentBean>commentList = new ArrayList<CommentBean>();
			commentList = commentListService.getCommentList(cafe_num,commentPage,commentLimit);
			
			
		}

		
		forward = null;
		return forward;
		
	}

}
