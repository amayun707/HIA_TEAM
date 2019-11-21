package action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.CartListService;
import vo.ActionForward;

public class CartListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("CartListAction");
		
		List cartList = null;
		
		CartListService cartListService = new CartListService();
		cartList = cartListService.getCartList();
		
		ActionForward forward = null;
		forward = new ActionForward();
		request.setAttribute("cartList", cartList);
		forward.setPath("/inc/cart/cart.jsp");
		return forward;
	}
}
