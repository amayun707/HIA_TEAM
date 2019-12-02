package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
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
			String sql = "select count(b.cafe_num) from coffee a, cafe b where a.cafe_num = b.cafe_num and a.coffee_name=? and b.cafe_name like ?";
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
			String sql = "select cafe_num, cafe_name, cafe_file, cafe_location from cafe where cafe_name like ? limit ?,?";
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
			String sql = "select a.cafe_num,a.cafe_name,a.cafe_file,a.cafe_location from cafe a, coffee b where a.cafe_num = b.cafe_num and b.coffee_name = ? and a.cafe_name like ? limit ?,?";
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
		System.out.println(2);
		return cafeBean;
	}

	//=====================================================================================================================

	public int getCoffeeListCount(int cafe_num, String search, String category) {
		System.out.println("CafeDAO-getCoffeeListCount");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int listCount = 0;
		
		try {
			String sql = "select count(*) from coffee where cafe_num=? and coffee_name like ? and coffee_category like ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, cafe_num);
			pstmt.setString(2, "%"+search+"%");
			pstmt.setString(3, "%"+category+"%");
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
		System.out.println("CafeDAO-getCoffeeListCount");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int listCount = 0;
		
		try {
			String sql = "select count(*) from coffee where coffee_name like ? and coffee_category like ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "%"+search+"%");
			pstmt.setString(2, "%"+category+"%");
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

	public ArrayList getCoffeeList(int page, int limit, int cafe_num, String search, String category) {
		System.out.println("CafeDAO-getCoffeeList");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int startRow = (page -1) * 10;
		ArrayList coffeeList = null;
		
		try {
			String sql="select coffee_file,coffee_name,price,coffee_num,cafe_num,coffee_category from coffee where cafe_num=? and coffee_name like ? and coffee_category like ? limit ?,?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, cafe_num);
			pstmt.setString(2, "%"+search+"%");
			pstmt.setString(3, "%"+category+"%");
			pstmt.setInt(4, startRow);
			pstmt.setInt(5, limit);
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
		System.out.println("CafeDAO-getCoffeeList");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int startRow = (page -1) * 10;
		ArrayList coffeeList = null;
		
		try {
			String sql="select coffee_file,coffee_name,price,coffee_num, cafe_num, coffee_category from coffee where coffee_name like ? and coffee_category like ? limit ?,?";
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
				coffeeBean.setPrice(rs.getInt("price"));
				coffeeBean.setCoffee_num(rs.getInt("coffee_num"));
				coffeeBean.setCafe_num(rs.getInt("cafe_num"));
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

	public int getReBoardListCount(int cafe_num) {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int listCount = 0;
		
		
		try {
			String sql = "select count(*) from review where cafe_num=?";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, cafe_num);
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

	public ArrayList getReBoardList(int page, int limit, int cafe_num) {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int startRow = (page -1) * 10;
		
		ArrayList reviewBoardList = null;
		
		try {
			
			String sql="select review_num,id,review,rating,cafe_num from review where cafe_num=? limit ?,?";
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, cafe_num);
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, limit);
			
			rs = pstmt.executeQuery();
			
			reviewBoardList = new ArrayList();
			
			while(rs.next()) {
				
				ReviewBean reviewBean = new ReviewBean();
				
				reviewBean.setReview_num(rs.getInt("review_num"));
				reviewBean.setId(rs.getString("id"));
				reviewBean.setReview(rs.getString("review"));
				reviewBean.setRating(rs.getInt("rating"));
				reviewBean.setCafe_num(rs.getInt("cafe_num"));
				
				reviewBoardList.add(reviewBean);
				
			}
			
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return reviewBoardList;
		
	}

	//=====================================================================================================================
	
	public boolean insertCart(int[] item) {
		System.out.println("CafeDAO-insertCart");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		boolean isInsertSuccess = false;
		int num = 0;
		int cafe_num = 0;
		int coffee_num = 0;
		int price = 0;
		String sql;
		try {
			sql = "select max(cart_num) from cart";
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
		for(int i : item) {
			isInsertSuccess = false;
			try {
				sql = "select coffee_num from cart where pay_num=1 and coffee_num=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, i);
				rs = pstmt.executeQuery();
				if(!rs.next()) {
					sql = "select cafe_num, coffee_num, price from coffee where coffee_num =?";
					pstmt = con.prepareStatement(sql);
					pstmt.setInt(1, i);
					rs = pstmt.executeQuery();
					if(rs.next()){
						cafe_num = rs.getInt("cafe_num");
						coffee_num = rs.getInt("coffee_num");
						price = rs.getInt("price");
					}
					sql = "insert into cart values(?,?,?,?,?,?,?)";
					pstmt = con.prepareStatement(sql);
					pstmt.setInt(1,num);
					pstmt.setInt(2, 1);
					pstmt.setInt(3, cafe_num);
					pstmt.setInt(4, coffee_num);
					pstmt.setInt(5, price);
					pstmt.setInt(6, 1);
					pstmt.setString(7, null);
					int insertCount = pstmt.executeUpdate();
					if(insertCount>0) {
						isInsertSuccess = true;
					}
					num+=1;
				}
			} catch (SQLException e) {
				System.out.println("Exception : "+e.getMessage());
			}
		}
		return isInsertSuccess;
	}
	//=====================================================================================================================
	
	public ArrayList<CartBean> getCartList() {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select coffee_num, cafe_num, price, amount from cart";
		ArrayList cartList = new ArrayList();
		
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				CartBean cartBean = new CartBean();
				cartBean.setCafe_num(rs.getInt("cafe_num"));
				cartBean.setCoffee_num(rs.getInt("coffee_num"));
				cartBean.setPrice(rs.getInt("price"));
				cartBean.setAmount(rs.getInt("amount"));
				cartList.add(cartBean);
			}
		} catch (SQLException e) {
			System.out.println("Exception : "+e.getMessage());
		}
		return cartList;
	}

//=====================================================================================================================
}
