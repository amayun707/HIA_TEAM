package svc;

import vo.CommentBean;

import static db.JdbcUtil.*;

import java.sql.Connection;

import dao.CommentDAO;

public class CommentWriteProService {

	public boolean registArticle(CommentBean cBean) {
		Connection con = getConnection();
		CommentDAO cDAO = CommentDAO.getInstance();
		cDAO.setConnection(con);
		
		boolean isWriteSuccess = false;
		
		int insertCount = cDAO.insertArticle(cBean);
		
		if(insertCount > 0) {
			commit(con);
			isWriteSuccess = true;
		} else {
			rollback(con);
		}
		
		close(con);
		
		return isWriteSuccess;
	}

}
