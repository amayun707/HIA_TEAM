package svc;
import static db.JdbcUtil.*;

import java.sql.Connection;
import java.util.ArrayList;

import dao.CafeDAO;
import dao.CommentDAO;
import vo.CommentBean;

public class CommentListService {

	public int getCommentCount(int cafe_num) {
		Connection con = getConnection();
		CommentDAO commentDAO = CommentDAO.getInstance();
		commentDAO.setConnection(con);
		
		int commentCount = commentDAO.selectCommentCount(cafe_num);
		
		close(con);
		return commentCount;
	}

	public ArrayList<CommentBean> getCommentList(int cafe_num, int commentPage, int commentLimit) {
		Connection con = getConnection();
		CommentDAO cDAO = CommentDAO.getInstance();
		cDAO.setConnection(con);
		
		ArrayList<CommentBean> commentList = null;
		commentList = cDAO.selectCommentList(cafe_num, commentPage, commentLimit);
		
		close(con);
		return commentList;
	}

}
