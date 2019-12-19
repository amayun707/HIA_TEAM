package svc;

import static db.JdbcUtil.*;

import java.sql.Connection;
import java.util.ArrayList;

import dao.CafeDAO;

public class GraphService {

	public ArrayList getGraph() {
		System.out.println("GraphService-GraphService");

		Connection con = getConnection();

		CafeDAO cafeDAO = CafeDAO.getInstance();
		cafeDAO.setConnection(con);

		ArrayList graph = cafeDAO.getGraph();

		close(con);
		return graph;
	}

	public ArrayList getMonthGraph() {
		System.out.println("GraphService-getMonthGraph");

		Connection con = getConnection();

		CafeDAO cafeDAO = CafeDAO.getInstance();
		cafeDAO.setConnection(con);

		ArrayList graph = cafeDAO.getMonthGraph();

		close(con);
		return graph;
	}
	
	public ArrayList getCafeGraph(String id) {
		System.out.println("GraphService-getCafeGraph");

		Connection con = getConnection();

		CafeDAO cafeDAO = CafeDAO.getInstance();
		cafeDAO.setConnection(con);

		ArrayList graph = cafeDAO.getCafeGraph(id);

		close(con);
		return graph;
	}
	
	public ArrayList getCafeIncomeByDay(String id) {
		System.out.println("GraphService-getCafeIncomeByDay");
		
		Connection con = getConnection();
		
		CafeDAO cafeDAO = CafeDAO.getInstance();
		cafeDAO.setConnection(con);
		
		ArrayList graph = cafeDAO.getCafeIncomeByDay(id);
		
		close(con);
		return graph;
	}
	
	public ArrayList getCafeIncomeByMonth(String id) {
		System.out.println("GraphService-getCafeIncomeByMonth");
		
		Connection con = getConnection();
		
		CafeDAO cafeDAO = CafeDAO.getInstance();
		cafeDAO.setConnection(con);
		
		ArrayList graph = cafeDAO.getCafeIncomeByMonth(id);
		
		close(con);
		return graph;
	}
	
}
