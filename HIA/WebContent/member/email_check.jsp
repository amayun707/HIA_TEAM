<%@page import="mail.SMTPAuthenticatior"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String email = request.getParameter("email");

SMTPAuthenticatior sa = new SMTPAuthenticatior();
String random = sa.sendMail(email);
%>
<script type="text/javascript">
	
	alert("인증번호를 발송하였습니다");
	
	function checkEmail() {
		
		var eCheck = document.emailcheck.eCheck;
		var eCheck2 = document.emailcheck.eCheck2;
		
		if(eCheck.value == eCheck2.value){	
			
			alert("인증 완료되었습니다");
			opener.document.joinForm.emailCheck.value = document.emailcheck.emailCheck.value;
			self.close();
		}
		else{
			alert("다시 입력해주세요");
		}
	}
	
</script>
<h2>인증번호 입력</h2>
<form id="emailcheck" method="post" name="emailcheck">
<input type="text" id="eCheck" name="eCheck">
<input type="hidden" id="eCheck2" name="eCheck2" value="<%=random %>">
<input type="hidden" id="emailCheck" name="emailCheck" value="<%=email %>">
<input type="button" value="확인" onclick="checkEmail()">
</form>
</body>
</html>