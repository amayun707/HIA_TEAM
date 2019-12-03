package svc;

import static db.JdbcUtil.*;

import java.sql.Connection;

import dao.CafeDAO;
public class InsertCartService {


	public void insertCart(int[] item, int[] count, String id) {
		System.out.println("InsertCartService");

		
		Connection con = null;
		con = getConnection();
		
		CafeDAO cafeDAO = CafeDAO.getInstance();
		cafeDAO.setConnection(con);
		
		int deleteCount = cafeDAO.deleteCart(id);
		if(deleteCount>0) {
			commit(con);
		} else {
			rollback(con);
		}
		
		boolean isInsertSuccess = cafeDAO.insertCart(item, count, id);
		if(isInsertSuccess) {
			commit(con);
		}else {
			rollback(con);
		}
		
		close(con);
	}

	public void deleteCart(String id) {
		System.out.println("InsertCartService");
		
		Connection con = null;
		con = getConnection();
		
		CafeDAO cafeDAO = CafeDAO.getInstance();
		cafeDAO.setConnection(con);
		
		int deleteCount = cafeDAO.deleteCart(id);
		if(deleteCount>0) {
			commit(con);
		} else {
			rollback(con);
		}
		close(con);
	}
}
