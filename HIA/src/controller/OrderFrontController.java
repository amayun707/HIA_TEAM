package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.InsertPaymentAction;
import action.MemberUpdateProAction;
import action.OrderCheckProAction;
import action.PaymentListAction;
import action.PaymentProAction;
import action.ReceiptListAction;
import vo.ActionForward;

@WebServlet("*.or")
public class OrderFrontController extends HttpServlet {
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8"); 
		
		String command = request.getServletPath();
			
		Action action = null;
		ActionForward forward = null;
		
		if(command.equals("/Payment.or")) {
			forward = new ActionForward();
			forward.setPath("/payment.jsp");
		}
		else if(command.equals("/PaymentPro.or")) {
			
			action = new PaymentProAction();
			
			try {
				forward = action.execute(request, response);
			} 
			catch (Exception e) {
				e.printStackTrace();
			}
		}
		else if(command.equals("/ReceiptListPro.or")) {
			
			action = new ReceiptListAction();
			
			try {
				forward = action.execute(request, response);
			} 
			catch (Exception e) {
				e.printStackTrace();
			}
		}
		else if(command.equals("/insertPayment.or")) {
			action = new InsertPaymentAction();
			try {
				forward = action.execute(request, response);
			} catch(Exception  e ) {
				System.out.println("Exception :" +e.getMessage());
			}
		}
		else if(command.equals("/PaymentList.or")) {
			action = new PaymentListAction();
			try {
				forward = action.execute(request, response);
			} catch(Exception  e ) {
				System.out.println("Exception : "+e.getMessage());
			}
		}
		else if(command.equals("/OrderCheckPro.or")) {
			action = new OrderCheckProAction();
			try {
				forward = action.execute(request, response);
			} catch(Exception  e ) {
				System.out.println("Exception : "+e.getMessage());
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
