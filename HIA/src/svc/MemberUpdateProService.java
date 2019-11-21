package svc;

import static db.JdbcUtil.*;

import java.sql.Connection;

import dao.MemberDAO;
import vo.MemberBean;

public class MemberUpdateProService {

	public boolean updateMember(MemberBean memberbean) {
		
		Connection con = getConnection();
		MemberDAO memberDAO = MemberDAO.getInstance();
		memberDAO.setConnection(con);
		
		boolean isUpdateSucess = false;
		
		int updateCount = memberDAO.updateMember(memberbean);
		
		if(updateCount > 0) {
			isUpdateSucess = true;
			commit(con);
		}
		else {
			rollback(con);
		}
				
		close(con);
		
		return isUpdateSucess;
	}

}
