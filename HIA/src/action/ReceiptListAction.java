package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.ReceiptListService;
import vo.ActionForward;
import vo.PaymentBean;

public class ReceiptListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ArrayList<PaymentBean> receiptList = new ArrayList<PaymentBean>();
		receiptList = ReceiptListService.getReceiptList();
		
		request.setAttribute("receiptList", receiptList);
		
		ActionForward forward = new ActionForward();
		forward.setPath("/receipt.jsp");
		
		return forward;
	}

}
