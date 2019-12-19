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
String id = (String)session.getAttribute("id");
String sortBy = request.getParameter("sortBy");
int price = Integer.parseInt(request.getParameter("price"));
int nowPage = pi.getPage();
int maxPage = pi.getMaxPage();
int startPage = pi.getStartPage();
int endPage = pi.getEndPage();
int listCount = pi.getListCount();

%>
<!DOCTYPE html>
<html lang="en">
<head>
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
.b-size{
	min-width: 150px;
    height: 50px;
    position: relative;
    left: -4px;}
.nDisplay{
	display:none;}
#h1{
	margin-bottom: 20px;}
.wid{
<%if(coffee_name!=""){%>
	width:32%;
<%} else {%>
	width:17%;
<%}%>
	position: absolute;
    z-index: 100;
}
.p-r{
	margin-right:70px;}
.filterwid{
	width: 141px;}
.widful{
	width: 100%; padding-left:50px;}
.select {
	margin-right: 14px;
    transform: translateX(-10px);
}
#pageList{
	margin:auto;
	width: 1024px;
	text-align: center;}
.cartItem{
	position: relative;
    top: 10px;}
</style>
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
					<div class="flex-c-m stext-106 cl6 size-104 bor4 pointer hov-btn3 trans-04 m-r-8 m-tb-4 js-show-filter">
						<i class="icon-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-filter-list"></i>
						<i class="icon-close-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
						 Filter
					</div>
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
			<div class="dis-none panel-filter wid p-t-10">
					<div class="wrap-filter flex-w bg6 widful p-t-27 p-lr-15-sm">
						<div class="filterwid p-r p-b-27">
							<div class="mtext-102 cl2 p-b-15">
								Filter
							</div>

							<ul class = "filul">
								<li class="p-b-6">
									<a href="#" class="filter-link stext-106 trans-04">가나다순</a>
								</li>
								<li class="p-b-6">
									<a href="#" class="filter-link stext-106 trans-04">인기순</a>
								</li><li class="p-b-6">
									<a href="#" class="filter-link stext-106 trans-04">위치순</a>
								</li>
								<li class="p-b-6">
									<a href="#" class="filter-link stext-106 trans-04">별점순</a>
								</li>
								<%if(coffee_name!=""){ %>
								<li class="p-b-6">
									<a href="#" class="filter-link stext-106 trans-04">가격 : 오름차순</a>
								</li>
								<li class="p-b-6">
									<a href="#" class="filter-link stext-106 trans-04">가격 : 내림차순</a>
								</li>
								<%} %>
							</ul>
						</div>
						
						<%if(coffee_name!=""){ %>
						<div class="filterwid p-r-15 p-b-27">
							<div class="mtext-102 cl2 p-b-15">
								Price
							</div>
			
							<ul class="filul2">
								<li class="p-b-6">
									<a href="#" class="filter-link stext-106 trans-04">모두</a>
								</li>

								<li class="p-b-6">
									<a href="#" class="filter-link stext-106 trans-04">3000원 - 4000원</a>
								</li>

								<li class="p-b-6">
									<a href="#" class="filter-link stext-106 trans-04">4000원 - 5000원</a>
								</li>

								<li class="p-b-6">
									<a href="#" class="filter-link stext-106 trans-04">5000원 - 6000원</a>
								</li>

								<li class="p-b-6">
									<a href="#" class="filter-link stext-106 trans-04">6000원 - 7000원</a>
								</li>

								<li class="p-b-6">
									<a href="#" class="filter-link stext-106 trans-04">7000원+</a>
								</li>
							</ul>
						</div>
						<%} %>
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
						<div class="block2-pic hov-img0 <%=cafeList.get(i).getCoffee_num() %>">	
							<img src="images/<%=cafeList.get(i).getCafe_file() %>" alt="IMG-PRODUCT"> 
							<%if(coffee_name==""){ %>
							<a href="#"
								class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1 detail">
								커피 선택</a>
							<%} %>
						</div>

						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l ">
								<a href="#"
									class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6 c_name"><%=cafeList.get(i).getCafe_name() %></a>
								<%if(coffee_name!=""){ %><span class="stext-105 cl3"> <%=cafeList.get(i).getPrice() %></span><%} %>
								<%if(coffee_name!=""){ %><div class="nDisplay coffee_num"><%=cafeList.get(i).getCoffee_num() %></div><%} %>
							</div>
							<div class="block2-txt-child2 flex-r p-t-3">
								<a href="#"
									class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
									<%=cafeList.get(i).getRating() %></a>
							</div>
						</div>
					</div>
				</div>
				<%
					}
				%>
			</div>
<!-- --------------------------------------------------------------------------------------------- -->
 <section id="pageList">
   <%if(nowPage <= 1) {%>
         ＜&nbsp;&nbsp;&nbsp;&nbsp;
   <%} else {%>
         <a href="CafeList.bo?page=<%=nowPage - 1%>">＜</a>&nbsp;&nbsp;&nbsp;&nbsp;
   <%} %>
   <%for(int i = startPage; i <= endPage; i++) { 
         if(i == nowPage) { %>
            <%=i %>&nbsp;&nbsp;&nbsp;&nbsp;
      <%} else { %>
            <a href="CafeList.bo?page=<%=i %>"><%=i %></a>&nbsp;&nbsp;&nbsp;&nbsp;
      <%} %>
   <%} %>
   <%if(nowPage >= maxPage) { %>
         ＞
   <%} else { %>
         <a href="CafeList.bo?page=<%=nowPage + 1 %>">＞</a>
   <%} %>
   </section>
<!-- --------------------------------------------------------------------------------------------- -->
         
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
											class="flex-c-m stext-102 cl0 b-size bg1 bor1 hov-btn1 p-lr-15 trans-04 select">
											커피 리스트</button>
											<%}else{ %>
										<button
											class="flex-c-m stext-102 cl0 b-size bg1 bor1 hov-btn1 p-lr-15 trans-04">
											커피 구매</button>
											<%} %>
										<button
											class="flex-c-m stext-102 cl0 b-size bg1 bor1 hov-btn1 p-lr-15 trans-04 select1"> 
<%-- 											onclick = "location.href='cafeDetail.bo?cafe_num=<%=cafe.get("cafe_num") %>&page=<%=nowPage%>'"> --%>
<%-- 											카페 상세<%=cafe.get("cafe_name")%> --%>
											카페상세</button>
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
			// 문서를 띄울때 장바구니에 있는 리스트 blur처리 해주기
			$('ul.header-cart-wrapitem').find('li.header-cart-item').each(function(){
				var coffee_in_cart = $(this).find('div.coffee_in_cart').text();
				$('div.isotope-grid').find('.block2').each(function(){
					var coffee_in_list = $(this).find('div.coffee_num').text();
					if(coffee_in_cart == coffee_in_list){
						$(this).find('img').css('filter','blur(4px)');
					}
				});
			});
			
			$('div.js-show-cart').click(function(){
				$('ul.header-cart-wrapitem').find('li.header-cart-item').each(function(){
					var list = this;
					var coffee_num = $(this).find('div.coffee_in_cart').text();	
					//장바구니에서 이미지를 클릭했을 있던 리스트에서 블러 빼기
					$(this).find('div.header-cart-item-img').click(function(){
						$('div.isotope-grid').find('\.'+coffee_num).find('img').css('filter','');
					});
				});
			});
			
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
			    			$('.select').attr("onclick","location.href='CoffeeList.bo?cafe_num="+data.cafe_num+"'");
			    			$('.select1').attr("onclick","location.href='cafeDetail.bo?cafe_num="+data.cafe_num+"'");
			    			$('img.cafeImg').attr("src","images/"+data.cafe_file);
			    			$('a.how-pos1').attr("href","images/"+data.cafe_file);
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
					var coffee_num = $(this).find('div.coffee_num').text();
					var filter= $(this).find('img').css('filter');
					var coffee_name = $('#h1').text();
					var cafe_name = $(this).find('a.c_name').text();
					var cafe_num = $(this).find('div.cafe_num').text();
					var price = Number($(this).find('span.stext-105').text());
					if(filter!='blur(4px)'){
						count = count + 1;
						total = total + price;
						$(this).find('img').css('filter','blur(4px)');
						$('ul.header-cart-wrapitem').append(
							"<li class='"+coffee_num+" header-cart-item flex-w flex-t m-b-12'>"+
								"<div class='header-cart-item-img cartItem'>"+
									"<img src='images/<%=cafeList.get(0).getCoffee_file() %>' alt='IMG'>"+
								"</div>"+
								"<div class = 'nDisplay coffee_in_cart'>"+coffee_num+"</div>"+
								"<div class='nDisplay cafe_num'>"+cafe_num+"</div>"+
								"<div class='header-cart-item-txt pt'>"+
									"<a href='#' class='header-cart-item-name mb hov-cl1 trans-04'>"+coffee_name+"</a>"+
									"<a href='#' class='header-cart-item-name mb hov-cl1 trans-04'>"+cafe_name+"</a>"+
									"<div class = 'price_amount'>"+
									"<span class='header-cart-item-info'>"+price+
									"</span>&nbsp;X<button class = 'payBtn'>구매</button><input type = 'text' value = '1' class = 'amount'>"+
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
			
			//필터 선택시 줄귿기
			$('ul.filul').find('li').each(function(){
				$(this).click(function(){
					$('ul.filul').find('li').each(function(){
						$(this).find('a').removeClass('filter-link-active');
					});
					$(this).find('a').addClass('filter-link-active');
				});			
			});
			$('ul.filul2').find('li').each(function(){
				$(this).click(function(){
					$('ul.filul2').find('li').each(function(){
						$(this).find('a').removeClass('filter-link-active');
					});
					$(this).find('a').addClass('filter-link-active');
				});			
			});
			
			//필터 믿줄 귿기
			$('ul.filul').find('li').each(function(){
				var sortBy = "<%=sortBy%>";
				if(sortBy=="cafe_name") {
					sortBy = "가나다순"
				} else if(sortBy=="count") {
					sortBy = "인기순";
				} else if(sortBy=="cafe_location") {
					sortBy = "위치순";
				} else if(sortBy=="rating desc") {
					sortBy = "별점순";
				}  else if(sortBy=="b.price asc") {
					sortBy = "가격 : 오름차순";
				} else if(sortBy=="b.price desc") {
					sortBy = "가격 : 내림차순";
				}  
				if($(this).find('a').text()==sortBy) {
					$(this).find('a').addClass('filter-link-active');
				}
			});

			$('ul.filul2').find('li').each(function(){
				var price = "<%=price%>";
				if(price=="0"){
					price="모두";
				}else if(price=="3000"){
					price="3000원 - 4000원";
				}else if(price=="4000"){
					price="4000원 - 5000원";
				}else if(price=="5000"){
					price="5000원 - 6000원";
				}else if(price=="6000"){
					price="6000원 - 7000원";
				}else if(price=="7000"){
					price="7000원+";
				}
				if($(this).find('a').text()==price){
					$(this).find('a').addClass('filter-link-active');
				}
			});
			
			//필터 닫았을 때 필터로 검색
			$('div.js-show-filter').click(function(){
				if($('div.js-show-filter').hasClass('show-filter') == false){
					var SortBy = $('ul.filul').find('a.filter-link-active').text();
					var Price = 0;
					if(SortBy=="가나다순") {
						SortBy = "cafe_name"
					} else if(SortBy=="인기순") {
						SortBy = "count";
					} else if(SortBy=="위치순") {
						SortBy = "cafe_location";
					} else if(SortBy=="별점순") {
						SortBy = "rating desc";
					}  else if(SortBy=="가격 : 오름차순") {
						SortBy = "b.price asc";
					}  else if(SortBy=="가격 : 내림차순") {
						SortBy = "b.price desc";
					}  
					
					if(coffee_name!=""){
						var Price = $('ul.filul2').find('a.filter-link-active').text();
						if(Price=="모두"){
							Price=0;
						}else if(Price=="3000원 - 4000원"){
							Price=3000;
						}else if(Price=="4000원 - 5000원"){
							Price=4000;
						}else if(Price=="5000원 - 6000원"){
							Price=5000;
						}else if(Price=="6000원 - 7000원"){
							Price=6000;
						}else if(Price=="7000원+"){
							Price=7000;
						}
					}
					location.href="CafeList.bo?coffee_name=<%=coffee_name%>&SortBy="+SortBy+"&Price="+Price;
				}
			});
		});
</script>
</body>
</html>