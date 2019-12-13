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
		System.out.println("CoffeeListAction");
		
		String category = "";
		String strCategory = request.getParameter("category");
		if(strCategory!=null) {
			category=strCategory;
		}
		String search = request.getParameter("search");
		if(search==null) {
			search="";
		}
		
		String sortBy = "coffee_name asc";
		String strSortBy = request.getParameter("SortBy");
		if(strSortBy!= null) {
			sortBy = strSortBy;
		}
		String strPrice = request.getParameter("Price");
		int price = 0;
		if(strPrice!=null) {
			price = Integer.parseInt(strPrice);
		}
		String strCafe_num = request.getParameter("cafe_num");
		int cafe_num=0;
		if(strCafe_num!=null) {
			cafe_num = Integer.parseInt(strCafe_num);
		}
		System.out.println("cafe_num : "+cafe_num);
		int page = 1; 
		int limit = 20; 
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page")); 
		}

		CoffeeListService coffeeListService = new CoffeeListService();
		int listCount = 0;
		if(cafe_num>0) {
			listCount = coffeeListService.getListCount(cafe_num,search,category,price);
		}else {
			listCount = coffeeListService.getListCount(search,category);
		}
		int maxPage = (int)((double)listCount / limit + 0.95); 
		int startPage = ((int)((double)page / 10 + 0.9) - 1) * 10 + 1;
		int endPage = startPage + limit - 1;
		if(endPage > maxPage) {
			endPage = maxPage;
		}
	
		ArrayList<CoffeeBean> coffeeList = null;
		if(cafe_num>0) {
			coffeeList = coffeeListService.getCoffeeList(page,limit,cafe_num,search,category,price, sortBy);
		}else {
			coffeeList = coffeeListService.getCoffeeList(page,limit,search,category);
		}

		ActionForward forward = new ActionForward();
		PageInfo pageinfo = new PageInfo(page,maxPage,startPage,endPage,listCount);
		request.setAttribute("pageInfo", pageinfo); 
		request.setAttribute("coffeeList", coffeeList);
		forward.setPath("/coffee_list.jsp?cafe_num="+cafe_num+"&?category="+category+"&search="+search+"&sortBy="+sortBy+"&price="+price);

		HttpSession session  = request.getSession();

		return forward;
	}
}
