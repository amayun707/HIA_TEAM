package svc;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import dao.OrderDAO;
import vo.CartBean;

import static db.JdbcUtil.*;
public class CartListService {

	public ArrayList getCartList(String id) {
		System.out.println("CartListService");
		Connection con = getConnection();
		OrderDAO orderDAO = OrderDAO.getInstance();
		orderDAO.setConnection(con);
		ArrayList<CartBean>  cartList = null;
		cartList = orderDAO.getCartList(id);
		close(con);
		return cartList;
	}

}
