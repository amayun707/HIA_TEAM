package svc;

import static db.JdbcUtil.*;

import java.sql.Connection;
import java.sql.Date;

import dao.OrderDAO;

public class InsertPaymentService {

	public int insertPayment(String id, String getTime, int cost) {
		System.out.println("InsertPaymentService");
		
		Connection con = getConnection();
		
		OrderDAO orderDAO = OrderDAO.getInstance();
		orderDAO.setConnection(con);
		
		int[] insertCount = orderDAO.insertPayment(id, getTime, cost);
		
		if(insertCount[1]>0) {
			orderDAO.updateCart(id,insertCount[0]);
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);
		
		return insertCount[0];
	}
//	public int insertPayment(String id, int cost) {
//		System.out.println("InsertPaymentService");
//		
//		Connection con = getConnection();
//		
//		OrderDAO OrderDAO = OrderDAO.getInstance();
//		OrderDAO.setConnection(con);
//		
//		int[] insertCount = OrderDAO.insertPayment(id, cost);
//		
//		if(insertCount[0]>0) {
//			OrderDAO.updateCart(id,insertCount[1]);
//			commit(con);
//		} else {
//			rollback(con);
//		}
//		
//		close(con);
//		
//		return insertCount[0];
//	}
}
