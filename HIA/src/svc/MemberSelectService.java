package svc;

import static db.JdbcUtil.*;

import java.sql.Connection;

import dao.MemberDAO;
import vo.MemberBean;

public class MemberSelectService {

	public MemberBean getMember(String id) {
		
		Connection con = getConnection();
		MemberDAO memberDAO = MemberDAO.getInstance();
		memberDAO.setConnection(con);
		
		MemberBean memberbean = memberDAO.selectMember(id);
		
		close(con);
		
		return memberbean;
	}

}
