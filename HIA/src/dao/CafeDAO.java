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

	public int getCafeListCount(String coffee_name, String search, int price) {
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

	public ArrayList getCafeList(int page, int limit, String search, String sortBy) {
		System.out.println("CafeDAO-getCafeList");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList cafeList = null;
		int startRow = (page -1) * limit;
		String sql = "";
		try {
			if(sortBy.equals("count")) {
				sql = "select a.cafe_num, a.cafe_name, a.cafe_file, a.cafe_location, count(b.cafe_num) " + 
						"from cafe a " + 
						"left outer join cart b " + 
						"on a.cafe_num = b.cafe_num " +
						"where cafe_name like ? " + 
						"group by a.cafe_num " + 
						"order by count(b.cafe_num) desc ";
			}else {
			sql = "select cafe_num, cafe_name, cafe_file, cafe_location "
					+ "from cafe "
					+ "where cafe_name like ? "
					+ "order by "+sortBy;
			}
			sql += " limit ?,?";
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

	public ArrayList getCafeList(int page, int limit, String coffee_name, String search, String sortBy, int price) {
		System.out.println("CafeDAO-getCafeList2");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList cafeList = null;
		int startRow = (page -1) * limit;
		String sql = "";
		if(!sortBy.equals("count")) {
			if(price==0) {
				sql = "select a.cafe_num, a.cafe_name, a.cafe_file, a.cafe_location, b.price, b.coffee_num, b.coffee_file "
						+ "from cafe a, coffee b "
						+ "where a.cafe_num = b.cafe_num "
						+ "and b.coffee_name = ? "
						+ "and a.cafe_name like ? ";
			} else if(price==5000){
				sql = "select a.cafe_num, a.cafe_name, a.cafe_file, a.cafe_location, b.price, b.coffee_num, b.coffee_file  "
						+ "from cafe a, coffee b "
						+ "where a.cafe_num = b.cafe_num "
						+ "and b.coffee_name = ? "
						+ "and a.cafe_name like ? "
						+ "and price>5000 ";
			} else {
				sql = "select a.cafe_num, a.cafe_name, a.cafe_file, a.cafe_location, b.price, b.coffee_num, b.coffee_file  "
						+ "from cafe a, coffee b "
						+ "where a.cafe_num = b.cafe_num "
						+ "and b.coffee_name = ? "
						+ "and a.cafe_name like ? "
						+ "and price>=? and price<=? ";
			}
			sql+="order by "+sortBy+ " limit ?,?";
		} else {
			if(price==0) {
				sql = "select a.cafe_num, a.cafe_name, a.cafe_file, a.cafe_location, b.price, b.coffee_num, b.coffee_file  "  
						+ "from cafe a join coffee b  "
						+ "on a.cafe_num = b.cafe_num "
						+ "left outer join cart c "
						+ "on a.cafe_num = c.cafe_num "
						+ "where b.coffee_name = ? "
						+ "and a.cafe_name like ? "
						+ "group by a.cafe_num ";
			} else if(price==5000){
				sql = "select a.cafe_num, a.cafe_name, a.cafe_file, a.cafe_location, b.price, b.coffee_num, b.coffee_file  "  
						+ "from cafe a join coffee b  "
						+ "on a.cafe_num = b.cafe_num "
						+ "left outer join cart c "
						+ "on a.cafe_num = c.cafe_num "
						+ "where b.coffee_name = ? "
						+ "and a.cafe_name like ? "
						+ "and b.price>5000 "
						+ "group by a.cafe_num ";
			} else {
				sql = "select a.cafe_num, a.cafe_name, a.cafe_file, a.cafe_location, b.price, b.coffee_num, b.coffee_file  "  
						+ "from cafe a join coffee b  "
						+ "on a.cafe_num = b.cafe_num "
						+ "left outer join cart c "
						+ "on a.cafe_num = c.cafe_num "
						+ "where b.coffee_name = ? "
						+ "and a.cafe_name like ? "
						+ "and b.price>=? and b.price<=? "
						+ "group by a.cafe_num ";
			}
			sql += "order by count(c.cafe_num) desc limit ?, ?";
			
		}
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, coffee_name);
			pstmt.setString(2, "%"+search+"%");
			if(price!=0&price!=5000) {
				pstmt.setInt(3, price);
				pstmt.setInt(4, price+1000);
				pstmt.setInt(5, startRow);
				pstmt.setInt(6, limit);
			} else {
				pstmt.setInt(3, startRow);
				pstmt.setInt(4, limit);
			}
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
				cafeBean.setCoffee_file(rs.getString("coffee_file"));
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
		int startRow = (page -1) * limit;
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
			sql+="order by "+sortBy;
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
		int startRow = (page -1) * limit;
		ArrayList coffeeList = null;
		String sql = "";
			sql="select distinct coffee_file, coffee_name, coffee_category "
					+ "from coffee "
					+ "where coffee_name like ? "
					+ "and coffee_category like ? ";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "%"+search+"%");
			pstmt.setString(2, "%"+category+"%");
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
	
	

	public CafeBean selectCafe(int cafe_num) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		CafeBean cafeBean = null;
		
		try {
			String sql = "SELECT * FROM cafe WHERE cafe_num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, cafe_num);
			rs = pstmt.executeQuery();
			
			// 게시물이 존재할 경우 BoardBean 객체에 모든 데이터 저장
			if(rs.next()) {
				cafeBean = new CafeBean();
				
				cafeBean.setCafe_num(rs.getInt("cafe_num"));
				cafeBean.setCafe_name(rs.getString("cafe_name"));
				cafeBean.setId(rs.getString("id"));
				cafeBean.setCafe_info(rs.getString("cafe_info"));
				cafeBean.setCafe_location(rs.getString("cafe_location"));
				cafeBean.setOpen_time(rs.getString("openTime"));
				cafeBean.setRating(rs.getDouble("rating"));
				cafeBean.setCafe_file(rs.getString("cafe_file"));
			}
		} catch (SQLException e) {
			System.out.println("CafeDAO : getCafe() " + e.getMessage());
		} finally {
			close(rs);
			close(pstmt);
		}
		return cafeBean;
	}
	
//=====================================================================================================================
	
}
