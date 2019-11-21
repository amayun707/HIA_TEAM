package svc;

import static db.JdbcUtil.*;
import static db.JdbcUtil.commit;
import static db.JdbcUtil.getConnection;
import static db.JdbcUtil.rollback;

import java.sql.Connection;

import dao.MemberDAO;
import vo.MemberBean;

public class MemberIDcheckService {

	public boolean idcheckMember(MemberBean memberbean) {
		
		boolean isIDcheck = false;
		
		Connection con = getConnection();
		MemberDAO memberDAO = MemberDAO.getInstance();
		memberDAO.setConnection(con);
		
		int checkCount = memberDAO.idcheck(memberbean);
		
		if(checkCount > 0) {
			commit(con);
			isIDcheck = true;
		}
		else {
			rollback(con);
		}
		close(con);
		
		return isIDcheck;
	}

}
