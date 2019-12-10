package dao;

import static db.JdbcUtil.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import vo.PaymentBean;

public class OrderDAO {
	
	private static OrderDAO instance = new OrderDAO();
	private Connection con = null;
	
	private OrderDAO() {}

	public static OrderDAO getInstance() {
		return instance;
	}

	public void setConnection(Connection con) {
		this.con = con;
	}

	public ArrayList<PaymentBean> selectReceiptList() {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList<PaymentBean> receiptList = new ArrayList<PaymentBean>();
		
		try {
			//String sql = "select p.pay_num, p.orderTime, p.getTime, p.id, p.cost, c.coffee_num, c.amount from payment p, cart c WHERE p.pay_num = c.pay_num ORDER BY pay_num asc";
			String sql = "select * from payment";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				PaymentBean paymentBean = new PaymentBean();
				paymentBean.setPay_num(rs.getInt("pay_num"));
				paymentBean.setOrderTime(rs.getDate("orderTime"));
				paymentBean.setGetTime(rs.getDate("getTime"));
				paymentBean.setId(rs.getString("id"));
				paymentBean.setCost(rs.getInt("cost"));
				// 추가적인 정보 담을 수 있는 방법...
				
				
				receiptList.add(paymentBean);
			}
		} 
		catch (Exception e) {
			System.out.println("selectReceiptList 오류 - " + e.getMessage());
		}
		finally {
			close(rs);
			close(pstmt);
		}
		
		return receiptList;
	}
}
