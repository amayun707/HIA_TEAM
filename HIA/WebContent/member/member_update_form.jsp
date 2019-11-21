<%@page import="vo.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
function changeDomain(domain) {
	document.joinForm.email2.value = domain.value;
}

function changePhone(phone) {
	document.joinForm.phone1.value = phone.value;
}

function checkPass(pass) {
	
	var lenRegex = /[A-Za-z0-9!@#$%^&*()_+]{8,20}/;
	var upengRegex = /[A-Z]/;
	var lowengRegex = /[a-z]/;
	var numRegex = /[0-9]/;
	var specRegex = /[!@#$%^&*()_+]/;

	var element_pw = document.getElementById('checkPassResult');

	if(lenRegex.exec(pass.value)){
		
		has = 0;
		
		has += upengRegex.exec(pass.value) ? 1 : 0;
		has += lowengRegex.exec(pass.value) ? 1 : 0;
		has += numRegex.exec(pass.value) ? 1 : 0;
		has += specRegex.exec(pass.value) ? 1 : 0;

		if(has < 3) {
			element_pw.innerHTML = "부적합한 비밀번호";
			passResult = false;
		}
		else{
			element_pw.innerHTML = "적합한 비밀번호";
			passResult = true;
		}
	}
	else{
		element_pw.innerHTML = "부적합한 비밀번호";
		passResult = false;
	}
}

function checkPass_re() {
	
	var element_pw = document.getElementById('checkPassResult_re');
	var PW = document.joinForm.pass;
	var RE = document.joinForm.pass_re;
	
	if(PW.value == RE.value){
		element_pw.innerHTML = "비밀번호 일치";
		passResult_re = true;
	}
	else{
		element_pw.innerHTML = "비밀번호 불일치";
		passResult_re = false;
	}
}

function ad_check() {
	
	window.open("Address.me", "", "width=500, height=200");
}

function checkUpdate() {

	if(passResult == true && passResult_re == true){
		alert("수정 성공");
		return true;
	}
	else{
		alert("오류 - 수정 실패");
		return false;
	}
}
</script>
</head>
<body>
<%
String id = (String)session.getAttribute("id");
MemberBean memberbean = (MemberBean)request.getAttribute("memberbean");

if(id == null){
	response.sendRedirect("MemberLogin.me");
}

String email = memberbean.getEmail();
String[] Email = email.split("@");
String email1 = Email[0];
String email2 = Email[1];

String phone = memberbean.getPhone();
String[] Phone = phone.split("-");
String phone1 = Phone[0];
String phone2 = Phone[1];
String phone3 = Phone[2];

String address = memberbean.getAddress();
String[] Address = address.split("/");
String roadAddress = Address[0];
String jibunAddress = Address[1];
String detailAddress = Address[2];
%>
	<h1>회원 수정</h1>
	<form action="MemberUpdatePro.me" method="post" name="joinForm" onsubmit="return checkUpdate()">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td>
					<input type="text" id="id" name="id" required="required" size="20" value="<%=id %>" readonly><br>
				</td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td>
					<input type="password" name="pass" required="required" size="20" placeholder="8-20자리 영문자, 숫자, 특수문자 조합" onkeyup="checkPass(this)"><br>
					<span id="checkPassResult"></span>
				</td>
			</tr>
			<tr>
				<td>패스워드 확인</td>
				<td>
					<input type="password" name="pass_re" required="required" size="20" placeholder="비밀번호 확인" onkeyup="checkPass_re()"><br>
					<span id="checkPassResult_re"></span>
				</td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" required="required" value="<%=memberbean.getName() %>" size="20"></td>
			</tr>
			<tr>
				<td>E-Mail</td>
				<td>
					<input type="text" name="email1" required="required" value="<%=email1 %>" size="10">&nbsp;@
					<input type="text" name="email2" required="required" value="<%=email2 %>" size="10">
					<select name="selectDomain" onchange="changeDomain(this)">
						<option value="">직접입력</option>	
						<option value="naver.com">naver.com</option>
						<option value="gmail.com">gmail.com</option>
						<option value="daum.net">daum.net</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td>
					<select name="selectDomain" onchange="changePhone(this)">
						<option value="">직접입력</option>	
						<option value="010">010</option>
						<option value="051">051</option>
					</select>
					<input type="text" name="phone1" required="required" value="<%=phone1 %>" size="5">&nbsp;-
					<input type="text" name="phone2" required="required" value="<%=phone2 %>" size="8">&nbsp;-
					<input type="text" name="phone3" required="required" value="<%=phone3 %>" size="8">
				</td>
			</tr>
			<tr>
				<td>우편번호</td>
				<td>
					<input type="text" id="postcode" readonly>
					<input type="button" value="우편번호 검색" class="dup" onclick="ad_check()">
				</td>
			</tr>
			<tr>
				<td>주소</td>
				<td>
					<input type="text" name="roadAddress" id="roadAddress" value="<%=roadAddress %>" required="required">
					<input type="text" name="jibunAddress" id="jibunAddress" value="<%=jibunAddress %>" required="required"><br>
					<input type="text" name="detailAddress" id="detailAddress" value="<%=detailAddress %>" required="required">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="hidden" name="customer_owner" value="<%=memberbean.getCustomer_owner() %>">
					<input type="submit" value="회원정보수정">
					<input type="button" value="취소" onclick="history.back()">&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="button" value="회원탈퇴" onclick="location.href='MemberDelete.me'">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>