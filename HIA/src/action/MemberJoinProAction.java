package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.MemberJoinProService;
import vo.ActionForward;
import vo.MemberBean;

public class MemberJoinProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ActionForward forward = null;
		
		MemberBean memberbean = new MemberBean();
		
		memberbean.setId(request.getParameter("id"));
		memberbean.setPass(request.getParameter("pass"));
		memberbean.setName(request.getParameter("name"));
		memberbean.setEmail(request.getParameter("email1") + "@" + request.getParameter("email2"));
		memberbean.setPhone(request.getParameter("phone1") + "-" + request.getParameter("phone2") + "-" + request.getParameter("phone3"));
		memberbean.setAddress(request.getParameter("roadAddress") + "/" + request.getParameter("jibunAddress") + "/" + request.getParameter("detailAddress"));
		memberbean.setCustomer_owner(request.getParameter("customer_owner"));
		
		MemberJoinProService memberjoinproservice = new MemberJoinProService();
		boolean isRegistSucess = memberjoinproservice.registMember(memberbean);
		
		if(isRegistSucess == false) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('회원 가입 실패')");
			out.println("history.back()");
			out.println("</script>");
		}
		else {
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath("MemberLogin.me");
		}
		
		return forward;
	}

}