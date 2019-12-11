package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import svc.InsertPaymentService;
import vo.ActionForward;

public class InsertPaymentAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("InsertPaymentAction");
		
		HttpSession session = request.getSession();
		String getTime = request.getParameter("getTime");
		int cost = Integer.parseInt(request.getParameter("cost"));
		String id = (String)session.getAttribute("id");
		
		InsertPaymentService insertPaymentService = new InsertPaymentService();
		int insertCount = insertPaymentService.insertPayment(id, getTime, cost);
		
		ActionForward forward = new ActionForward();
		forward.setPath("DaaMain.bo");
		
		return forward;
	}

}
