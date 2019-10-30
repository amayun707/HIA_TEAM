package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.MemberJoinProAction;
import vo.ActionForward;

@WebServlet("*.me")
public class MemberFrontController extends HttpServlet {
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8"); 
		
		String command = request.getServletPath();
			
		Action action = null;
		ActionForward forward = null;
		
		if(command.equals("*.me")) {
			forward = new ActionForward();
			forward.setPath("*.me");
		}
		else if(command.equals("MemberJoinPro.me")) {
			action = new MemberJoinProAction();
			forward = new ActionForward();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
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
