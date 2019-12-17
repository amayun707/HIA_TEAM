package action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import svc.ReceiptListService;
import vo.ActionForward;
import vo.PaymentBean;

public class ReceiptListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		
		List receiptList = ReceiptListService.getReceiptList(id);
		
		request.setAttribute("receiptList", receiptList);
		
		ActionForward forward = new ActionForward();
		forward.setPath("/receipt.jsp");
		
		return forward;
	}

}
