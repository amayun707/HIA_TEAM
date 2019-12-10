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
		
		ArrayList<PaymentBean> ReceiptList = new ArrayList<PaymentBean>();
		ReceiptList = ReceiptListService.getReceiptList();
		
		// 장바구니 정보 리스트 추가
		
		
		ActionForward forward = new ActionForward();
		forward.setPath("/receipt.jsp");
		
		return forward;
	}

}
