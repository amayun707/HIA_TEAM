<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
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
<title>Insert title here</title>
<script src="./js/jquery-3.4.1.js"></script>
<script type="text/javascript">

	$(document).ready(function() {
		$('#customer').click(function(){
			$('#customer_owner').val('c');
			$('#MemberStart').submit();
		});
		
		$('#owner').click(function(){
			$('#customer_owner').val('o');
			$('#MemberStart').submit();
		});
	});
	
</script>
</head>
<body class="animsition">
	<!-- Header -->
	<jsp:include page="../inc/header/header-v4.jsp"/>
	<!-- Cart -->
	<jsp:include page="../inc/cart/cart.jsp"/>
	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('images/bg-01.jpg');">
		<h2 class="ltext-105 cl0 txt-center">
			회원 가입 선택
		</h2>
	</section>
	<!-- Content page -->
	<form action="MemberJoin.me" method="post" id="MemberStart" name="MemberStart">
	<section class="bg0 p-t-104 p-b-116">
		<div class="container">
			<div class="flex-w flex-tr">
				<div class="size-210 bor10 flex-w flex-col-m p-lr-100 p-tb-30 w-full-md">
					<input type="hidden" id="customer_owner" name="customer_owner" value="" />
						<h3 class="mtext-105 cl2 txt-center p-t-30 p-b-30"><b>일반회원 회원가입</b></h3>
						<p class="stext-115 cl6 size-127 p-t-18">
								&nbsp;&nbsp;<b>일반 회원이란,</b><br><br>
								 저희 사이트를 방문하여 커피를 주문하거나<br>전포거리카페에 대한 정보를 얻을 수 있는<br>기본적인 서비스를 제공받는 회원입니다.
						</p>
						<input class="flex-c-m stext-101 cl0 size-126 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer"
						type="button" id="customer" value="일반 회원  GO!GO!" onclick="Customer()">
				</div>
				<div class="size-210 bor10 flex-w flex-col-m p-lr-100 p-tb-30 w-full-md">
					<input type="hidden" name="customer_owner">
						<h3 class="mtext-105 cl2 txt-center p-t-30 p-b-30"><b>업주회원 회원가입</b></h3>
						<p class="stext-115 cl6 size-127 p-t-18">
								&nbsp;&nbsp;<b>업주 회원이란,</b><br><br>
								 저희 사이트를 통해 가게에 홍보를 하거나<br>사이트를 사용하는 고객 층을 확보할 수 있는<br>업주들을 위한 서비스를 제공받는 회원입니다.
						</p>
						<input class="flex-c-m stext-101 cl0 size-126 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer"
						type="button" id="owner" value="카페 업주  GO!GO!" onclick="Owner()">
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