package svc;

import java.sql.Connection;
import java.util.ArrayList;

import dao.OrderDAO;
import vo.PaymentBean;

import static db.JdbcUtil.*;

public class ReceiptListService {

	public static ArrayList<PaymentBean> getReceiptList() {
		
		Connection con = getConnection();
		OrderDAO orderDAO = OrderDAO.getInstance();
		orderDAO.setConnection(con);
		
		ArrayList<PaymentBean> receiptList = null;
		receiptList = orderDAO.selectReceiptList();
		
		close(con);
		
		return receiptList;
	}

}
