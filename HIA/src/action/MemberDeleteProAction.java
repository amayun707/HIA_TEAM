package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import svc.MemberDeleteService;
import vo.ActionForward;

public class MemberDeleteProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		
		ActionForward forward = null;
		
		MemberDeleteService memberdeleteservice = new MemberDeleteService();
		boolean isDeleteSuccess = memberdeleteservice.removeMember(id, pass);
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		if(!isDeleteSuccess) {
			out.println("<script>");
			out.println("alert('회원 탈퇴 실패')");
			out.println("history.back()");
			out.println("</script>");
		}
		else {
			HttpSession session = request.getSession();
			session.invalidate();
			
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath("Main.me");
		}
		
		return forward;
	}

}
