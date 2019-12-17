<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="vo.PaymentBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.png" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
    href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
    href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
    href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
    href="fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
    href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
    href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
    href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
    href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
<script src="./js/jquery-3.4.1.js"></script>
<META HTTP-EQUIV="refresh" CONTENT="15">
</head>
<body>
<%
List receiptList = (List)request.getAttribute("receiptList");

ArrayList receiptList1 = (ArrayList)receiptList.get(0);
ArrayList receiptList2 = (ArrayList)receiptList.get(1);
%>
    <form id="ReceiptList" method="post" name="ReceiptList">
    <%
    if(receiptList != null) {
    %>
        <section class="bg0 p-t-104 p-b-116">
        <div class="form-group text-center p-t-10">
              <button type="button" class="btn btn-dark" 
              onclick="location.href='Main.me'">
                               영업종료<i class="fa fa-check spaceLeft"></i></button>
        </div>
        <%
    	for(int i=0; i<receiptList1.size(); i++) {
    		
    		PaymentBean paymentBean1 = (PaymentBean)receiptList1.get(i);
    	%>
            <div class="container">
                <div class="flex-w flex-tr row justify-content-center">
                    <div class="size-210-1 bor10 flex-w flex-col-m p-lr-100 p-tb-30 w-full-md">
                        <table>
                            <tr align="center">
                                <td width="100px">번호</td>
                                <td width="100px">주문시간</td>
                                <td width="100px">수령시간</td>
                                <td width="100px">결제금액</td>
                                <td width="100px">수령자</td>
                                <td></td>
                            </tr>
                                <tr align="center">
                                    <td width="100px"><%=paymentBean1.getPay_num() %></td>
                                    <td width="100px"><%=paymentBean1.getOrderTime() %></td>
                                    <td width="100px"><%=paymentBean1.getGetTime() %></td>
                                    <td width="100px"><%=paymentBean1.getCost() %></td>
                                    <td width="100px"><%=paymentBean1.getId() %></td>
                                    <td>
                                       <div class="form-group text-center p-t-10">
                                        <button type="button" class="btn btn-dark" 
                                        onclick="location.href='ReceiptDeletePro.or?pay_num=<%=paymentBean1.getPay_num() %>'">
                                                                                         수령완료<i class="fa fa-check spaceLeft"></i></button>
                                       </div>
                                    </td>
                                </tr>
                                <tr align="center">
                                	<td></td>
                                	<td width="100px">커피주문</td>
                                	<td width="100px">커피명</td>
                                	<td width="100px">커피가격</td>
                                	<td width="100px">커피수량</td>
                                </tr>
                                <%
                                for(int j=0; j<receiptList2.size(); j++) {
                                	
                                	PaymentBean paymentBean2 = (PaymentBean)receiptList2.get(j);
                                	
                                	int iNum = paymentBean1.getPay_num();
                                	int jNum = paymentBean2.getPay_num();
                                	
                                	if(iNum == jNum){
                                %>
                                	<tr align="center">
                                		<td></td><td>→</td>
                                		<td width="100px"><%=paymentBean2.getCoffee_name() %></td>
                                		<td width="100px"><%=paymentBean2.getPrice() %></td>
                                		<td width="100px"><%=paymentBean2.getAmount() %></td>
                                	</tr>
                                <%
                                	}
                                }
                                %>
                        </table>
                    </div>
                </div>
            </div>
        <%} %>
        </section>
    <%} %>
    </form>
</body>
</html>