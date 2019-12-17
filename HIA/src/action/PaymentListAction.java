package action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import svc.FavoriteListService;
import svc.PaymentListService;
import svc.ReceiptListService;
import vo.ActionForward;
import vo.CartBean;

public class PaymentListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("PaymentListAction");
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		
		PaymentListService paymentListService = new PaymentListService();
		ArrayList<CartBean> paymentList = paymentListService.getPaymentList(id);
		
		FavoriteListService favoriteListService = new FavoriteListService();
		String favoriteList =  favoriteListService.getFavoriteList(id);
		
		List receiptList = ReceiptListService.getReceiptList();
		
		ActionForward forward = new ActionForward();
		request.setAttribute("receiptList", receiptList);
		request.setAttribute("paymentList", paymentList);
		request.setAttribute("favoriteList",favoriteList);
		forward.setPath("/shoping-cart.jsp");
		
		return forward;
	}

}
