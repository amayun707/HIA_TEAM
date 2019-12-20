<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
</head>
<body class="animsition">

	<!-- Header -->
	<jsp:include page="../inc/header/header-v4.jsp"/>
	<!-- Cart -->
	<jsp:include page="../inc/cart/cart.jsp"/>
	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('images/bg-01.jpg');">
		<h2 class="ltext-105 cl0 txt-center">
			로그인
		</h2>
	</section>

	<!-- 로그인 페이지 -->
	<form action="MemberLoginPro.me" method="post" name="loginForm"
		onsubmit="return checkSubmit()">
		<section class="bg0 p-t-104 p-b-116">
			<div class="container">
				<div class="flex-w flex-tr row justify-content-center">
					<div class="size-210 bor10 flex-w flex-col-m p-lr-100 p-tb-30 w-full-md">

						<label>아이디</label>
						<div class="bor8_5 how-pos4-parent row text-center">
							<input class="stext-111 cl2 plh3 size-50 p-l-10 p-r-10 p-t-10 p-b-10"
							type="text" id="id" name="id" required="required" size="20"><br>
						</div>
						
						<label>비밀번호</label>
						<div class="bor8_5 how-pos4-parent row text-center">
							<input class="stext-111 cl2 plh3 size-50 p-l-10 p-r-10 p-t-10 p-b-10"
							type="password" id="pass" name="pass" required="required" size="20"><br>
						</div>

						<div class="form-group text-center">
							<button type="submit" id="join-submit" class="btn btn-dark" onclick="location.href='MemberLogin.me'">
							로그인<i class="fa fa-check spaceLeft"></i> </button>
							<button type="button" class="btn btn-dark" onclick="location.href='MemberStart.me'">
							회원가입<i class="fa fa-check spaceLeft"></i></button>
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
	<script src="./js/main.js"></script><!-- Footer -->
</body>
</html>