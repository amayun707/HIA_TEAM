package dao;

import java.sql.Connection;

public class EventDAO {

	private static EventDAO instance = new EventDAO();
	private Connection con = null;
	
	private EventDAO() {}

	public static EventDAO getInstance() {
		return instance;
	}

	public void setConnection(Connection con) {
		this.con = con;
	}
}
