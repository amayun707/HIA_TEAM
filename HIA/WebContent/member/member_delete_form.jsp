<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function checkDelete() {
	
	if(confirm("정말 탈퇴하시겠습니까?") == true){	
		alert("탈퇴 성공 시 메인화면으로 이동합니다");
		return true;
	}
	else{
		return false;
	}
}
</script>
</head>
<body>
<%
String id = (String)session.getAttribute("id");

if(id == null){
	response.sendRedirect("MemberLogin.me");
}
%>
<form action="MemberDeletePro.me" name="deleteform" method="post" onsubmit="return checkDelete()">
<input type="hidden" name="id" value="<%=id %>">
<table>
	<tr>
		<td>비밀번호 입력 :  </td>
		<td><input type="password" name="pass" required="required" size="20"></td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="탈퇴">&nbsp;&nbsp;
			<input type="button" value="취소" onclick="history.back()">
		</td>
	</tr>
</table>
</form>
</body>
</html>