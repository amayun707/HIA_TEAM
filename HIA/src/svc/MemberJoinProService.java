package svc;

import vo.MemberBean;

import static db.JdbcUtil.*;

import java.sql.Connection;

import dao.MemberDAO;

public class MemberJoinProService {

	public boolean registMember(MemberBean memberbean) {
		
		boolean isRegistSucess = false;
		
		Connection con = getConnection();
		MemberDAO memberDAO = MemberDAO.getInstance();
		memberDAO.setConnection(con);
		
		int insertCount = memberDAO.insertMember(memberbean);
		
		if(insertCount > 0) {
			commit(con);
			isRegistSucess = true;
		}
		else {
			rollback(con);
		}
		close(con);
		
		return isRegistSucess;
	}

}
