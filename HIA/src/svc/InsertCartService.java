package svc;

import static db.JdbcUtil.*;

import java.sql.Connection;

import dao.CafeDAO;
public class InsertCartService {

	public void insertCart(int[] item) {
		// TODO Auto-generated method stub
		System.out.println("InsertCartService");
		
		Connection con = null;
		con = getConnection();
		
		CafeDAO cafeDAO = CafeDAO.getInstance();
		cafeDAO.setConnection(con);
		boolean isInsertSuccess = cafeDAO.insertCart(item);
		if(isInsertSuccess) {
			commit(con);
		}else {
			rollback(con);
		}
		close(con);
	}
}
