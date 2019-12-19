package dao;

import static db.JdbcUtil.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import vo.CartBean;
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

	public List selectReceiptList(String id) {
		System.out.println("OrderDAO-selectReceiptList");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		PaymentBean paymentBean = null;
		
		ArrayList<PaymentBean> receiptList1 = new ArrayList<PaymentBean>();
		ArrayList<PaymentBean> receiptList2 = new ArrayList<PaymentBean>();
		List receiptList = new ArrayList();
		
		try {
			String sql = "select p.pay_num, cf.cafe_name, p.orderTime, p.getTime, p.id, p.cost, c.price, c.amount, co.coffee_name "
					+ "from payment p, cart c, coffee co, cafe cf "
					+ "WHERE p.pay_num=c.pay_num and c.coffee_num=co.coffee_num and c.cafe_num=cf.cafe_num and p.pay_num>0 and cf.id=?"
					+ "GROUP BY p.pay_num ORDER BY pay_num asc";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				paymentBean = new PaymentBean();
				paymentBean.setPay_num(rs.getInt("pay_num"));
				paymentBean.setCafe_name(rs.getString("cafe_name"));
				paymentBean.setOrderTime(rs.getDate("orderTime"));
				paymentBean.setGetTime(rs.getString("getTime"));
				paymentBean.setId(rs.getString("id"));
				paymentBean.setCost(rs.getInt("cost"));
				
				receiptList1.add(paymentBean);
			}
			
			sql = "select p.pay_num, cf.cafe_name, p.orderTime, p.getTime, p.id, p.cost, c.price, c.amount, co.coffee_name "
				+ "from payment p, cart c, coffee co, cafe cf "
				+ "WHERE p.pay_num=c.pay_num and c.coffee_num=co.coffee_num and c.cafe_num=cf.cafe_num and p.pay_num>0 and cf.id=?"
				+ "ORDER BY pay_num asc";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				paymentBean = new PaymentBean();
				paymentBean.setPay_num(rs.getInt("pay_num"));
				paymentBean.setCafe_name(rs.getString("cafe_name"));
				paymentBean.setOrderTime(rs.getDate("orderTime"));
				paymentBean.setGetTime(rs.getString("getTime"));
				paymentBean.setId(rs.getString("id"));
				paymentBean.setCost(rs.getInt("cost"));
				paymentBean.setPrice(rs.getInt("price"));
				paymentBean.setAmount(rs.getInt("amount"));
				paymentBean.setCoffee_name(rs.getString("coffee_name"));
				
				receiptList2.add(paymentBean);
			}
			
			receiptList.add(receiptList1);
			receiptList.add(receiptList2);
			
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
	//=====================================================================================================================
	
	public ArrayList<CartBean> getCartList(String id) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select a.coffee_num, a.cafe_num, a.price, a.amount, b.coffee_file, b.coffee_name, c.cafe_name "
				+ "from cart a, coffee b, cafe c "
				+ "where a.pay_num = 0 and a.coffee_num = b.coffee_num and b.cafe_num = c.cafe_num and a.id = ?";
		ArrayList cartList = new ArrayList();
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				CartBean cartBean = new CartBean();
				cartBean.setCafe_num(rs.getInt("cafe_num"));
				cartBean.setCoffee_num(rs.getInt("coffee_num"));
				cartBean.setCoffee_file(rs.getString("coffee_file"));
				cartBean.setPrice(rs.getInt("price"));
				cartBean.setAmount(rs.getInt("amount"));
				cartBean.setCoffee_name(rs.getString("coffee_name"));
				cartBean.setCafe_name(rs.getString("cafe_name"));
				cartList.add(cartBean);
			}
		} catch (SQLException e) {
			System.out.println("Exception : "+e.getMessage());
		}  finally {
			close(rs);
			close(pstmt);
		}
		return cartList;
	}

	//=====================================================================================================================
	
	public int[] insertPayment(String id, String getTime, int cost) {
		System.out.println("OrderDAO-insertPayment");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int num = 0;
		String sql = "select max(pay_num) from payment";
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				num = rs.getInt("max(pay_num)")+1;
			} else {
				num = 1;
			}
		} catch (SQLException e) {
			System.out.println("Exception : "+e.getMessage());
		}
		int[] pay_info = new int[2];
		pay_info[0] = num;
		sql = "insert into payment values(?,now(),?,?,?)";
		int insertCount = 0;
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, getTime);
			pstmt.setString(3, id);
			pstmt.setInt(4, cost);
			insertCount = pstmt.executeUpdate();
			pay_info[1] = insertCount;
		} catch (SQLException e) {
			System.out.println("Exception : "+e.getMessage());
		}
		
		return pay_info;
	}

	//=====================================================================================================================

	public void updateCart(String id, int pay_num) {
		System.out.println("OrderDAO-updateCart");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "update cart set pay_num = ? where id = ? and pay_num=0";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, pay_num);
			pstmt.setString(2, id);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("Exception : " + e.getMessage());
		}
		
	}
	
	//=====================================================================================================================

	public ArrayList<CartBean> getPaymentList(String id) {
		System.out.println("OrderDAO-getPaymentList");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select a.coffee_name, a.price, a.coffee_file, b.amount, b.pay_num, c.cafe_name, d.orderTime, d.getTime "
				+ "from coffee a, cart b, cafe c, payment d "
				+ "where b.id = ? and b.pay_num>0 and a.coffee_num = b.coffee_num and b.cafe_num = c.cafe_num and b.pay_num = d.pay_num "
				+ "order by b.pay_num desc;";
		
		ArrayList<CartBean> paymentList = null;
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			paymentList = new ArrayList<CartBean>();
			while(rs.next()) {
				CartBean cartBean = new CartBean();
				cartBean.setCafe_name(rs.getString("cafe_name"));
				cartBean.setCoffee_name(rs.getString("coffee_name"));
				cartBean.setPrice(rs.getInt("price"));
				cartBean.setAmount(rs.getInt("amount"));
				cartBean.setPay_num(rs.getInt("pay_num"));
				cartBean.setDate(rs.getDate("orderTime"));
				cartBean.setGetTime(rs.getString("getTime"));
				cartBean.setCoffee_file(rs.getString("coffee_file"));
				paymentList.add(cartBean);
			}
		} catch (SQLException e) {
			System.out.println("Exception : "+e.getMessage());
		} finally {
			close(rs);
			close(pstmt);
		}
		return paymentList;
	}
	
	//=====================================================================================================================

	public String getFavoriteList(String id) {
		System.out.println("OrderDAO-getFavoriteList");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String favoriteList = "";
		String sql = "select id from cart where id = ?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				sql = "select a.coffee_name, count(a.coffee_name) count " + "from coffee a, cart b "
						+ "where a.coffee_num = b.coffee_num and b.id = ? " + "group by a.coffee_name "
						+ "order by count(a.coffee_name) desc limit 0,3";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();
				while (rs.next()) {
					favoriteList += rs.getString("coffee_name") + ",";
					favoriteList += rs.getInt("count") + ",";
				}
				favoriteList += "/";
				sql = "select a.cafe_name, count(a.cafe_name) count " + "from cafe a, cart b "
						+ "where a.cafe_num = b.cafe_num and b.id = ? " + "group by a.cafe_name "
						+ "order by count(a.cafe_name) desc limit 0,3";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();
				while (rs.next()) {
					favoriteList += rs.getString("cafe_name") + ",";
					favoriteList += rs.getInt("count") + ",";
				}
				favoriteList += "/";
				sql = "select getTime, count(getTime) count " + "from payment " + "where id = ? "
						+ "order by count(getTime) desc limit 0,3 ";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();
				while (rs.next()) {
					favoriteList += rs.getString("getTime") + ",";
					favoriteList += rs.getInt("count") + ",";
				}
				favoriteList += "/";
				sql = "select sum(price*amount) cost from cart where id = ?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();
				if (rs.next()) {
					favoriteList += rs.getInt("cost");
				}
			}
		} catch (SQLException e) {
			System.out.println("Exception : "+e.getMessage());
		}
		return favoriteList;
	}
}
