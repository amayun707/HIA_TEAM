<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%
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
    	
        pg : 'kakaopay',
        pay_method : 'card',
        merchant_uid : 'merchant_' + new Date().getTime(),
        name : '주문명:결제테스트',
        amount : 14000,
        buyer_email : 'iamport@siot.do',
        buyer_name : '구매자이름',
        buyer_tel : '010-1234-5678',
        buyer_addr : '서울특별시 강남구 삼성동',
        buyer_postcode : '123-456',
        m_redirect_url : 'http://localhost:8080/HIA/Main.me'
        
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
                    msg += '\결제 금액 : ' + rsp.paid_amount;
                    msg += '카드 승인번호 : ' + rsp.apply_num;
                    
                    alert(msg);
                    
                } 
                else {
                	alert("결제 오류");
                }
            });
            
            location.href='index.jsp?msg='+msg;
        } 
        else {
            msg = '결제에 실패하였습니다.';
            msg += '에러내용 : ' + rsp.error_msg;
            
            location.href="/Main.me";
            alert(msg);
        }
    });
    
});
</script>
</head>
<body>
</body>
</html>