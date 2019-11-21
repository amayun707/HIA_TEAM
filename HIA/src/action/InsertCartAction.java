package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.InsertCartService;
import vo.ActionForward;

public class InsertCartAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("insertCartAction");
		String cafe_num = request.getParameter("cafe_num");
//		int cafe_num = Integer.parseInt(request.getParameter("cafe_num"));
		String cart = request.getParameter("cart");
		String[] items = cart.split(",");
		int[] item = new int[items.length];
		for(int i = 0; i<items.length; i++) {
			item[i] = Integer.parseInt(items[i]);
			System.out.println(item[i]);
		}
		
		InsertCartService insertCartService = new InsertCartService();
		insertCartService.insertCart(item);
//		insertCartService.insertCart(cafe_num,coffee_num,price,id);
		
		ActionForward forward = new ActionForward();
		forward.setPath("/CoffeeList.bo?cafe_num="+cafe_num);
		return forward;
	}

}
