package svc;

import java.sql.Connection;
import java.util.ArrayList;

import dao.OrderDAO;

import static db.JdbcUtil.*;

import vo.CartBean;

public class FavoriteListService {

	public String getFavoriteList(String id) {
		System.out.println("FavoriteListService");
		
		Connection con = null;
		con = getConnection();
		
		OrderDAO orderDAO = OrderDAO.getInstance();
		orderDAO.setConnection(con);
		
		String favoriteList = orderDAO.getFavoriteList(id); 
		
		close(con);
		return favoriteList;
	}
}
