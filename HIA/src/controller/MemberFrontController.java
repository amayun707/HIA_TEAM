package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.MemberDeleteProAction;
import action.MemberIDcheckAction;
import action.MemberJoinProAction;
import action.MemberLoginProAction;
import action.MemberLogoutProAction;
import action.MemberUpdateAction;
import action.MemberUpdateProAction;
import action.SendMailAction;
import vo.ActionForward;

@WebServlet("*.me")
public class MemberFrontController extends HttpServlet {
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8"); 
		
		String command = request.getServletPath();
			
		Action action = null;
		ActionForward forward = null;
		
		if(command.equals("/Main.me")) {
			
			forward = new ActionForward();
			forward.setPath("/index.jsp");
		}
		else if(command.equals("/MemberStart.me")) {
			
			forward = new ActionForward();
			forward.setPath("/member/member_join_start.jsp");
		}
		else if(command.equals("/MemberJoin.me")) {
			
			forward = new ActionForward();
			forward.setPath("/member/member_join_form.jsp");
		}
		else if(command.equals("/IDcheck.me")) {
			
			action = new MemberIDcheckAction();
			
			try {
				forward = action.execute(request, response);
			} 
			catch (Exception e) {
				e.printStackTrace();
			}
		}
		else if(command.equals("/Address.me")) {
			
			forward = new ActionForward();
			forward.setPath("/member/address_check.jsp");
		}
		else if(command.equals("/MemberJoinPro.me")) {
			
			action = new MemberJoinProAction();
			
			try {
				forward = action.execute(request, response);
			} 
			catch (Exception e) {
				e.printStackTrace();
			}
		}
		else if(command.equals("/MemberLogin.me")) {
			
			forward = new ActionForward();
			forward.setPath("/member/member_login_form.jsp");
		}
		else if(command.equals("/MemberLoginPro.me")) {
			
			action = new MemberLoginProAction();
			
			try {
				forward = action.execute(request, response);
			} 
			catch (Exception e) {
				e.printStackTrace();
			}
		}
		else if(command.equals("/MemberLogoutPro.me")) {
			
			action = new MemberLogoutProAction();
			
			try {
				forward = action.execute(request, response);
			} 
			catch (Exception e) {
				e.printStackTrace();
			}
		}
		else if(command.equals("/Update.me")) {
			
			action = new MemberUpdateAction();
			
			try {
				forward = action.execute(request, response);
			} 
			catch (Exception e) {
				e.printStackTrace();
			}
		}
		else if(command.equals("/MemberUpdate.me")) {
			
			forward = new ActionForward();
			forward.setPath("/member/member_update_form.jsp");
		}
		else if(command.equals("/MemberUpdatePro.me")) {
			
			action = new MemberUpdateProAction();
			
			try {
				forward = action.execute(request, response);
			} 
			catch (Exception e) {
				e.printStackTrace();
			}
		}
		else if(command.equals("/MemberDelete.me")) {
			
			forward = new ActionForward();
			forward.setPath("/member/member_delete_form.jsp");
		}
		else if(command.equals("/MemberDeletePro.me")) {
			
			action = new MemberDeleteProAction();
			
			try {
				forward = action.execute(request, response);
			} 
			catch (Exception e) {
				e.printStackTrace();
			}
		} else if(command.equals("/WebSendMail.me")) {
			
			//action = new WebSendMailAction();
			action = new SendMailAction();
			try {
				forward = action.execute(request, response);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		} else if(command.equals("/Mail.me")) {
			
			forward = new ActionForward();
			forward.setPath("mail.jsp");
		} 
		
		
		
		
		
		if(forward != null) { 
			if(forward.isRedirect()) { 
				response.sendRedirect(forward.getPath());
			} 
			else { 
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
		}	
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	
}
