package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import svc.CafeListService;
import svc.CartListService;
import svc.CoffeeListService;
import vo.ActionForward;
import vo.CoffeeBean;
import vo.PageInfo;

public class CoffeeListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String category = request.getParameter("category");
		if(category==null) {
			category="";
		}
		System.out.println("a"+category+"a");
		String search = request.getParameter("search");
		if(search==null) {
			search="";
		}
		
		String strCafe_num = request.getParameter("cafe_num");
		int cafe_num=0;
		if(strCafe_num!=null) {
			cafe_num = Integer.parseInt(strCafe_num);
		}
		int page = 1; 
		int limit = 10; 
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page")); 
		}

		CoffeeListService coffeeListService = new CoffeeListService();
		int listCount = 0;
		if(strCafe_num==null) {
			listCount = coffeeListService.getListCount(search,category);
		}else {
			listCount = coffeeListService.getListCount(cafe_num,search,category);
		}
		int maxPage = (int)((double)listCount / limit + 0.95); 
		int startPage = ((int)((double)page / 10 + 0.9) - 1) * 10 + 1;
		int endPage = startPage + limit - 1;
		if(endPage > maxPage) {
			endPage = maxPage;
		}
	
		ArrayList<CoffeeBean> coffeeList = null;
		if(strCafe_num==null) {
			coffeeList = coffeeListService.getCoffeeList(page,limit,search,category);
		}else {
			coffeeList = coffeeListService.getCoffeeList(page,limit,cafe_num,search,category);
		}

//		CartListService cartListService = new CartListService();
//		ArrayList cartList = cartListService.getCartList();
		
		ActionForward forward = new ActionForward();
		PageInfo pageinfo = new PageInfo(page,maxPage,startPage,endPage,listCount);
		request.setAttribute("pageInfo", pageinfo); 
		request.setAttribute("coffeeList", coffeeList);
//		request.setAttribute("cartList", cartList);
		forward.setPath("/coffee_list.jsp?cafe_num="+cafe_num+"&?category="+category);
		HttpSession session  = request.getSession();
		session.setAttribute("id","test1");
		return forward;
	}
}
