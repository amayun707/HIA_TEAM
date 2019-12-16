package dao;

import static db.JdbcUtil.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import vo.CommentBean;

public class CommentDAO {
	private CommentDAO() {}
	private static CommentDAO instance;
	public static CommentDAO getInstance() {
		if(instance==null) {
			instance = new CommentDAO();
		}
		return instance;
	}
	Connection con;
	
	public void setConnection(Connection con) {
		this.con = con;
	}
// =================================================================================================================================
	public int insertArticle(CommentBean cBean) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int num = 0;
		int insertCount = 0;
		
		try {
			String sql = "SELECT MAX(comment_num) FROM comment";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				num = rs.getInt(1) + 1;
			} else {
				num = 1;
			}
			
			sql = "INSERT INTO comment VALUES(?,?,?,?,?,now(),?,?,?,?)";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setInt(2, cBean.getCafe_num_ref());
			pstmt.setString(3, cBean.getComment_id());
			pstmt.setString(4, cBean.getComment_content());
			pstmt.setInt(5, cBean.getComment_readcount());
			pstmt.setInt(6, cBean.getComment_ref());
			pstmt.setInt(7, cBean.getComment_lev());
			pstmt.setInt(8, cBean.getComment_seq());
			pstmt.setInt(9, cBean.getComment_rating());
			
			insertCount = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("CommentDAO : insertArticle() " + e.getMessage());
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return insertCount;
	}
	public int selectCommentCount(int cafe_num) {
		int commentCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "SELECT count(*) FROM comment WHERE cafe_num_ref=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, cafe_num);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				commentCount = rs.getInt(1);
			} 
		} catch (SQLException e) {
			System.out.println("CommentDAO : getCommentCount() 오류 " + e.getMessage());
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return commentCount;
	}
	public ArrayList<CommentBean> selectCommentList(int cafe_num, int commentPage, int commentLimit) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList<CommentBean> commentList = new ArrayList<CommentBean>();
		
		int startRow = (commentPage-1) * 10 ;
		
		try {
			String sql = "SELECT * FROM comment WHERE cafe_num_ref=? ORDER BY comment_num desc LIMIT ?,?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, cafe_num);
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, commentLimit);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				CommentBean cBean = new CommentBean();
				
				cBean.setComment_num(rs.getInt("comment_num"));
				cBean.setCafe_num_ref(cafe_num);
				cBean.setComment_id(rs.getString("comment_id"));
				cBean.setComment_content(rs.getString("comment_content"));
				cBean.setComment_readcount(rs.getInt("comment_readcount"));
				cBean.setComment_date(rs.getDate("comment_date"));
				cBean.setComment_ref(rs.getInt("comment_ref"));
				cBean.setComment_lev(rs.getInt("comment_lev"));
				cBean.setComment_seq(rs.getInt("comment_seq"));
				cBean.setComment_rating(rs.getInt("comment_rating"));
				
				commentList.add(cBean);
			}
		} catch (SQLException e) {
			System.out.println("CommentDAO : selectCommnetList() 오류 ! " + e.getMessage());
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return commentList;
	}
	
	
	
	
	
	
	
	
}
