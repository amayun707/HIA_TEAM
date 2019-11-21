package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.CafeListAction;
import action.CartListAction;
import action.CoffeeListAction;
import action.InsertCartAction;
import vo.ActionForward;


@WebServlet("*.bo")
public class CafeFrontController extends HttpServlet{

	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8"); // POST 방식에 대한 한글 처리
		String command = request.getServletPath(); // 서블릿 주소 추출
		System.out.println(command); // 서블릿 주소 확인
			
		Action action = null;
		ActionForward forward = null;
		
		if(command.equals("/DaaMain.bo")) {
			// 포워딩 대상이 뷰페이지(*.jsp) 일 경우 ActionForward 객체 생성하여 URL 전달
			forward = new ActionForward();
			forward.setPath("/index.jsp");
		} else if(command.equals("/CafeList.bo")) {
			action = new CafeListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if(command.equals("/CoffeeList.bo")) {
			// BoardDetailAction 클래스로 이동
			action = new CoffeeListAction();
				try {
					forward = action.execute(request, response);
				} catch (Exception e) {
					e.printStackTrace();
				}
		} else if(command.equals("/getCartList.bo")) {
			// BoardDetailAction 클래스로 이동
			action = new CartListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if(command.equals("/insertCart.bo")) {
			// BoardDetailAction 클래스로 이동
			action = new InsertCartAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		
		
		
		
		
		
		// ActionForward 객체 내용에 따라 각각 다른 포워딩 수행
		if(forward != null) { // ActionForward 객체가 null 이 아닐 경우
			if(forward.isRedirect()) { // Redirect 방식으로 포워딩할 경우
				// response 객체의 sendRedirect() 메서드를 호출하여 ActionForward 객체의 URL 정보 전달
				response.sendRedirect(forward.getPath());
			} else { // Dispatch 방식으로 포워딩할 경우
				// request 객체의 getRequestDispatcher() 메서드를 호출하여 RequestDispatcher 객체 리턴
				// => 메서드 파라미터로 ActionForward 객체의 URL 정보 전달
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
				// RequestDispatcher 객체의 forward() 메서드를 호출하여 포워딩(request, response 객체 전달)
				dispatcher.forward(request, response);
			}
		}
	}	
	
	

	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	
	
}
	

