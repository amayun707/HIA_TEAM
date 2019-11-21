package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import svc.MemberSelectService;
import vo.ActionForward;
import vo.MemberBean;

public class MemberUpdateAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		
		MemberSelectService memberselectservice = new MemberSelectService();
		MemberBean memberbean = memberselectservice.getMember(id);
		request.setAttribute("memberbean", memberbean);
		
		ActionForward forward = new ActionForward();
		forward.setPath("MemberUpdate.me");
		
		return forward;
	}

}
