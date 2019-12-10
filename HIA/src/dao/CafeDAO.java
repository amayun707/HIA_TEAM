package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.json.simple.JSONObject;

import vo.CafeBean;
import vo.CartBean;
import vo.CoffeeBean;
import vo.ReviewBean;

import static db.JdbcUtil.*;

public class CafeDAO {

	private CafeDAO() {}
	private static CafeDAO instance = new CafeDAO();
	public static CafeDAO getInstance() {
		return instance;
	}
	
	//=====================================================================================================================

	Connection con;
	public void setConnection(Connection con) {
		this.con = con;
	}
	
	//=====================================================================================================================

	public int getCafeListCount(String search) {
		System.out.println("CafeDAO-getCafeListCount");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int listCount = 0;
		
		try {
			String sql = "select count(*) from cafe where cafe_name like ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "%"+search+"%");
			rs = pstmt.executeQuery();
			if(rs.next()) {
				listCount = rs.getInt("count(*)");
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			close(rs);
			close(pstmt);
		}
		return listCount;
	}
	
	//=====================================================================================================================

	public int getCafeListCount(String coffee_name, String search) {
		System.out.println("CafeDAO-getCafeListCount2");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int listCount = 0;
		
		try {
			String sql = "select count(b.cafe_num) "
					+ "from coffee a, cafe b "
					+ "where a.cafe_num = b.cafe_num "
					+ "and a.coffee_name=? "
					+ "and b.cafe_name like ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, coffee_name);
			pstmt.setString(2, "%"+search+"%");
			rs = pstmt.executeQuery();
			if(rs.next()) {
				listCount = rs.getInt("count(b.cafe_num)");
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			close(rs);
			close(pstmt);
		}
		return listCount;
	}

	//=====================================================================================================================

	public ArrayList getCafeList(int page, int limit, String search) {
		System.out.println("CafeDAO-getCafeList");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList cafeList = null;
		int startRow = (page -1) * 10;
		
		try {
			String sql = "select cafe_num, cafe_name, cafe_file, cafe_location "
					+ "from cafe "
					+ "where cafe_name like ? limit ?,?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "%"+search+"%");
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, limit);
			rs = pstmt.executeQuery();
			cafeList = new ArrayList();
			while(rs.next()) {
				CafeBean cafeBean = new CafeBean();
				cafeBean.setCafe_num(rs.getInt("cafe_num"));
				cafeBean.setCafe_name(rs.getString("cafe_name"));
				cafeBean.setCafe_file(rs.getString("cafe_file"));
				cafeBean.setCafe_location(rs.getString("cafe_location"));
				cafeList.add(cafeBean);
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			close(rs);
			close(pstmt);
		}
		return cafeList;
	}
	
	//=====================================================================================================================

	public ArrayList getCafeList(int page, int limit, String coffee_name, String search) {
		System.out.println("CafeDAO-getCafeList2");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList cafeList = null;
		int startRow = (page -1) * 10;
		
		try {
			String sql = "select a.cafe_num, a.cafe_name, a.cafe_file, a.cafe_location, b.price, b.coffee_num "
					+ "from cafe a, coffee b "
					+ "where a.cafe_num = b.cafe_num "
					+ "and b.coffee_name = ? "
					+ "and a.cafe_name like ? limit ?,?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, coffee_name);
			pstmt.setString(2, "%"+search+"%");
			pstmt.setInt(3, startRow);
			pstmt.setInt(4, limit);
			rs = pstmt.executeQuery();
			cafeList = new ArrayList();
			while(rs.next()) {
				CafeBean cafeBean = new CafeBean();
				cafeBean.setCafe_num(rs.getInt("cafe_num"));
				cafeBean.setCafe_name(rs.getString("cafe_name"));
				cafeBean.setCafe_file(rs.getString("cafe_file"));
				cafeBean.setCafe_location(rs.getString("cafe_location"));
				cafeBean.setPrice(rs.getInt("price"));
				cafeBean.setCoffee_num(rs.getInt("coffee_num"));
				cafeList.add(cafeBean);
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			close(rs);
			close(pstmt);
		}
		return cafeList;
	}

	//=====================================================================================================================
	
	public JSONObject getCafeDetail(int cafe_num) {
		System.out.println("CafeDAO-getCafeDetail");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		JSONObject cafeBean = null;
		
		try {
			String sql = "select * from cafe where cafe_num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, cafe_num);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				cafeBean = new JSONObject();
				cafeBean.put("cafe_num",rs.getInt("cafe_num"));
				cafeBean.put("cafe_name",rs.getString("cafe_name"));
				cafeBean.put("cafe_info", rs.getString("cafe_info"));
				cafeBean.put("cafe_location", rs.getString("cafe_location"));
				cafeBean.put("cafe_file", rs.getString("cafe_file"));
				cafeBean.put("openTime", rs.getString("openTime"));
				cafeBean.put("rating", rs.getDouble("rating"));
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			close(rs);
			close(pstmt);
		}
		return cafeBean;
	}

	//=====================================================================================================================

	public int getCoffeeListCount(int cafe_num, String search, String category, int price) {
		System.out.println("CafeDAO-getCoffeeListCount");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int listCount = 0;
		String sql = "";
		if(price==0) {
			sql = "select count(*) from coffee "
					+ "where cafe_num=? "
					+ "and coffee_name like ? "
					+ "and coffee_category like ?";
		} else if(price==5000){
			sql = "select count(*) from coffee "
					+ "where cafe_num=? "
					+ "and coffee_name like ? "
					+ "and coffee_category like ? "
					+ "and price > 5000";
		} else {
			sql = "select count(*) from coffee "
					+ "where cafe_num=? "
					+ "and coffee_name like ? "
					+ "and coffee_category like ? "
					+ "and price>=? and price<=?";
		}
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, cafe_num);
			pstmt.setString(2, "%"+search+"%");
			pstmt.setString(3, "%"+category+"%");
			if(price!=0&price!=5000) {
				pstmt.setInt(4, price);
				pstmt.setInt(5, price+1000);
			}
			rs = pstmt.executeQuery();
			if(rs.next()) {
				listCount = rs.getInt("count(*)");
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			close(rs);
			close(pstmt);
		}
		return listCount;
	}
	
	//=====================================================================================================================

	public int getCoffeeListCount(String search, String category) {
		System.out.println("CafeDAO-getCoffeeListCount2");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int listCount = 0;
		String sql = "";
			sql = "select count(distinct coffee_name) "
					+ "from coffee "
					+ "where coffee_name like ? "
					+ "and coffee_category like ?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "%"+search+"%");
			pstmt.setString(2, "%"+category+"%");
			rs = pstmt.executeQuery();
			if(rs.next()) {
				listCount = rs.getInt("count(distinct coffee_name)");
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			close(rs);
			close(pstmt);
		}
		return listCount;
	}
	
	//=====================================================================================================================

	public ArrayList getCoffeeList(int page, int limit, int cafe_num, String search, String category, int price, String sortBy) {
		System.out.println("CafeDAO-getCoffeeList");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int startRow = (page -1) * 10;
		ArrayList coffeeList = null;
		String sql = "";
		if(!sortBy.equals("count")) {
			if(price==0) {
				sql="select a.coffee_file, a.coffee_name, a.price, a.coffee_num, a.cafe_num, a.coffee_category, a.hot_ice, b.cafe_name "
					+ "from coffee a, cafe b "
					+ "where a.cafe_num = b.cafe_num "
					+ "and a.cafe_num=? "
					+ "and a.coffee_name like ? "
					+ "and a.coffee_category like ? ";
			} else if(price==5000){
				sql="select a.coffee_file, a.coffee_name, a.price, a.coffee_num, a.cafe_num, a.coffee_category, a.hot_ice, b.cafe_name "
					+ "from coffee a, cafe b "
					+ "where a.cafe_num = b.cafe_num "
					+ "and a.cafe_num=? "
					+ "and a.coffee_name like ? "
					+ "and a.coffee_category like ? "
					+ "and price>5000 ";
			} else {
				sql="select a.coffee_file, a.coffee_name, a.price, a.coffee_num, a.cafe_num, a.coffee_category, a.hot_ice, b.cafe_name "
					+ "from coffee a, cafe b "
					+ "where a.cafe_num = b.cafe_num "
					+ "and a.cafe_num=? "
					+ "and a.coffee_name like ? "
					+ "and a.coffee_category like ? "
					+ "and price>=? and price<=? ";
			}
			sql+="order by "+sortBy+ " limit ?,?";
		} else {
			if(price==0) {
				sql = "select a.coffee_file, a.coffee_name, a.price, a.coffee_num, a.cafe_num, a.coffee_category, a.hot_ice, "
						+ "b.cafe_name, count(c.coffee_num) count " 
						+ "from coffee a join cafe b " 
						+ "on a.cafe_num = b.cafe_num " 
						+ "left outer join cart c " 
						+ "on a.coffee_num = c.coffee_num " 
						+ "where a.cafe_num = ? " 
						+ "and a.coffee_name like ? "
						+ "and a.coffee_category like ? "
						+ "group by a.coffee_num ";
			} else if(price==5000){
				sql = "select a.coffee_file, a.coffee_name, a.price, a.coffee_num, a.cafe_num, a.coffee_category, a.hot_ice, "
						+ "b.cafe_name, count(c.coffee_num) count " 
						+ "from coffee a join cafe b " 
						+ "on a.cafe_num = b.cafe_num " 
						+ "left outer join cart c " 
						+ "on a.coffee_num = c.coffee_num " 
						+ "where a.cafe_num = ? " 
						+ "and a.coffee_name like ? "
						+ "and a.coffee_category like ? "
						+ "and a.price>5000 "
						+ "group by a.coffee_num ";
			} else {
				sql = "select a.coffee_file, a.coffee_name, a.price, a.coffee_num, a.cafe_num, a.coffee_category, a.hot_ice, "
						+ "b.cafe_name, count(c.coffee_num) count " 
						+ "from coffee a join cafe b " 
						+ "on a.cafe_num = b.cafe_num " 
						+ "left outer join cart c " 
						+ "on a.coffee_num = c.coffee_num " 
						+ "where a.cafe_num = ? " 
						+ "and a.coffee_name like ? "
						+ "and a.coffee_category like ? "
						+ "and a.price>=? and a.price<=? "
						+ "group by a.coffee_num ";
			}
			sql += "order by count desc limit ?, ?";
			
		}
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, cafe_num);
			pstmt.setString(2, "%"+search+"%");
			pstmt.setString(3, "%"+category+"%");
			if(price!=0&price!=5000) {
				pstmt.setInt(4, price);
				pstmt.setInt(5, price+1000);
				pstmt.setInt(6, startRow);
				pstmt.setInt(7, limit);
			} else {
				pstmt.setInt(4, startRow);
				pstmt.setInt(5, limit);
			}
			rs = pstmt.executeQuery();
			coffeeList = new ArrayList();
			while(rs.next()) {
				CoffeeBean coffeeBean = new CoffeeBean();
				coffeeBean.setCoffee_file(rs.getString("coffee_file"));
				coffeeBean.setCoffee_name(rs.getString("coffee_name"));
				coffeeBean.setPrice(rs.getInt("price"));
				coffeeBean.setCoffee_num(rs.getInt("coffee_num"));
				coffeeBean.setCoffee_category(rs.getString("coffee_category"));
				coffeeBean.setCafe_num(cafe_num);
				coffeeBean.setCafe_name(rs.getString("cafe_name"));
				coffeeBean.setHot_ice(rs.getString("hot_ice"));
				coffeeList.add(coffeeBean);
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			close(rs);
			close(pstmt);
		}
		return coffeeList;
	}
	
	//=====================================================================================================================
	
	public ArrayList getCoffeeList(int page, int limit, String search, String category) {
		System.out.println("CafeDAO-getCoffeeList2");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int startRow = (page -1) * 10;
		ArrayList coffeeList = null;
		String sql = "";
			sql="select distinct coffee_file, coffee_name, coffee_category "
					+ "from coffee "
					+ "where coffee_name like ? "
					+ "and coffee_category like ? "
					+ "limit ?,?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "%"+search+"%");
			pstmt.setString(2, "%"+category+"%");
			pstmt.setInt(3, startRow);
			pstmt.setInt(4, limit);
			rs = pstmt.executeQuery();
			coffeeList = new ArrayList();
			while(rs.next()) {
				CoffeeBean coffeeBean = new CoffeeBean();
				coffeeBean.setCoffee_file(rs.getString("coffee_file"));
				coffeeBean.setCoffee_name(rs.getString("coffee_name"));
				coffeeBean.setCoffee_category(rs.getString("coffee_category"));
				coffeeList.add(coffeeBean);
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			close(rs);
			close(pstmt);
		}
		return coffeeList;
	}

//=====================================================================================================================

	public int deleteCart(String id) {
		System.out.println("CafeDAO-deleteCart");
		
		PreparedStatement pstmt = null;
		int deleteCount = 0;
		
		String sql = "delete from cart where id = ? and pay_num = 0";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			deleteCount = pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("Exception : "+e.getMessage());
		} finally {
			close(pstmt);
		}
		return deleteCount;
	}
	
	//=====================================================================================================================
	
	public boolean insertCart(int[] item, int[] count, String id) {
		System.out.println("CafeDAO-insertCart");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		boolean isInsertSuccess = false;
		int num = 0;
		int cafe_num = 0;
		int coffee_num = 0;
		int price = 0;
		int amount = 0;
		String sql = "select max(cart_num) from cart";
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				num = rs.getInt("max(cart_num)")+1;
			} else {
				num = 1;
			}
		} catch (SQLException e) {
			System.out.println("Exception : "+e.getMessage());
		}
		for(int i=0; i<item.length; i++) {
			coffee_num = item[i];
			amount = count[i];
			isInsertSuccess = false;
			try {
					sql = "select cafe_num,  price from coffee where coffee_num =?";
					pstmt = con.prepareStatement(sql);
					pstmt.setInt(1, coffee_num);
					rs = pstmt.executeQuery();
					if(rs.next()){
						cafe_num = rs.getInt("cafe_num");
						price = rs.getInt("price");
					sql = "insert into cart values(?,?,?,?,?,?,?)";
					pstmt = con.prepareStatement(sql);
					pstmt.setInt(1,num);
					pstmt.setInt(2, 0);
					pstmt.setInt(3, cafe_num);
					pstmt.setInt(4, coffee_num);
					pstmt.setInt(5, price);
					pstmt.setInt(6, amount);
					pstmt.setString(7, id);
					int insertCount = pstmt.executeUpdate();
					if(insertCount>0) {
						isInsertSuccess = true;
					}
					num+=1;
				}
			} catch (SQLException e) {
				System.out.println("Exception : "+e.getMessage());
			}  finally {
				close(rs);
				close(pstmt);
			}
		}
		return isInsertSuccess;
	}
	//=====================================================================================================================
	
//	public ArrayList<CartBean> getCartList(String id) {
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//		String sql = "select a.coffee_num, a.cafe_num, a.price, a.amount, b.coffee_name, c.cafe_name "
//				+ "from cart a, coffee b, cafe c "
//				+ "where a.pay_num = 0 and a.coffee_num = b.coffee_num and b.cafe_num = c.cafe_num and a.id = ?";
//		ArrayList cartList = new ArrayList();
//		
//		try {
//			pstmt = con.prepareStatement(sql);
//			pstmt.setString(1, id);
//			rs = pstmt.executeQuery();
//			while(rs.next()) {
//				CartBean cartBean = new CartBean();
//				cartBean.setCafe_num(rs.getInt("cafe_num"));
//				cartBean.setCoffee_num(rs.getInt("coffee_num"));
//				cartBean.setPrice(rs.getInt("price"));
//				cartBean.setAmount(rs.getInt("amount"));
//				cartBean.setCoffee_name(rs.getString("coffee_name"));
//				cartBean.setCafe_name(rs.getString("cafe_name"));
//				cartList.add(cartBean);
//			}
//		} catch (SQLException e) {
//			System.out.println("Exception : "+e.getMessage());
//		}  finally {
//			close(rs);
//			close(pstmt);
//		}
//		return cartList;
//	}
//
//	//=====================================================================================================================
//	
//	public int[] insertPayment(String id, String getTime, int cost) {
//		System.out.println("CafeDAO-insertPayment");
//		
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//		int num = 0;
//		String sql = "select max(pay_num) from payment where id = ?";
//		try {
//			pstmt = con.prepareStatement(sql);
//			pstmt.setString(1, id);
//			rs = pstmt.executeQuery();
//			
//			if(rs.next()) {
//				num = rs.getInt("max(pay_num)")+1;
//			} else {
//				num = 1;
//			}
//		} catch (SQLException e) {
//			System.out.println("Exception : "+e.getMessage());
//		}
//		int[] pay_info = new int[2];
//		pay_info[0] = num;
//		sql = "insert into payment values(?,now(),?,?,?)";
//		int insertCount = 0;
//		try {
//			pstmt = con.prepareStatement(sql);
//			pstmt.setInt(1, num);
//			pstmt.setString(2, getTime);
//			pstmt.setString(3, id);
//			pstmt.setInt(4, cost);
//			insertCount = pstmt.executeUpdate();
//			pay_info[1] = insertCount;
//		} catch (SQLException e) {
//			System.out.println("Exception : "+e.getMessage());
//		}
//		
//		return pay_info;
//	}
//
//	//=====================================================================================================================
//
//	public void updateCart(String id, int pay_num) {
//		System.out.println("CafeDAO-updateCart");
//		
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//		
//		String sql = "update cart set pay_num = ? where id = ? and pay_num=0";
//		try {
//			pstmt = con.prepareStatement(sql);
//			pstmt.setInt(1, pay_num);
//			pstmt.setString(2, id);
//			pstmt.executeUpdate();
//		} catch (SQLException e) {
//			System.out.println("Exception : " + e.getMessage());
//		}
//		
//	}
//	
//	//=====================================================================================================================
//
//	public ArrayList<CartBean> getPaymentList(String id) {
//		System.out.println("CafeDAO-getPaymentList");
//		
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//		String sql = "select a.coffee_name, a.price, b.amount, b.pay_num, c.cafe_name, d.orderTime, d.getTime "
//				+ "from coffee a, cart b, cafe c, payment d "
//				+ "where b.id = ? and b.pay_num>0 and a.coffee_num = b.coffee_num and b.cafe_num = c.cafe_num and b.pay_num = d.pay_num "
//				+ "order by b.pay_num desc;";
//		
//		ArrayList<CartBean> paymentList = null;
//		try {
//			pstmt = con.prepareStatement(sql);
//			pstmt.setString(1, id);
//			rs = pstmt.executeQuery();
//			paymentList = new ArrayList<CartBean>();
//			while(rs.next()) {
//				CartBean cartBean = new CartBean();
//				cartBean.setCafe_name(rs.getString("cafe_name"));
//				cartBean.setCoffee_name(rs.getString("coffee_name"));
//				cartBean.setPrice(rs.getInt("price"));
//				cartBean.setAmount(rs.getInt("amount"));
//				cartBean.setPay_num(rs.getInt("pay_num"));
//				cartBean.setDate(rs.getDate("orderTime"));
//				cartBean.setGetTime(rs.getString("getTime"));
//				paymentList.add(cartBean);
//			}
//		} catch (SQLException e) {
//			System.out.println("Exception : "+e.getMessage());
//		} finally {
//			close(rs);
//			close(pstmt);
//		}
//		return paymentList;
//	}
//	
//	//=====================================================================================================================
//
//	public String getFavoriteList(String id) {
//		System.out.println("CafeDAO-getFavoriteList");
//		
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//		String sql = "select a.coffee_name, count(a.coffee_name) count " + 
//				"from coffee a, cart b " + 
//				"where a.coffee_num = b.coffee_num and b.id = ? " + 
//				"group by a.coffee_name " + 
//				"order by count(a.coffee_name) desc limit 0,3";
//		
//		String favoriteList = "";
//		try {
//			pstmt = con.prepareStatement(sql);
//			pstmt.setString(1, id);
//			rs = pstmt.executeQuery();
//			while(rs.next()) {
//				favoriteList+=rs.getString("coffee_name")+",";
//				favoriteList+=rs.getInt("count")+",";
//			}
//			favoriteList+="/";
//			sql = "select a.cafe_name, count(a.cafe_name) count " + 
//					"from cafe a, cart b " + 
//					"where a.cafe_num = b.cafe_num and b.id = ? " + 
//					"group by a.cafe_name " + 
//					"order by count(a.cafe_name) desc limit 0,3";
//			pstmt = con.prepareStatement(sql);
//			pstmt.setString(1, id);
//			rs = pstmt.executeQuery();
//			while(rs.next()) {
//				favoriteList+=rs.getString("cafe_name")+",";
//				favoriteList+=rs.getInt("count")+",";
//			}
//			favoriteList+="/";
//			sql = "select getTime, count(getTime) count " + 
//					"from payment " + 
//					"where id = ? " + 
//					"order by count(getTime) desc limit 0,3 ";
//			pstmt = con.prepareStatement(sql);
//			pstmt.setString(1, id);
//			rs = pstmt.executeQuery();
//			while(rs.next()) {
//				favoriteList+=rs.getString("getTime")+",";
//				favoriteList+=rs.getInt("count")+",";
//			}
//			favoriteList+="/";
//			sql = "select sum(price*amount) cost from cart where id = ?";
//			pstmt = con.prepareStatement(sql);
//			pstmt.setString(1, id);
//			rs = pstmt.executeQuery();
//			if(rs.next()) {
//				favoriteList+=rs.getInt("cost");
//			}
//		} catch (SQLException e) {
//			System.out.println("Exception : "+e.getMessage());
//		}
//		return favoriteList;
//	}

	
//=====================================================================================================================
	
	
}
