package svc;

import vo.CafeBean;

import static db.JdbcUtil.*;

import java.sql.Connection;

import org.json.simple.JSONObject;

import dao.CafeDAO;

public class CafeDetailService {


	public JSONObject getCafeDetail(int cafe_num) {
		System.out.println("CafeDetailService-getCafeDetail");
		System.out.println(cafe_num);
		Connection con = getConnection();
		CafeDAO cafeDAO = CafeDAO.getInstance();
		cafeDAO.setConnection(con);

		JSONObject cafeBean = null;
		cafeBean = cafeDAO.getCafeDetail(cafe_num);
		 
		close(con);
		return cafeBean;
	}
}
