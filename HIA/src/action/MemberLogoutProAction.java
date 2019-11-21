package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vo.ActionForward;

public class MemberLogoutProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession();

		session.invalidate();

		ActionForward forward = new ActionForward();
		forward.setRedirect(true);
		forward.setPath("Main.me");
		
		return forward;
	}

}
