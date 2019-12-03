package action;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.InsertCartService;
import vo.ActionForward;

public class InsertCartAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String cafe_num = request.getParameter("cafe_num");
		String cart = request.getParameter("cart");
		
		int[] item = null;
		if(cart!="") {
			String[] items = cart.split(",");
			item = new int[items.length];
			for(int i = 0; i<items.length; i++) {
				item[i] = Integer.parseInt(items[i]);
			}
		}
		
		String amount = request.getParameter("amount");
		int count[] = null;
		if(amount!="") {
			String[] counts = amount.split(",");
			count = new int[counts.length];
			for(int i = 0; i<count.length; i++) {
				count[i] = Integer.parseInt(counts[i]);
			}
		}
				
		InsertCartService insertCartService = new InsertCartService();
		
		if(item!=null) {
			insertCartService.insertCart(item, count);
		} 
		else {
			insertCartService.deleteCart();
		}
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<script>");
		out.println("location.href = document.referrer");
		out.println("</script>");
		return null;
	}

}
