<%@page import="vo.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%
int cost = Integer.parseInt(request.getParameter("total"));
String id  = (String)session.getAttribute("id");
String getTime = request.getParameter("getTime");
MemberBean memberbean = (MemberBean)request.getAttribute("memberbean");

%>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<script type="text/javascript">
$(function(){
	
    var IMP = window.IMP;
    IMP.init('imp61207921');
    var msg;
    
    IMP.request_pay({
    	
        pg : 'html5_inicis',
        pay_method : 'card',
        merchant_uid : 'merchant_' + new Date().getTime(),
        name : 'HIA_커피주문',
        amount : '<%=cost %>',
        buyer_email : '<%=memberbean.getEmail() %>',
        buyer_name : '<%=memberbean.getName() %>',
        buyer_tel : '<%=memberbean.getPhone() %>',
        buyer_addr : '<%=memberbean.getAddress() %>'
        
    }, function(rsp) {
        if ( rsp.success ) {
            jQuery.ajax({
                url: "/payments/complete",
                type: 'POST',
                dataType: 'json',
                data: {
                    imp_uid : rsp.imp_uid
                }
            }).done(function(data) {
            	
                if ( everythings_fine ) {
                    msg = '결제가 완료되었습니다.';
                    msg += '\n고유ID : ' + rsp.imp_uid;
                    msg += '\n상점 거래ID : ' + rsp.merchant_uid;
                    msg += '\n결제 금액 : ' + rsp.paid_amount;
                    msg += '카드 승인번호 : ' + rsp.apply_num;
                    
                    alert(msg);     
                } 
                else {
                	alert("결제 오류");
                }
            });
            
            alert('결제 완료되었습니다. 감사합니다.');
            location.href="insertPayment.or?cost=<%=cost%>&getTime=<%=getTime%>";
        } 
        else {
            msg = '결제에 실패하였습니다.';
            msg += '에러내용 : ' + rsp.error_msg;
            
            location.href="insertPayment.or?cost=<%=cost%>&getTime=<%=getTime%>";
            alert(msg);
        }
    });
    
});
</script>
</head>
<body>
</body>
</html>