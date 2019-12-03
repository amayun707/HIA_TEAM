package svc;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import dao.CafeDAO;
import vo.CartBean;

import static db.JdbcUtil.*;
public class CartListService {

	public ArrayList getCartList() {
		
		Connection con = getConnection();
		
		CafeDAO cafeDAO = CafeDAO.getInstance();
		cafeDAO.setConnection(con);
		
		ArrayList<CartBean>  cartList = null;
		cartList = cafeDAO.getCartList();
		
		close(con);
		return cartList;
	}

}