package svc;

import java.sql.Connection;
import java.util.ArrayList;

import dao.CafeDAO;
import vo.CafeBean;

import static db.JdbcUtil.*;

public class CafeListService {
	
	public int getCafeListCount(String search) {
		System.out.println("CafeListService-getCafeListCount");
		
		Connection con = getConnection();
		CafeDAO cafeDAO = CafeDAO.getInstance();
		cafeDAO.setConnection(con);
		
		int listCount = 0;
		listCount = cafeDAO.getCafeListCount(search);
		
		close(con);
		
		return listCount;
	}

	public int getCafeListCount(String coffee_name, String search, int price) {
		System.out.println("CafeListService-getCafeListCount");
		
		Connection con = getConnection();
		CafeDAO cafeDAO = CafeDAO.getInstance();
		cafeDAO.setConnection(con);
		
		int listCount = 0;
		listCount = cafeDAO.getCafeListCount(coffee_name, search, price);
		
		close(con);
		
		return listCount;
	}
	
	public ArrayList<CafeBean> getCafeList(int page, int limit, String search, String sortBy) {
		System.out.println("CafeListService-getCafeList");
		
		Connection con = getConnection();
		CafeDAO cafeDAO = CafeDAO.getInstance();
		cafeDAO.setConnection(con);
		
		ArrayList cafeList = null;
		cafeList = cafeDAO.getCafeList(page,limit,search,sortBy);
		
		close(con);
		
		return cafeList;
	}

	public ArrayList<CafeBean> getCafeList(int page, int limit, String coffee_name, String search, String sortBy, int price) {
		System.out.println("CafeListService-getCafeList");
		
		Connection con = getConnection();
		CafeDAO cafeDAO = CafeDAO.getInstance();
		cafeDAO.setConnection(con);
		
		ArrayList cafeList = null;
		cafeList = cafeDAO.getCafeList(page,limit,coffee_name,search,sortBy,price);
		
		close(con);
		return cafeList;
	}



	
	
	//==================================================================================
	
}
