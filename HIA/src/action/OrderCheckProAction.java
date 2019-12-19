package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import svc.OrderCheckProService;
import vo.ActionForward;
import vo.PaymentBean;

public class OrderCheckProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int pay_num = Integer.parseInt(request.getParameter("pay_num"));
		OrderCheckProService orderCheckProService = new OrderCheckProService();
		
		int checkResult = orderCheckProService.ordercheck(pay_num);
		
		ActionForward forward = new ActionForward();
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		if(checkResult > 0) {
			forward.setPath("ReceiptListPro.or");
		}
		else {
			out.println("<script>");
			out.println("history.back()");
			out.println("</script>");
		}
		return forward;
	}

}
