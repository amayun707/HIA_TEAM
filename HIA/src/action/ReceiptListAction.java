package action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.ReceiptListService;
import vo.ActionForward;
import vo.PaymentBean;

public class ReceiptListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		List receiptList = ReceiptListService.getReceiptList();
		
		request.setAttribute("receiptList", receiptList);
		
		ActionForward forward = new ActionForward();
		forward.setPath("/receipt.jsp");
		
		return forward;
	}

}
