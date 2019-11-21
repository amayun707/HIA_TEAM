<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
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

	
	function changeDomain(domain) {
		document.joinForm.email2.value = domain.value;
	}
	
	function changePhone(phone) {
		document.joinForm.phone1.value = phone.value;
	}
	
	var regex = /^[A-Za-z0-9]{4,16}$/gi;
	
	$(document).ready(function() {
        $('#id').change(function(){
            $.ajax('IDcheck.me',{
                data:{id:$('#id').val()},
                success:function(sdata){
                    
                    var regex = /^[A-Za-z0-9]{4,16}$/gi;
                    var str = '사용가능한 아이디';
                    
                    if(!regex.test($('#id').val())){
                    	
                        $('#checkIdResult').html('조건불만족 아이디');
                        $('#id').select();
                    }
                    else{
                    	
                        $('#checkIdResult').html(sdata);
                        
                        if($.trim($('#checkIdResult').text()) == str){
                        	idResult = true;
                        }
                        else{
                        	idResult = false;
                        }
                    }
                }
            });
        });
    });
	
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
	
	function sendEmail(){
		
		var email1 = $('#email1').val();
		var email2 = $('#email2').val();
		var email = $('#email1').val() + "@" + $('#email2').val();
		
		if(email1 == ""){
			alert("이메일주소를 입력하세요.");
			return;
		}
		else if(email2 == ""){
			alert("도메인 주소를 입력하세요.");
			return;
		}
		
		url = "member/email_check.jsp?email="+ email;
		open(url,"confirm","width=500,height=180");
	}
	
	function ad_check() {
    	
    	window.open("Address.me", "", "width=500, height=200");
    }
    
	function checkSubmit() {
		
		var email1 = $('#email1').val();
		var email2 = $('#email2').val();
		var email = $('#email1').val() + "@" + $('#email2').val();
		var emailCheck = $('#emailCheck').val();
		
		if(emailCheck == "" || emailCheck != email){
			alert("이메일 인증을 다시 해주세요");
			$('#email1').focus();
			return false;
		}
		
		if(idResult == true && passResult == true && passResult_re == true) {
			alert("가입 성공");
			return true;
		}
		else {
			alert("오류 - 가입 실패");
			return false;
		}
	}
</script>
</head>
<body class="animsition">
<%
String customer_owner = request.getParameter("customer_owner");

if(customer_owner == null){
	response.sendRedirect("MemberStart.me");
}
%>
<!-- Header -->
	<jsp:include page="../inc/header/header-v4.jsp"/>
	<!-- Cart -->
	<jsp:include page="../inc/cart/cart.jsp"/>
	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('images/bg-01.jpg');">
		<h2 class="ltext-105 cl0 txt-center">
			Sign Up
		</h2>
	</section>
	<!-- Content page -->
	<form action="MemberJoinPro.me" method="post" name="joinForm" onsubmit="return checkSubmit()">
	<section class="bg0 p-t-104 p-b-116">
		<div class="container">
			<div class="flex-w flex-tr">
				<div class="size-210 bor10 flex-w flex-col-m p-lr-100 p-tb-30 w-full-md">
					<input type="hidden" name="customer_owner" value="<%=customer_owner %>">
					
					<%
					if(customer_owner == "c"){
					%>
						<h3 class="mtext-105 cl2 txt-center p-t-30 p-b-30"><b>일반회원 회원가입</b></h3>
					<%
					}
					else if(customer_owner == "o"){
					%>
						<h3 class="mtext-105 cl2 txt-center p-t-30 p-b-30"><b>업주회원 회원가입</b></h3>
					<%
					}
					%>
					
					<label>아이디</label>
					<div class="bor8 m-b-20 how-pos4-parent">
						<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30"
					 	type="text" id="id" name="id" required="required" size="20" placeholder="4-16자리 영문자, 숫자 조합"><br>
					</div>
					<span class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" id="checkIdResult"></span>
					
					<label>비밀번호</label>
					<div class="bor8 m-b-20 how-pos4-parent">
						<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30"
					 	type="password" id="pass" name="pass" required="required" size="20" placeholder="8-20자리 영문자, 숫자, 특수문자 조합" onkeyup="checkPass(this)"><br>
					</div>
					<span class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" id="checkPassResult"></span>
					
					<label>비밀번호 확인</label>
					<div class="bor8 m-b-20 how-pos4-parent">
						<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30"
					 	type="password" id="pass_re" name="pass_re" required="required" size="20" placeholder="위와 동일하게 입력" onkeyup="checkPass_re()"><br>
					</div>
					<span class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" id="checkPassResult_re"></span>
					
					<label>이름</label>
					<div class="bor8 m-b-20 how-pos4-parent">
						<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30"
					 	type="text" id="name" name="name" required="required" size="20">
					</div>
					
					<label>E-Mail</label>
					<div class="bor8 m-b-20 how-pos4-parent">
						<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30"
					 	type="text" id="email1" name="email1" required="required" size="10">&nbsp;@
					</div>
					<div class="bor8 m-b-20 how-pos4-parent">
						<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30"
					 	type="text" id="email2" name="email2" required="required" size="10">
					</div>
					<select name="selectDomain" onchange="changeDomain(this)">
						<option value="">직접입력</option>	
						<option value="naver.com">naver.com</option>
						<option value="gmail.com">gmail.com</option>
						<option value="daum.net">daum.net</option>
					</select>
					<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30"
					 type ="hidden" id="emailCheck" name="emailCheck">
					<input type="button" value="메일인증전송" class="dup" onclick="sendEmail()">
					
					<label>전화번호</label>
					<select name="selectDomain" onchange="changePhone(this)">
						<option value="">직접입력</option>	
						<option value="010">010</option>
						<option value="051">051</option>
					</select>
					<div class="bor8 m-b-20 how-pos4-parent">
						<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30"
					 	type="text" id="phone1" name="phone1" required="required" size="5">&nbsp;-
						<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30"
					 	type="text" id="phone2" name="phone2" required="required" size="8">&nbsp;-
						<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30"
					 	type="text" id="phone3" name="phone3" required="required" size="8">
					</div>
					
					<label>우편번호</label>
					<div class="bor8 m-b-20 how-pos4-parent">
						<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30"
						type="text" id="postcode" placeholder="우편번호" required="required">
					</div>
					<input type="button" value="우편번호 검색" class="dup" onclick="ad_check()">
					
					<label>주소</label>
					<div class="bor8 m-b-20 how-pos4-parent">
						<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30"
					 	type="text" name="roadAddress" id="roadAddress" placeholder="도로명주소" required="required">
					</div>
					<div class="bor8 m-b-20 how-pos4-parent">
						<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30"
						type="text" name="jibunAddress" id="jibunAddress" placeholder="지번주소" required="required"><br>
					</div>
					<div class="bor8 m-b-20 how-pos4-parent">
						<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30"
					 	type="text" name="detailAddress" id="detailAddress" placeholder="상세주소" required="required">
					</div>
					<input class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer"
					 type="submit" value="회원가입">
					<input class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer"
					 type="button" value="취소" onclick="history.back()">
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