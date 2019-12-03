package action;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import svc.InsertCartService;
import vo.ActionForward;

public class InsertCartAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
<<<<<<< HEAD

=======
		System.out.println("insertCartAction");
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
>>>>>>> branch 'master' of https://github.com/amayun707/HIA_TEAM.git
		String cafe_num = request.getParameter("cafe_num");
		String cart = request.getParameter("cart");
		System.out.println(cart);
		int[] item = null;
		if(cart!="") {
			String[] items = cart.split(",");
			item = new int[items.length];
			for(int i = 0; i<items.length; i++) {
				item[i] = Integer.parseInt(items[i]);
				System.out.println(item[i]);
			}
		}
		String amount = request.getParameter("amount");
		System.out.println(amount);
		int count[] = null;
		if(amount!="") {
			String[] counts = amount.split(",");
			count = new int[counts.length];
			for(int i = 0; i<count.length; i++) {
				count[i] = Integer.parseInt(counts[i]);
				System.out.println(count[i]);
			}
		}
		InsertCartService insertCartService = new InsertCartService();
		if(item!=null) {
			insertCartService.insertCart(item, count, id);
		} else {
			insertCartService.deleteCart(id);
		}
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<script>");
		out.println("location.href = document.referrer");
		out.println("</script>");
		return null;
	}

}
