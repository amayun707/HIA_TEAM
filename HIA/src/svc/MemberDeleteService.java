package svc;

import static db.JdbcUtil.*;

import java.sql.Connection;

import dao.MemberDAO;

public class MemberDeleteService {

	public boolean removeMember(String id, String pass) {
		
		Connection con = getConnection();
		MemberDAO memberDAO = MemberDAO.getInstance();
		memberDAO.setConnection(con);
		boolean isDeleteSuccess = false;
		
		int deleteCount = memberDAO.deleteMember(id, pass);
		
		if(deleteCount > 0) {
			commit(con);
			isDeleteSuccess = true;
		}
		else {
			rollback(con);
		}
		
		close(con);
		
		return isDeleteSuccess;
	}

}
