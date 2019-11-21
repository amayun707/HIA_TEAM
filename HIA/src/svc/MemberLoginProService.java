package svc;

import java.sql.Connection;

import dao.MemberDAO;
import static db.JdbcUtil.*;

public class MemberLoginProService {

	public int memberLogin(String id, String pass) {
		
		Connection con = getConnection();
		MemberDAO memberDAO = MemberDAO.getInstance();
		memberDAO.setConnection(con);
		
		int loginResult = memberDAO.selectMemberLogin(id, pass);
		
		close(con);
		
		return loginResult;
	}
	
}
