package dao;

import java.sql.Connection;

public class MemberDAO {

	private static MemberDAO instance = new MemberDAO();
	private Connection con = null;
	
	private MemberDAO() {}

	public static MemberDAO getInstance() {
		return instance;
	}

	public void setConnection(Connection con) {
		this.con = con;
	}
}
