package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import svc.MemberLoginProService;
import vo.ActionForward;

public class MemberLoginProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		
		ActionForward forward = null;
		
		MemberLoginProService memberLoginProService = new MemberLoginProService();
		int loginResult = memberLoginProService.memberLogin(id, pass);

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		if(loginResult == 0 ) {
			out.println("<script>");
			out.println("alert('등록된 회원이 아닙니다')");
			out.println("history.back()");
			out.println("</script>");
		}
		else if(loginResult == -1) {
			out.println("<script>");
			out.println("alert('잘못된 비밀번호입니다')");
			out.println("history.back()");
			out.println("</script>");
		}
		else {
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			
			forward = new ActionForward();
			forward.setPath("Main.me");
		}
		
		return forward;
	}

}
