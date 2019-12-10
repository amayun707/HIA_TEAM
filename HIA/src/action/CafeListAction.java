package action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.mysql.jdbc.jdbc2.optional.SuspendableXAConnection;

import svc.CafeDetailService;
import svc.CafeListService;
import svc.CartListService;
import vo.ActionForward;
import vo.CafeBean;
import vo.PageInfo;

public class CafeListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("CafeListAction");
		String search = request.getParameter("search");
		if(search==null) {
			search = "";
		}
		String coffee_name = request.getParameter("coffee_name");
		if(coffee_name==null) {
			coffee_name="";
		}

		
		int page = 1; 
		int limit = 20; 
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page")); 
		}
		
		CafeListService cafeListService = new CafeListService();
		int listCount = 0;
		if(coffee_name=="") {
			listCount = cafeListService.getCafeListCount(search);
		}else {
			listCount = cafeListService.getCafeListCount(coffee_name, search);
		}
		
		int maxPage = (int)((double)listCount / limit + 0.95); //0.95 는 올림처리를 위한 덧셈
		int startPage = ((int)((double)page / 10 + 0.9) - 1) * 10 + 1;
		int endPage = startPage + 10 - 1;
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		ArrayList<CafeBean> cafeList = null;
		if(coffee_name=="") {
			cafeList = cafeListService.getCafeList(page,limit,search);
		}else {
			cafeList = cafeListService.getCafeList(page,limit,coffee_name,search);
		}

		String strCafe_num = request.getParameter("cafe_num");
		int cafe_num = 1;
		if(request.getParameter("cafe_num")!=null) {
			cafe_num = Integer.parseInt(strCafe_num);
		}
		JSONObject cafeBean = null;
		CafeDetailService cafeDetailService = new CafeDetailService();
		cafeBean = cafeDetailService.getCafeDetail(cafe_num);
		
		ActionForward forward = new ActionForward();
		PageInfo pageinfo = new PageInfo(page,maxPage,startPage,endPage,listCount);
		request.setAttribute("pageInfo", pageinfo); 
		request.setAttribute("cafeList", cafeList);
		request.setAttribute("cafeBean", cafeBean);
		
		forward.setPath("/cafe_list.jsp?coffee_name="+coffee_name);
		HttpSession session  = request.getSession();
		session.setAttribute("id","test1");
		return forward;
	}
}








