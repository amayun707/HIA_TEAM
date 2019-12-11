package svc;

import java.sql.Connection;
import java.util.ArrayList;

import dao.OrderDAO;

import static db.JdbcUtil.*;

import vo.CartBean;

public class PaymentListService {

	public ArrayList<CartBean> getPaymentList(String id) {
		System.out.println("PaymentListService");
		
		Connection con = null;
		con = getConnection();
		
		OrderDAO orderDAO = OrderDAO.getInstance();
		orderDAO.setConnection(con);
		
		ArrayList<CartBean> paymentList = orderDAO.getPaymentList(id);
		
		close(con);
		return paymentList;
	}

}
