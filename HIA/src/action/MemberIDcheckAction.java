package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.MemberIDcheckService;
import vo.ActionForward;
import vo.MemberBean;

public class MemberIDcheckAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		MemberBean memberbean = new MemberBean();
		memberbean.setId(request.getParameter("id"));
		
		MemberIDcheckService memberidcheckservice = new MemberIDcheckService();
		boolean isIDcheck = memberidcheckservice.idcheckMember(memberbean);
		
		if(isIDcheck == false) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("사용가능한 아이디");
		}
		else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("사용불가능 아이디");
		}
		
		return null;
	}

}
