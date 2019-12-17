package svc;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import dao.OrderDAO;
import vo.PaymentBean;

import static db.JdbcUtil.*;

public class ReceiptListService {

	public static List getReceiptList(String id) {
		
		Connection con = getConnection();
		OrderDAO orderDAO = OrderDAO.getInstance();
		orderDAO.setConnection(con);
		
		List receiptList = null;
		receiptList = orderDAO.selectReceiptList(id);
		
		close(con);
		
		return receiptList;
	}

}
