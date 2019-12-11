package action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import svc.CartListService;
import vo.ActionForward;

public class CartListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("CartListAction");
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		List cartList = null;
		
		CartListService cartListService = new CartListService();
		cartList = cartListService.getCartList(id);
		
		ActionForward forward = null;
		forward = new ActionForward();
		request.setAttribute("cartList", cartList);
		forward.setPath("/inc/cart/cart.jsp");
		return forward;
	}
}
