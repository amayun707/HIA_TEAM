package svc;

import java.sql.Connection;
import java.util.ArrayList;

import dao.CafeDAO;
import vo.CafeBean;
import vo.CoffeeBean;

import static db.JdbcUtil.*;

public class CoffeeListService{

	public int getListCount(int cafe_num, String search, String category) {
		System.out.println("CoffeeListService-getListCount");
		
		Connection con = getConnection();
		CafeDAO cafeDAO = CafeDAO.getInstance();
		cafeDAO.setConnection(con);
		
		int listCount = 0;
		listCount = cafeDAO.getCoffeeListCount(cafe_num, search, category);

		close(con);
		
		return listCount;
	}
	
	public int getListCount(String search, String category) {
		System.out.println("CoffeeListService-getListCount");
		
		Connection con = getConnection();
		CafeDAO cafeDAO = CafeDAO.getInstance();
		cafeDAO.setConnection(con);
		
		int listCount = 0;
		listCount = cafeDAO.getCoffeeListCount(search, category);

		close(con);
		
		return listCount;
	}
	
	//====================================================================================================
	
	
	public ArrayList<CoffeeBean> getCoffeeList(int page, int limit, int cafe_num, String search, String category) {
		System.out.println("CoffeeListService-getCoffeeList");
		
		Connection con = getConnection();
		CafeDAO cafeDAO = CafeDAO.getInstance();
		cafeDAO.setConnection(con);
		ArrayList coffeeList = null;
		coffeeList = cafeDAO.getCoffeeList(page,limit,cafe_num,search,category);
		
		close(con);
		
		return coffeeList;
	}

	public ArrayList<CoffeeBean> getCoffeeList(int page, int limit, String search, String category) {
		System.out.println("CoffeeListService-getCoffeeList");
		
		Connection con = getConnection();
		CafeDAO cafeDAO = CafeDAO.getInstance();
		cafeDAO.setConnection(con);
		
		ArrayList coffeeList = null;
		coffeeList = cafeDAO.getCoffeeList(page,limit,search,category);
		
		close(con);
		
		return coffeeList;
	}
}
