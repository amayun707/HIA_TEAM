package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.sun.xml.internal.ws.Closeable;

import static db.JdbcUtil.*;

import vo.MemberBean;

public class MemberDAO {

	private static MemberDAO instance = new MemberDAO();
	private Connection con = null;
	
	private MemberDAO() {}

	public static MemberDAO getInstance() {
		return instance;
	}

	public void setConnection(Connection con) {
		this.con = con;
	}

	public int insertMember(MemberBean memberbean) {
		
		PreparedStatement pstmt = null;
		
		int insertCount = 0;
		
		try {
			String sql = "INSERT INTO member(id, pass, name, email, phone, address, customer_owner) VALUE(?, ?, ?, ?, ?, ?, ?)";
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, memberbean.getId());
			pstmt.setString(2, memberbean.getPass());
			pstmt.setString(3, memberbean.getName());
			pstmt.setString(4, memberbean.getEmail());
			pstmt.setString(5, memberbean.getPhone());
			pstmt.setString(6, memberbean.getAddress());
			pstmt.setString(7, memberbean.getCustomer_owner());
			
			insertCount = pstmt.executeUpdate();
		} 
		catch (SQLException e) {
			System.out.println("insertMember 오류 - " + e.getMessage());
		}
		finally {
			close(pstmt);
		}
		
		return insertCount;
	}
	
	public int selectMemberLogin(String id, String pass) {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int loginResult = 0;
		
		try {
			String sql = "SELECT id FROM member WHERE id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				
				sql = "SELECT pass FROM member WHERE id=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
					if(pass.equals(rs.getString("pass"))){
						loginResult = 1;
					}
					else{
						loginResult = -1;
					}
				}
			}
		} 
		catch (SQLException e) {
			System.out.println("selectMemberLogin() 오류 - " + e.getMessage());
		}
		finally {
			close(rs);
			close(pstmt);
		}
		
		return loginResult;
	}
	
	public int idcheck(MemberBean memberbean) {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int check = 0;
		
		try {
			con = getConnection();
			String sql = "select * from member where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, memberbean.getId());

			rs = pstmt.executeQuery();
      
			if(rs.next()){
				check = 1;
			}
			else{
				check = 0;
			}
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			close(rs);
			close(pstmt);
		}
		return check;
	}
	
	public MemberBean selectMember(String id) {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MemberBean memberbean = null;
		
		try {
			String sql = "SELECT * FROM member WHERE id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				memberbean = new MemberBean();
				memberbean.setId(rs.getString("id"));
				memberbean.setPass(rs.getString("pass"));
				memberbean.setName(rs.getString("name"));
				memberbean.setEmail(rs.getString("email"));
				memberbean.setPhone(rs.getString("phone"));
				memberbean.setAddress(rs.getString("address"));
				memberbean.setCustomer_owner(rs.getString("customer_owner"));
			}
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			close(rs);
			close(pstmt);
		}
		
		return memberbean;
	}
	
	public int updateMember(MemberBean memberbean) {
		
		PreparedStatement pstmt = null;
		int updateCount = 0;
		
		try {
			String sql = "UPDATE member SET pass=?, name=?, email=?, phone=?, address=? WHERE id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, memberbean.getPass());
			pstmt.setString(2, memberbean.getName());
			pstmt.setString(3, memberbean.getEmail());
			pstmt.setString(4, memberbean.getPhone());
			pstmt.setString(5, memberbean.getAddress());
			pstmt.setString(6, memberbean.getId());
			
			updateCount = pstmt.executeUpdate();
		} 
		catch (SQLException e) {
			System.out.println("updateArticle() 오류 - " + e.getMessage());
		}
		finally {
			close(pstmt);
		}
		
		return updateCount;
	}

	public int deleteMember(String id, String pass) {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int deleteCount = 0;
		
		try {
			String sql = "SELECT id, pass FROM member WHERE id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(pass.equals(rs.getString("pass"))){
					
					sql = "DELETE FROM member WHERE id=?";
					pstmt = con.prepareStatement(sql);
					pstmt.setString(1, id);
					deleteCount = pstmt.executeUpdate();
				}
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			close(pstmt);
		}
		
		return deleteCount;
	}

}
