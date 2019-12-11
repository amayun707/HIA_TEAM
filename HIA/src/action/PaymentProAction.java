package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import svc.MemberSelectService;
import vo.ActionForward;
import vo.MemberBean;

public class PaymentProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		int total = Integer.parseInt(request.getParameter("total"));
		String getTime = request.getParameter("getTime");
		
		MemberSelectService memberselectservice = new MemberSelectService();
		MemberBean memberbean = memberselectservice.getMember(id);
		request.setAttribute("memberbean", memberbean);
		
		ActionForward forward = new ActionForward();
		forward.setPath("Payment.or");
		
		return forward;
	}

}
