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
</head>
<body>
<%
ArrayList<PaymentBean> receiptList = (ArrayList<PaymentBean>)request.getAttribute("receiptList");
%>
    <form id="ReceiptList" method="post" name="ReceiptList">
        <section class="bg0 p-t-104 p-b-116">
            <div class="container">
                <div class="flex-w flex-tr row justify-content-center">
                    <div class="size-210-1 bor10 flex-w flex-col-m p-lr-100 p-tb-30 w-full-md">
                        <table>
                        <%
                        if(receiptList != null) {
                            %>
                            <tr align="center">
                                <td width="100px">번호</td>
                                <td width="100px">주문시간</td>
                                <td width="100px">수령시간</td>
                                <td width="100px">결제금액</td>
                                <td width="100px">수령자</td>
                            </tr>
                            <%
                            for(int i=0; i<receiptList.size(); i++) {
                            %>
                                <tr align="center">
                                    <td width="100px"><%=receiptList.get(i).getPay_num() %></td>
                                    <td width="100px"><%=receiptList.get(i).getOrderTime() %></td>
                                    <td width="100px"><%=receiptList.get(i).getGetTime() %></td>
                                    <td width="100px"><%=receiptList.get(i).getCost() %></td>
                                    <td width="100px"><%=receiptList.get(i).getId() %></td>
                                    <td>
                                       <div class="form-group text-center p-t-10">
                                        <button type="button" class="btn btn-dark" 
                                        onclick="location.href='ReceiptDeletePro.or?pay_num=<%=receiptList.get(i).getPay_num() %>'">
                                                                                         주문확인<i class="fa fa-check spaceLeft"></i></button>
                                       </div>
                                    </td>
                                </tr>
                
                            <%} %>
                        <%} %>
                        </table>
                    </div>
                </div>
            </div>
        </section>
    </form>
</body>
</html>