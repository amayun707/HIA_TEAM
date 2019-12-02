<%@page import="org.json.simple.JSONObject"%>
<%@page import="vo.CafeBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="vo.PageInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
PageInfo pi = (PageInfo)request.getAttribute("pageInfo");
ArrayList<CafeBean> cafeList =  (ArrayList)request.getAttribute("cafeList");
JSONObject cafe = (JSONObject)request.getAttribute("cafeBean");
String coffee_name = request.getParameter("coffee_name");
int nowPage = pi.getPage();
int maxPage = pi.getMaxPage();
int startPage = pi.getStartPage();
int endPage = pi.getEndPage();
int listCount = pi.getListCount();
%>
<!DOCTYPE html>
<style>
.width{
	width : 70%;
	margin-top: 110px;
	margin-left: 180px;}
.image{
	position: relative;
    left: 45px;}
.button{
	position: relative;
    left: -15px;}
.info{
	height: 250px;}
.size-b{
	min-width: 150px;
    height: 50px;
    position: relative;
    left: -4px;}
.nDisplay{
	display:none;}
.cInfo{
	position: relative;
    top: -22px;
    right: -20px;}
.rating{
	position: relative;
	top: -5px;
    right: 7px;
    transform: scale(1.4);}
.cList{
	position: relative;
    left: 3px}
#h1{
	margin-bottom: 20px;}
</style>
<html lang="en">
<head>
<title>Product</title>
<meta charset="UTF-8">
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
	href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/slick/slick.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body class="animsition">

	<!-- Header -->
	<jsp:include page="./inc/header/header-v4.jsp" />
	<!-- Cart -->
	<jsp:include page="./inc/cart/cart.jsp" />
	<!-- Product -->
	<div class="bg0 m-t-23 p-b-140">
		<div class="container">
			<div class="flex-w flex-sb-m">
				<div class="flex-w flex-c-m m-tb-10">
					<div
						class="flex-c-m stext-106 cl6 size-105 bor4 pointer hov-btn3 trans-04 m-tb-4 js-show-search">
						<i class="icon-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-search"></i>
						<i
							class="icon-close-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
						Search
					</div>
				</div>

				<!-- Search product -->
				<div class="dis-none panel-search w-full p-t-10 p-b-15">
					<div class="bor8 dis-flex p-l-15">
						<button class="size-113 flex-c-m fs-16 cl2 hov-cl1 trans-04 searching">
							<i class="zmdi zmdi-search"></i>
						</button>

						<input class="mtext-107 cl2 size-114 plh2 p-r-15 search-cafe" type="text"
							name="search-product" placeholder="Search">
					</div>
				</div>
			</div>
			<h1 id = "h1"><%=coffee_name %></h1>
			<div class="row isotope-grid">
				<%
				for(int i = 0; i<cafeList.size(); i++){
				%>
				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item">
					<!-- Block2 -->
					<div class="block2"><div class="cafe_num nDisplay"><%=cafeList.get(i).getCafe_num()  %></div>
						<div class="block2-pic hov-img0">	
							<img src="images/product-01.jpg" alt="IMG-PRODUCT"> 
							<%if(coffee_name==""){ %>
							<a href="#"
								class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1 detail">
								커피 선택 </a>
							<%} %>
						</div>

						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l cList">
								<a href="#"
									class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6 c_name"><%=cafeList.get(i).getCafe_name() %></a>
								<%if(coffee_name!=""){ %>￦<div class="stext-105 cl3 cInfo"> <%=cafeList.get(i).getPrice() %></div><%} %>
							</div>
							<div class="block2-txt-child2 flex-r p-t-3">
								<a href="#"
									class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6 rating">
									<%=cafeList.get(i).getRating() %></a>
							</div>
						</div>
					</div>
				</div>
				<%
					}
				%>
			</div>
			<!-- Load more -->
			<div class="flex-c-m flex-w w-full p-t-45">
				<a href="#"
					class="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04">
					Load More </a>
			</div>
		</div>
	</div>


	<!-- Footer -->
	<jsp:include page="./inc/footer/footer.jsp" />
	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top"> <i
			class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>

	<!-- Modal1 -->
	<div class="wrap-modal1 js-modal1 p-t-60 p-b-20">
		<div class="overlay-modal1 js-hide-modal1"></div>

		<div class="container">
			<div class="bg0 p-t-60 p-b-30 p-lr-15-lg how-pos3-parent width">
				<button class="how-pos3 hov3 trans-04 js-hide-modal1">
					<img src="images/icons/icon-close.png" alt="CLOSE">
				</button>
				<div class="row">
					<div class="col-md-6 col-lg-7 p-b-30">
						<div class="p-l-25 p-r-30 p-lr-0-lg">
							<!-- 이미지 -->
							<div class="wrap-slick3 flex-sb flex-w">
<!-- 								<div class="wrap-slick3-dots"></div> -->
<!-- 								<div class="wrap-slick3-arrows flex-sb-m flex-w"></div> -->

								<div class="slick3 gallery-lb image">
									<div class="item-slick3"
										data-thumb="images/product-detail-01.jpg">
										<div class="wrap-pic-w pos-relative">
											<img src="images/product-detail-01.jpg" alt="IMG-PRODUCT" class = "cafeImg">

											<a
												class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
												href="images/product-detail-01.jpg"> <i
												class="fa fa-expand"></i>
											</a>
										</div>
									</div>

									<div class="item-slick3"
										data-thumb="images/product-detail-02.jpg">
										<div class="wrap-pic-w pos-relative">
											<img src="images/product-detail-02.jpg" alt="IMG-PRODUCT">

											<a
												class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
												href="images/product-detail-02.jpg"> <i
												class="fa fa-expand"></i>
											</a>
										</div>
									</div>

									<div class="item-slick3"
										data-thumb="images/product-detail-03.jpg">
										<div class="wrap-pic-w pos-relative">
											<img src="images/product-detail-03.jpg" alt="IMG-PRODUCT">
											<a
												class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
												href="images/product-detail-03.jpg"> <i
												class="fa fa-expand"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
							<!-- 이미지 -->
						</div>
					</div>
					<!-- 본문 -->
					<div class="col-md-6 col-lg-5 p-b-30 button">
						<div class="p-r-50 p-t-5 p-lr-0-lg">
							<h4 class="mtext-105 cl2 js-name-detail p-b-14"></h4>

							<span class="mtext-106 cl2"></span>
							
							<p class="stext-102 cl3 p-t-23 info"></p>

							<div class="p-t-33">

								<div class="flex-w flex-r-m p-b-10">
										<%if(coffee_name==""){ %>
										<button
											class="flex-c-m stext-101 cl0 size-b bg1 bor1 hov-btn1 p-lr-15 trans-04 select">
											커피 리스트</button>
											<%}else{ %>
										<button
											class="flex-c-m stext-101 cl0 size-b bg1 bor1 hov-btn1 p-lr-15 trans-04">
											커피 구매</button>
											<%} %>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button
											class="flex-c-m stext-101 cl0 size-b bg1 bor1 hov-btn1 p-lr-15 trans-04"
											onclick = "location.href='#'">
											카페 상세<%=cafe.get("cafe_name")%></button>
								</div>
							</div>

							<!--  -->
							<div class="flex-w flex-m p-l-100 p-t-40 respon7">
								<div class="flex-m bor9 p-r-10 m-r-11">
									<a href="#"
										class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 js-addwish-detail tooltip100"
										data-tooltip="Add to Wishlist"> <i
										class="zmdi zmdi-favorite"></i>
									</a>
								</div>

								<a href="#"
									class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
									data-tooltip="Facebook"> <i class="fa fa-facebook"></i>
								</a> <a href="#"
									class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
									data-tooltip="Twitter"> <i class="fa fa-twitter"></i>
								</a> <a href="#"
									class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
									data-tooltip="Google Plus"> <i class="fa fa-google-plus"></i>
								</a>
							</div>
						</div>
					</div>
					<!-- 본문 -->
				</div>
			</div>
		</div>
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
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/slick/slick.min.js"></script>
	<script src="js/slick-custom.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/parallax100/parallax100.js"></script>
	<script>
		$('.parallax100').parallax100();
	</script>
	<!--===============================================================================================-->
	<script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<script>
		$('.gallery-lb').each(function() { // the containers for all your galleries
			$(this).magnificPopup({
				delegate : 'a', // the selector for gallery item
				type : 'image',
				gallery : {
					enabled : true
				},
				mainClass : 'mfp-fade'
			});
		});
	</script>
	<!--===============================================================================================-->
	<script src="vendor/isotope/isotope.pkgd.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/sweetalert/sweetalert.min.js"></script>
	<script>
		$('.js-addwish-b2, .js-addwish-detail').on('click', function(e) {
			e.preventDefault();
		});

		$('.js-addwish-b2').each(
				function() {
					var nameProduct = $(this).parent().parent().find(
							'.js-name-b2').jsp();
					$(this).on('click', function() {
						swal(nameProduct, "is added to wishlist !", "success");

						$(this).addClass('js-addedwish-b2');
						$(this).off('click');
					});
				});

		$('.js-addwish-detail').each(
				function() {
					var nameProduct = $(this).parent().parent().parent().find(
							'.js-name-detail').jsp();

					$(this).on('click', function() {
						swal(nameProduct, "is added to wishlist !", "success");

						$(this).addClass('js-addedwish-detail');
						$(this).off('click');
					});
				});

		/*---------------------------------------------*/

		$('.js-addcart-detail').each(
				function() {
					var nameProduct = $(this).parent().parent().parent()
							.parent().find('.js-name-detail').jsp();
					$(this).on('click', function() {
						swal(nameProduct, "is added to cart !", "success");
					});
				});
	</script>
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
	<!--===============================================================================================-->
	<script src = "js/jquery-3.4.1.js"></script>
	<script>
		$('document').ready(function(){
			var coffee_name = $('#h1').text();
			if(coffee_name==""){
				$('.block2').click(function(){
					$.ajax({
						url: "cafe_sDetail.jsp", // 클라이언트가 요청을 보낼 서버의 URL 주소
			    		data: { cafe_num: $(this).find('div.cafe_num').text() },         // HTTP 요청과 함께 서버로 보낼 데이터
			    		dataType : "json",
			    		success: function(data){
			    			$('h4.mtext-105').html(data.cafe_name)
			    			$('span.mtext-106').html(data.cafe_location);
			    			$('p.stext-102').html(data.cafe_info);
			    			$('.select').attr("onclick","location.href='/HIA/CoffeeList.bo?cafe_num="+data.cafe_num+"'");
			    		},
			    		error : function(xhr, status, error){
			    			alert("에러!: " + error);
			    		}	
					});
				});
			}else{
				$('.block2').click(function(){
					var total = Number($('.total').text());
					var count = Number($('div.icon-header-noti').attr('data-notify'));
					var coffee_num = $('#h1').text();
					var filter= $(this).find('img').css('filter');
					var coffee_name = $('#h1').text();
					var cafe_name = $(this).find('a.c_name').text();
					var cafe_num = $(this).find('div.cafe_num').text();
					var price = Number($(this).find('div.stext-105').text());
					if(filter!='blur(4px)'){
						count = count + 1;
						total = total + price;
						$(this).find('img').css('filter','blur(4px)');
						$('ul.header-cart-wrapitem').append(
							"<li class='"+coffee_num+" header-cart-item flex-w flex-t m-b-12'>"+
								"<div class='header-cart-item-img'>"+
									"<img src='images/item-cart-01.jpg' alt='IMG'>"+
								"</div>"+
								"<div class = 'nDisplay coffee_in_cart'>"+coffee_num+"</div>"+
								"<div class='nDisplay cafe_num'>"+cafe_num+"</div>"+
								"<div class='header-cart-item-txt pt'>"+
									"<a href='#' class='header-cart-item-name mb hov-cl1 trans-04'>"+coffee_name+"</a>"+
									"<a href='#' class='header-cart-item-name mb hov-cl1 trans-04'>"+cafe_name+"</a>"+
									"<div class = 'price_amount'>"+
									"<span class='header-cart-item-info'>"+
										price+
									"</span>&nbsp;X"+
									"<input type = 'text' value = '1' class = 'amount'>"+
									"</div>"+
								"</div>"+
							"</li>"
						);
					}
					else{
						count = count-1;
						var price = Number($('li.'+coffee_num).find('.amount').val())*Number($('li.'+coffee_num).find('.header-cart-item-info').text());
						total = total - price;
						$(this).find('img').css('filter','');
						$('li').remove('\.'+coffee_num);
					}
					$('div.icon-header-noti').attr('data-notify', count);
					$('.total').html(total);
				});
			}
			$('.searching').click(function(){
				var search = $('.search-cafe').val();
				location.href="CafeList.bo?search="+search;
			});
			$('.search-cafe').keydown(function(key){
				if(key.keyCode == 13) {
					var search = $('.search-cafe').val();
					location.href="CafeList.bo?search="+search;
				}
			});
		});
</script>
</body>
</html>