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
		
//		response.setContentType("text/html;charset=utf-8");
//		PrintWriter out = response.getWriter();
//		out.println("<script>");
//		if(insertCount==0) {
//			out.println("alert('서버 문제로 구매를 실패하였습니다. 다시 시도해 주세요.')");
//		}
//		out.println("ReceiptListPro.or");
//		out.println("</script>");
		
		ActionForward forward = new ActionForward();
		forward.setPath("DaaMain.bo");
		
		return forward;
	}

}
