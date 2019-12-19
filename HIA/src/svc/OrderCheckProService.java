package svc;

import static db.JdbcUtil.*;

import java.sql.Connection;

import dao.OrderDAO;

public class OrderCheckProService {

	public int ordercheck(int pay_num) {
		System.out.println("OrderCheckProService");
		Connection con = getConnection();
		OrderDAO orderDAO = OrderDAO.getInstance();
		orderDAO.setConnection(con);
		
		int checkResult = orderDAO.orderCheck(pay_num);
		
		if(checkResult > 0) {
			commit(con);
		}
		else {
			rollback(con);
		}
		close(con);
		
		return checkResult;
	}

}
