package svc;

import vo.CafeBean;
import static db.JdbcUtil.*;

import java.sql.Connection;

import dao.CafeDAO;

public class BoardDetailService {

	public CafeBean getCafe(int cafe_num) {
		Connection con = getConnection();
		CafeDAO cafeDAO = CafeDAO.getInstance();
		cafeDAO.setConnection(con);
		
		CafeBean cafeBean = cafeDAO.selectCafe(cafe_num);
		
		
		
		close(con);
		
		return cafeBean;
	}

}
