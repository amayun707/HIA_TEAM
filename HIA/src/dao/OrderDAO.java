package dao;

import java.sql.Connection;

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
}
