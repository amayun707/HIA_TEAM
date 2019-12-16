package action;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.CommentListService;
import vo.ActionForward;
import vo.CommentBean;
import vo.CommentPageInfo;

public class CommentListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int cafe_num = Integer.parseInt(request.getParameter("cafe_num"));
		int nowPage = Integer.parseInt(request.getParameter("page"));
		
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
		
		int commentNowPage1 = commentPageInfo.getCommentPage();
		int commentMaxPage1 = commentPageInfo.getCommentMaxPage();
		int commentStartPage1 = commentPageInfo.getCommentStartPage();
		int commentEndPage1 = commentPageInfo.getCommentEndPage();
		int commentListCount1 = commentPageInfo.getCommentListCount();
		
		request.setAttribute("page", nowPage);
		request.setAttribute("cafe_num", cafe_num);
		
		request.setAttribute("commentList", commentList);
		request.setAttribute("commentPageInfo", commentPageInfo);
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		
		for(int i = 0; i<commentList.size(); i++){
		out.print("<div class=\"wrap-pic-s size-109 bor0 of-hidden m-r-18 m-t-6\">");			
		out.print("<img src=\"images/avatar-01.jpg\" alt=\"AVATAR\">");		
		out.print("</div>");			
		out.print("<div class=\"size-207\">");			
		out.print("<div class=\"flex-w flex-sb-m p-b-17\"  id=\"commentfirst_line\">");		
		out.print("<span class=\"mtext-107 cl2 p-r-20\" id=\"comment_writer\">");
		out.print(commentList.get(i).getComment_id());
		out.print("</span>");	
		if(commentList.get(i).getComment_rating() == 1){
			out.print("<span class=\"fs-18 cl11\">");	
			out.print("<i class=\"zmdi zmdi-star\"></i>");	
			out.print("</span>");	
		} else if(commentList.get(i).getComment_rating() == 2) {
			out.print("<span class=\"fs-18 cl11\">");	
			out.print("<i class=\"zmdi zmdi-star\"></i>");	
			out.print("<i class=\"zmdi zmdi-star\"></i>");
			out.print("</span>");	
		} else if(commentList.get(i).getComment_rating() == 3) {	
			out.print("<span class=\"fs-18 cl11\">");	
			out.print("<i class=\"zmdi zmdi-star\"></i>");	
			out.print("<i class=\"zmdi zmdi-star\"></i>");
			out.print("<i class=\"zmdi zmdi-star\"></i>");
			out.print("</span>");	
		} else if(commentList.get(i).getComment_rating() == 4) {
			out.print("<span class=\"fs-18 cl11\">");	
			out.print("<i class=\"zmdi zmdi-star\"></i>");	
			out.print("<i class=\"zmdi zmdi-star\"></i>");
			out.print("<i class=\"zmdi zmdi-star\"></i>");
			out.print("<i class=\"zmdi zmdi-star\"></i>");
			out.print("</span>");	
		} else if(commentList.get(i).getComment_rating() == 5) {
			out.print("<span class=\"fs-18 cl11\">");	
			out.print("<i class=\"zmdi zmdi-star\"></i>");	
			out.print("<i class=\"zmdi zmdi-star\"></i>");
			out.print("<i class=\"zmdi zmdi-star\"></i>");
			out.print("<i class=\"zmdi zmdi-star\"></i>");
			out.print("<i class=\"zmdi zmdi-star\"></i>");
			out.print("</span>");	
		}	
			out.print("</div>");	
			out.print("<p class=\"stext-102 cl6\" id=\"comment_naeyong\">");
			out.print(commentList.get(i).getComment_content());
			out.print("</p>");
			out.print("</div>");
		}
		
		out.print("<section id=\"pageList\">");
		out.print("<div id=\"pagebutton\">");
		if(commentNowPage1 <= 1) {
		out.printf("<input type=\"button\" value=\"이전\">");
		} else {
			out.printf("<input type=\"button\" value=\"이전\" onclick=\"location.href='cafeDetail.bo?cafe_num="+ cafe_num +"&page=" + (commentNowPage1 -1) +"'\">");
		}
		for(int i = commentStartPage1; i <= commentEndPage1; i++) { 
		if(i == commentNowPage1) { 
			out.printf("["+i+"]");
		} else { 
			out.printf("<a href=\"cafeDetail.bo?cafe_num="+cafe_num+"&page="+i+"\">"+"["+i+"]"+"</a>");
		} 
	} 
	if(commentNowPage1 >= commentMaxPage1) { 
		out.printf("<input type=\"button\" value=\"다음\">");
	} else {
		out.printf("<input type=\"button\" value=\"다음\" onclick=\"location.href='cafeDetail.bo?cafe_num="+cafe_num+"&page="+(commentNowPage1 + 1)+"'\">");
	} 
		out.print("</div>");
		out.printf("</section><br><br><br>");
		
		return null;
		
		
		
	}

}
