<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
<script type="text/javascript">

	function selectEmail(ele) {

		var $ele = $(ele);
		var $email2 = $('input[name=email2]');

		if ($ele.val() == "1") {
			$email2.attr('readonly', false);
			$email2.val('');
		} 
		else {
			$email2.attr('readonly', true);
			$email2.val($ele.val());
		}
	}

	function changePhone(phone) {
		document.joinForm.phone1.value = phone.value;
	}

	var regex = /^[A-Za-z0-9]{4,16}$/gi;

	$(document).ready(function() {
		$('#id').change(function() {
			$.ajax('IDcheck.me', {
				data : {
					id : $('#id').val()
				},
				success : function(sdata) {

					var regex = /^[A-Za-z0-9]{4,16}$/gi;
					var str = '사용가능한 아이디';

					if (!regex.test($('#id').val())) {
						
						$('#checkIdResult').html('조건불만족 아이디');
						$('#checkIdResult').css("color", "red");
						$('#id').select();
					} 
					else {
						
						$('#checkIdResult').html(sdata);

						if ($.trim($('#checkIdResult').text()) == str) {
							
							idResult = true;
							$('#checkIdResult').css("color", "blue");
						} 
						else {
							idResult = false;
							$('#checkIdResult').css("color", "red");
							$('#id').select();
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

		if (lenRegex.exec(pass.value)) {

			has = 0;

			has += upengRegex.exec(pass.value) ? 1 : 0;
			has += lowengRegex.exec(pass.value) ? 1 : 0;
			has += numRegex.exec(pass.value) ? 1 : 0;
			has += specRegex.exec(pass.value) ? 1 : 0;

			if (has < 3) {
				element_pw.innerHTML = "부적합한 비밀번호";
				passResult = false;
				element_pw.style.color = "red";
			} 
			else {
				element_pw.innerHTML = "적합한 비밀번호";
				passResult = true;
				element_pw.style.color = "blue";
			}
		} 
		else {
			element_pw.innerHTML = "부적합한 비밀번호";
			passResult = false;
			element_pw.style.color = "red";
		}
	}

	function checkPass_re() {

		var element_pw = document.getElementById('checkPassResult_re');
		var PW = document.joinForm.pass;
		var RE = document.joinForm.pass_re;

		if (PW.value == RE.value) {
			element_pw.innerHTML = "비밀번호 일치";
			passResult_re = true;
			element_pw.style.color = "blue";
		} 
		else {
			element_pw.innerHTML = "비밀번호 불일치";
			passResult_re = false;
			element_pw.style.color = "red";
		}
	}

	function sendEmail() {

		var email1 = $('#email1').val();
		var email2 = $('#email2').val();
		var email = $('#email1').val() + "@" + $('#email2').val();

		if (email1 == "") {
			alert("이메일주소를 입력하세요.");
			return;
		} 
		else if (email2 == "") {
			alert("도메인 주소를 입력하세요.");
			return;
		}

		url = "member/email_check.jsp?email=" + email;
		open(url, "confirm", "width=500,height=180");
	}

	function ad_check() {
		window.open("Address.me", "", "width=500, height=200");
	}

	function checkSubmit() {

		var email1 = $('#email1').val();
		var email2 = $('#email2').val();
		var email = $('#email1').val() + "@" + $('#email2').val();
		var emailCheck = $('#emailCheck').val();

		if (emailCheck == "" || emailCheck != email) {
			alert("이메일 인증을 다시 해주세요");
			$('#email1').focus();
			return false;
		}
		if (idResult == true && passResult == true && passResult_re == true) {
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
	%>
	<!-- Header -->
	<jsp:include page="../inc/header/header-v4.jsp" />
	<!-- Cart -->
	<jsp:include page="../inc/cart/cart.jsp" />
	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92"
		style="background-image: url('images/bg-01.jpg');">
		<%
		if(customer_owner.equals("c")){
		%>
		<h2 class="ltext-105 cl0 txt-center">일반 회원가입</h2>
		<%
		} else{
		%>
		<h2 class="ltext-105 cl0 txt-center">업주 회원가입</h2>
		<%
		}
		%>
	</section>

	<!-- 일반 회원 가입 페이지 -->
	<form action="MemberJoinPro.me" method="post" name="joinForm"
		onsubmit="return checkSubmit()">
		<section class="bg0 p-t-104 p-b-116">
			<div class="container">
				<div class="flex-w flex-tr row justify-content-center">
					<div class="size-210-1 bor10 flex-w flex-col-m p-lr-100 p-tb-30 w-full-md">
						<input type="hidden" name="customer_owner" value=<%=customer_owner %>>
						<br> <label>아이디</label>
						<div class="bor8_1 how-pos4-parent row text-center">
							<input class="stext-111 cl2 plh5 size-50 p-l-10 p-r-10 p-t-10 p-b-10"
							type="text" id="id" name="id" required="required" size="20" placeholder="4-16자리 영문자, 숫자 조합"><br>
						</div>
						<span class="stext-111-2 cl2 plh5 size-50 p-r-30 p-b-10" id="checkIdResult"></span>
						
						<label>비밀번호</label>
						<div class="bor8_1 how-pos4-parent row text-center">
							<input class="stext-111 cl2 plh5 size-50 p-l-10 p-r-10 p-t-10 p-b-10"
							type="password" id="pass" name="pass" required="required"
							size="20" placeholder="8-20자리 영문자, 숫자, 특수문자 조합" onkeyup="checkPass(this)"><br>
						</div>
						<span class="stext-111-2 cl2 plh3 size-50 p-r-30 p-b-10" id="checkPassResult"></span>
						
						<label>비밀번호 확인</label>
						<div class="bor8_1 how-pos4-parent row text-center">
							<input class="stext-111 cl2 plh5 size-50 p-l-10 p-r-10 p-t-10 p-b-10"
							type="password" id="pass_re" name="pass_re" required="required" 
							size="20" placeholder="위와 동일하게 입력" onkeyup="checkPass_re()"><br>
						</div>
						<span class="stext-111-2 cl2 plh3 size-50 p-r-30 p-b-10" id="checkPassResult_re"></span>
						
						<label>이름</label>
						<div class="bor8_1 how-pos4-parent row text-center">
							<input class="stext-111 cl2 plh5 size-50 p-l-10 p-r-10 p-t-10 p-b-10" 
							type="text" id="name" name="name" required="required" size="20">
						</div>
						<span class="stext-111-2 cl2 plh3 size-50 p-r-30 p-b-10"></span>

						<label>E-Mail</label>
						<div class="input-group triple-input row" width: 100%;">
							<div class="input-group triple-input bor8_2">
								<input class="www2 form-control" type="text" id="email1" name="email1" required="required">&nbsp;@&nbsp;
								<input class="www2 form-control" type="text" id="email2" name="email2" required="required">
							</div>
							<select id="mail_select" onChange="selectEmail(this)">
								<option value="" selected>선택하세요</option>
								<option value="naver.com">naver.com</option>
								<option value="gmail.com">gmail.com</option>
								<option value="hanmail.com">hanmail.com</option>
								<option value="1">직접입력</option>
							</select>
							<input type ="hidden" id="emailCheck" name="emailCheck">
							<button type="button" id="emailckButton" class="btn btn-secondary" onclick="sendEmail()">
							메일인증전송<i class="fa fa-check spaceLeft"></i> </button>
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
								<input class="www2 form-control" type="text" name="phone1" required="required">&nbsp;-&nbsp; 
								<input class="www2 form-control" type="text" name="phone2" required="required">&nbsp;-&nbsp; 
								<input class="www2 form-control" type="text" name="phone3" required="required">
							</div>
						</div>
						<span class="stext-111-2 cl2 plh3 size-50 p-r-30 p-b-10"></span>

						<label>주소</label>
						<div class="input-group triple-input row"width: 100%;">
							<div class="input-group triple-input bor8_2">
								<input class="www3 form-control" type="text" id="postcode" required="required">
								<div class="input-group triple-input ">
									<button type="button" class="btn btn-secondary" onclick="ad_check()">
									우편번호<i class="fa fa-check spaceLeft"></i></button>
								</div>
							</div>
						</div>
						<div class="hang2">
							<div class="bor8_4 how-pos4-parent row text-center">
								<input class="stext-111-1 cl2 plh3 size-100 p-l-10 p-r-10 p-t-10 p-b-10"
								type="text" name="roadAddress" id="roadAddress" placeholder="도로명주소" required="required">
							</div>
						</div>
						<div class="bor8_4 how-pos4-parent row text-center">
							<input class="stext-111-1 cl2 plh3 size-100 p-l-10 p-r-10 p-t-10 p-b-10"
							type="text" name="jibunAddress" id="jibunAddress" placeholder="지번주소" required="required">
						</div>
						<div class="bor8_4 how-pos4-parent row text-center">
							<input class="stext-111-1 cl2 plh3 size-100 p-l-10 p-r-10 p-t-10 p-b-10"
								type="text" name="detailAddress" id="detailAddress" placeholder="상세주소" required="required">
						</div><br>

						<div class="form-group text-center p-t-10">
							<button type="submit" id="join-submit" class="btn btn-dark">
							회원가입<i class="fa fa-check spaceLeft"></i></button>
							<button type="button" class="btn btn-dark" onclick="location.href='MemberStart.me'">
							취소<i class="fa fa-times spaceLeft"></i></button>
						</div>
					</div>
				</div>
			</div>
		</section>
	</form>

	<!-- Footer -->
	<jsp:include page="../inc/footer/footer.jsp" />
	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top"> <i
			class="zmdi zmdi-chevron-up"></i>
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
		$(".js-select2").each(function() {
			$(this).select2({
				minimumResultsForSearch : 20,
				dropdownParent : $(this).next('.dropDownSelect2')
			});
		})
	</script>
	<!--===============================================================================================-->
	<script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function() {
			$(this).css('position', 'relative');
			$(this).css('overflow', 'hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed : 1,
				scrollingThreshold : 1000,
				wheelPropagation : false,
			});

			$(window).on('resize', function() {
				ps.update();
			})
		});
	</script>
	<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>