<%@page import="vo.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
<script src="./js/jquery-3.4.1.js"></script>
<script type="text/javascript">
	
function selectEmail(ele){ 
	
	var $ele = $(ele); 
	var $email2 = $('input[name=email2]'); 
	
	if($ele.val() == "1"){ 
		$email2.attr('readonly', false); 
		$email2.val(''); 
	} else { 
		$email2.attr('readonly', true); 
		$email2.val($ele.val());
	}
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
			element_pw.style.color = "red";
		}
		else{
			element_pw.innerHTML = "적합한 비밀번호";
			passResult = true;
			element_pw.style.color = "blue";
		}
	}
	else{
		element_pw.innerHTML = "부적합한 비밀번호";
		passResult = false;
		element_pw.style.color = "red";
	}
}

function checkPass_re() {
	
	var element_pw = document.getElementById('checkPassResult_re');
	var PW = document.joinForm.pass;
	var RE = document.joinForm.pass_re;
	
	if(PW.value == RE.value){
		element_pw.innerHTML = "비밀번호 일치";
		passResult_re = true;
		element_pw.style.color = "blue";
	}
	else{
		element_pw.innerHTML = "비밀번호 불일치";
		passResult_re = false;
		element_pw.style.color = "red";
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
<body class="animsition">
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

<!-- Header -->
	<jsp:include page="../inc/header/header-v4.jsp"/>
	<!-- Cart -->
	<jsp:include page="../inc/cart/cart.jsp"/>
	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('images/bg-01.jpg');">
		<h2 class="ltext-105 cl0 txt-center">
			회원정보수정
		</h2>
	</section>
	
	<form action="MemberUpdatePro.me" method="post" name="joinForm"
		onsubmit="return checkUpdate()">
		<section class="bg0 p-t-104 p-b-116">
			<div class="container">
				<div class="flex-w flex-tr row justify-content-center">
					<div class="size-210-1 bor10 flex-w flex-col-m p-lr-100 p-tb-30 w-full-md">
					
						<label>아이디</label>
						<div class="bor8_1 how-pos4-parent row text-center">
							<input class="stext-111 cl2 plh5 size-50 p-l-10 p-r-10 p-t-10 p-b-10"
							type="text" id="id" name="id" required="required" size="20" value="<%=id %>" readonly><br>
						</div>
						<span class="stext-111-2 cl2 plh5 size-50 p-r-30 p-b-10" id="checkIdResult"></span>
						
						<label>비밀번호</label>
						<div class="bor8_1 how-pos4-parent row text-center">
							<input class="stext-111 cl2 plh5 size-50 p-l-10 p-r-10 p-t-10 p-b-10"
							type="password" id="pass" name="pass" required="required" size="20"
							placeholder="8-20자리 영문자, 숫자, 특수문자 조합" onkeyup="checkPass(this)"><br>
						</div>
						<span class="stext-111-2 cl2 plh3 size-50 p-r-30 p-b-10" id="checkPassResult"></span>
						
						<label>비밀번호 확인</label>
						<div class="bor8_1 how-pos4-parent row text-center">
							<input class="stext-111 cl2 plh5 size-50 p-l-10 p-r-10 p-t-10 p-b-10" type="password" 
							id="pass_re" name="pass_re" required="required" size="20" placeholder="위와 동일하게 입력" onkeyup="checkPass_re()"><br>
						</div>
						<span class="stext-111-2 cl2 plh3 size-50 p-r-30 p-b-10" id="checkPassResult_re"></span>
						
						<label>이름</label>
						<div class="bor8_1 how-pos4-parent row text-center">
						<input class="stext-111 cl2 plh5 size-50 p-l-10 p-r-10 p-t-10 p-b-10"
						type="text" id="name" name="name" required="required" size="20" value="<%=memberbean.getName() %>">
						</div>
						<span class="stext-111-2 cl2 plh3 size-50 p-r-30 p-b-10"></span>

						<label>E-Mail</label>
						<div class="input-group triple-input row"width: 100%;">
							<div class="input-group triple-input bor8_2">
								<input class="www2 form-control" type="text" name="email1" value="<%=email1%>" required="required">&nbsp;@&nbsp;
								<input class="www2 form-control" type="text" name="email2" value="<%=email2%>" required="required">
							</div>
							<select id="mail_select" onChange="selectEmail(this)">
								<option value="" selected>선택하세요</option>
								<option value="naver.com">naver.com</option>
								<option value="gmail.com">gmail.com</option>
								<option value="hanmail.com">hanmail.com</option>
								<option value="1">직접입력</option>
							</select> <input type="hidden">
							<button type="submit" id="emailCheck" class="btn btn-secondary"
								onclick="sendEmail()">
								메일인증전송<i class="fa fa-check spaceLeft"></i>
							</button>
						</div>
						<span class="stext-111-2 cl2 plh3 size-50 p-r-30 p-b-10"></span>

						<label>전화번호</label>
						<div class="input-group triple-input row"width: 100%;">
							<select id="p_select" onchange="changePhone(this)">
								<option value="">직접입력</option>
								<option value="010">010</option>
								<option value="051">051</option>
							</select>
							<div class="input-group triple-input bor8_3">
								<input class="www2 form-control" type="text" name="phone1" value="<%=phone1 %>" required="required">&nbsp;-&nbsp; 
								<input class="www2 form-control" type="text" name="phone2" value="<%=phone2 %>" required="required">&nbsp;-&nbsp; 
								<input class="www2 form-control" type="text" name="phone3" value="<%=phone3 %>" required="required">
							</div>
						</div>
						<span class="stext-111-2 cl2 plh3 size-50 p-r-30 p-b-10"></span>

						<label>주소</label>
						<div class="input-group triple-input row"width: 100%;">
							<div class="input-group triple-input bor8_2">
								<input class="www3 form-control" type="text" id="postcode">
								<div class="input-group triple-input ">
									<button type="button" id="join-submit" class="btn btn-secondary" onclick="ad_check()">
									우편번호<i class="fa fa-check spaceLeft"></i></button>
								</div>
							</div>
						</div>
						<div class="hang2">
							<div class="bor8_4 how-pos4-parent row text-center">
								<input class="stext-111-1 cl2 plh3 size-100 p-l-10 p-r-10 p-t-10 p-b-10"
								type="text" name="roadAddress" id="roadAddress" value="<%=roadAddress %>" required="required">
							</div>
						</div>
						<div class="bor8_4 how-pos4-parent row text-center">
							<input class="stext-111-1 cl2 plh3 size-100 p-l-10 p-r-10 p-t-10 p-b-10"
							type="text" name="jibunAddress" id="jibunAddress" value="<%=jibunAddress %>" required="required">
						</div>
						<div class="bor8_4 how-pos4-parent row text-center">
							<input class="stext-111-1 cl2 plh3 size-100 p-l-10 p-r-10 p-t-10 p-b-10"
							type="text" name="detailAddress" id="detailAddress" value="<%=detailAddress %>" required="required">
						</div><br>

						<div class="form-group text-center p-t-10">
							<input type="hidden" name="customer_owner" value="<%=memberbean.getCustomer_owner()%>">
							<button type="submit" id="join-submit" class="btn btn-dark">회원정보수정
							<i class="fa fa-check spaceLeft"></i></button>
							<button type="button" class="btn btn-dark" onclick="history.back()">취소
							<i class="fa fa-times spaceLeft"></i></button>
							<button type="button" class="btn btn-dark" onclick="location.href='MemberDelete.me'">회원탈퇴
							<i class="fa fa-check spaceLeft"></i></button>
						</div>
					</div>
				</div>
			</div>
		</section>
	</form>
	
	<!-- Footer -->
	<jsp:include page="../inc/footer/footer.jsp"/>
	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>

<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>
<!--===============================================================================================-->
	<script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			$(this).css('position','relative');
			$(this).css('overflow','hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed: 1,
				scrollingThreshold: 1000,
				wheelPropagation: false,
			});

			$(window).on('resize', function(){
				ps.update();
			})
		});
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
		
</body>
</html>