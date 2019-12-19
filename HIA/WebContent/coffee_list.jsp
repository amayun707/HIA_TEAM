<%@page import="vo.CoffeeBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="vo.PageInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
PageInfo pi = (PageInfo)request.getAttribute("pageInfo");
ArrayList<CoffeeBean> coffeeList =  (ArrayList)request.getAttribute("coffeeList");
String search = request.getParameter("search");
String category=request.getParameter("category");
if(category==null){
	category="";
}
String sortBy = request.getParameter("sortBy");
int price = Integer.parseInt(request.getParameter("price"));
String id = (String)session.getAttribute("id");
int cafe_num = Integer.parseInt(request.getParameter("cafe_num"));
int nowPage = pi.getPage();
int maxPage = pi.getMaxPage();
int startPage = pi.getStartPage();
int endPage = pi.getEndPage();
int listCount = pi.getListCount();
%>
<style>
.nDisplay{
	display:none;}
#h1{
	margin-bottom: 20px;}
<%if(cafe_num!=0){%>
.wid{
	width:28%;
	transform: translateX(823px);
	position: absolute;
    z-index: 100;}
<%} else {%>
.wid{
	width: 20%;
	transform: translateX(900px);
	position: absolute;
    z-index: 100;}
<%}%>
.p-r{
	margin-right:70px;}
.filterwid{
	width: 141px;}
.widful{
	width: 100%; padding-left:100px;}
.p-t-7{
	position: relative;
    top: -8px;}
.cartItem{
	position: relative;
    top: 10px;}
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
				<div class="flex-w flex-l-m filter-tope-group m-tb-10">
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						value="">All Coffee</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						value="coffee">coffee</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						value="latte">latte</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						value="smoothie">smoothie</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						value="frappe">frappe</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						value="ade">ade</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						value="juice">juice</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						value="tea">tea</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						value="etc">etc</button>
					<div class = "nDisplay category"><%=category %></div>
					<div class = "nDisplay cafe"><%=cafe_num %></div>
				</div>
		
				<div class="flex-w flex-c-m m-tb-10">
				<%if(cafe_num>0) {%>
					<div class="flex-c-m stext-106 cl6 size-104 bor4 pointer hov-btn3 trans-04 m-r-8 m-tb-4 js-show-filter">
						<i class="icon-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-filter-list"></i>
						<i class="icon-close-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
						 Filter
					</div>
				<%} %>
					<div class="flex-c-m stext-106 cl6 size-105 bor4 pointer hov-btn3 trans-04 m-tb-4 js-show-search">
						<i class="icon-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-search"></i>
						<i	class="icon-close-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
						Search
					</div>
				</div>
					
				<!-- Search product -->
				<div class="dis-none panel-search w-full p-t-10 p-b-15">
					<div class="bor8 dis-flex p-l-15">
						<button class="size-113 flex-c-m fs-16 cl2 hov-cl1 trans-04 search">
							<i class="zmdi zmdi-search"></i>
						</button>

						<input class="mtext-107 cl2 size-114 plh2 p-r-15 search-cafe" type="text"
							name="search-product" placeholder="Search">
					</div>
				</div>
			</div>
			
			<%if(cafe_num>0) {
					if(coffeeList.size()>0){%>
			<h1 id ="h1"><%=coffeeList.get(0).getCafe_name() %></h1>
			<%	}
				} else {%>
			<h1 id= "h1"></h1>
			<%} %>
			<!-- Filter -->
			<%if(cafe_num>0){ %>
				<div class="dis-none panel-filter wid p-t-10">
					<div class="wrap-filter flex-w bg6 widful p-t-27 p-lr-15-sm">
						<div class="filterwid p-r p-b-27">
							<div class="mtext-102 cl2 p-b-15">
								Sort By
							</div>

							<ul class = "filul">
								<li class="p-b-6">
									<a href="#" class="filter-link stext-106 trans-04">가나다순</a>
								</li>
								<li class="p-b-6">
									<a href="#" class="filter-link stext-106 trans-04">가격 : 오름차순</a>
								</li>

								<li class="p-b-6">
									<a href="#" class="filter-link stext-106 trans-04">가격 : 내림차순</a>
								</li>
								<li class="p-b-6">
									<a href="#" class="filter-link stext-106 trans-04">인기순</a>
								</li>
							</ul>
						</div>
						<div class="filterwid p-r-15 p-b-27">
							<div class="mtext-102 cl2 p-b-15">
								Price
							</div>

							<ul class="filul2">
								<li class="p-b-6">
									<a href="#" class="filter-link stext-106 trans-04">모두</a>
								</li>

								<li class="p-b-6">
									<a href="#" class="filter-link stext-106 trans-04">1000원 - 2000원</a>
								</li>

								<li class="p-b-6">
									<a href="#" class="filter-link stext-106 trans-04">2000원 - 3000원</a>
								</li>

								<li class="p-b-6">
									<a href="#" class="filter-link stext-106 trans-04">3000원 - 4000원</a>
								</li>

								<li class="p-b-6">
									<a href="#" class="filter-link stext-106 trans-04">4000원 - 5000원</a>
								</li>

								<li class="p-b-6">
									<a href="#" class="filter-link stext-106 trans-04">5000원+</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<%} %>
			<div class="row isotope-grid">
				<%
					for (int i = 0; i < coffeeList.size(); i++) {
				%>
				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0 <%=coffeeList.get(i).getCoffee_num() %>">
							<img src="images/<%=coffeeList.get(i).getCoffee_file() %>" alt="IMG-PRODUCT"> 
							<%if(cafe_num==0){ %><a
								href="CafeList.bo?coffee_name=<%=coffeeList.get(i).getCoffee_name() %>"
								class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04">
								카페 보기 </a>	
						<%} %>
						</div>

						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l ">
								<a href="#"
									class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6"><%=coffeeList.get(i).getCoffee_name() %></a>
								<%if(cafe_num!=0){ %>
								<span class="stext-105 cl3"> <%=coffeeList.get(i).getPrice() %>
								<%} %>
								</span>
							</div>

							<div class="block2-txt-child2 flex-r p-t-3 p-t-7">
								<%=coffeeList.get(i).getCoffee_category() %>
							</div>
							<div class="nDisplay coffee"><%=coffeeList.get(i).getCoffee_num() %></div>
							<div class="nDisplay cafe_name"><%=coffeeList.get(i).getCafe_name() %></div>
						</div>
					</div>
				</div>
				<%
					}
				%>
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
	<jsp:include page="coffee_sDetail.jsp"/>
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
	<script src="./js/slick-custom.js"></script>
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
	<script src="./js/main.js"></script>
	<!--===============================================================================================-->
	<script src = "./js/jquery-3.4.1.js"></script>
	<script>
		$('document').ready(function(){
			// 문서를 띄울때 장바구니에 있는 리스트 blur처리 해주기 
			$('ul.header-cart-wrapitem').find('li.header-cart-item').each(function(){
				var coffee_in_cart = $(this).find('div.coffee_in_cart').text();
				$('div.isotope-grid').find('.block2').each(function(){
					var coffee_in_list = $(this).find('div.coffee').text();
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
			
			//카테고리 클릭시 카테고리 별 이동
			$('.filter-tope-group').find('.m-tb-5').each(function(){
				$(this).click(function(){
					var category = $(this).val();
					location.href="CoffeeList.bo?cafe_num=<%=cafe_num%>&category="+category
				});
			});
			
			//카테고리 믿줄 귿기
			$('.filter-tope-group').find('.m-tb-5').each(function(){
				if($(this).val()=="<%=category%>") {
					$(this).addClass('how-active1');
				}
			});
			
			//필터 믿줄 귿기
			$('ul.filul').find('li').each(function(){
				var sortBy = "<%=sortBy%>";
				if(sortBy=="price desc") {
					sortBy = "가격 : 내림차순"
				} else if(sortBy=="price asc") {
					sortBy = "가격 : 오름차순";
				} else if(sortBy=="count") {
					sortBy = "인기순";
				} else if(sortBy=="coffee_name asc") {
					sortBy = "가나다순";
				}  
				if($(this).find('a').text()==sortBy) {
					$(this).find('a').addClass('filter-link-active');
				}
			});

			$('ul.filul2').find('li').each(function(){
				var price = "<%=price%>";
				if(price=="0"){
					price="모두";
				}else if(price=="1000"){
					price="1000원 - 2000원";
				}else if(price=="2000"){
					price="2000원 - 3000원";
				}else if(price=="3000"){
					price="3000원 - 4000원";
				}else if(price=="4000"){
					price="4000원 - 5000원";
				}else if(price=="5000"){
					price="5000원+";
				}
				if($(this).find('a').text()==price){
					$(this).find('a').addClass('filter-link-active');
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
			
			var cafe_num = $('.cafe').text();
			if(<%=cafe_num%>!=0){
				// 리스트에서 커피 선택시 블러 처리하고 카트에 넣기
				$('.block2').click(function(){
					var total = Number($('.total').text());
					var count = Number($('div.icon-header-noti').attr('data-notify'));
					var coffee_num = $(this).find('.coffee').text();
					var filter= $(this).find('img').css('filter');
					var coffee_name = $(this).find('a.stext-104').text();
					var cafe_name = $(this).find('div.cafe_name').text();
					var price = Number($(this).find('span.stext-105').text());
					var img = $(this).find('img').attr('src');
					if(filter!='blur(4px)'){
						count = count + 1;
						total = total + price;
						$(this).find('img').css('filter','blur(4px)');
						$('ul.header-cart-wrapitem').append(
							"<li class='"+coffee_num+" header-cart-item flex-w flex-t m-b-12'>"+
								"<div class='header-cart-item-img cartItem'>"+
									"<img src='"+img+"' alt='IMG'>"+
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
			// 검색 버튼 클릭시 검색
			$('.search').click(function(){
				var search = $('.search-cafe').val();
				if(<%=cafe_num%>>0){
					location.href="CoffeeList.bo?cafe_num=<%=cafe_num%>&search="+search+"&category=<%=category%>";
				} else {
					location.href="CoffeeList.bo?search="+search+"&category=<%=category%>";
				}
			});
			// 검색입력후 엔터로 검색
			$('.search-cafe').keydown(function(key){
				if(key.keyCode == 13) {
					var search = $('.search-cafe').val();
					if(<%=cafe_num%>>0){
						location.href="CoffeeList.bo?cafe_num=<%=cafe_num%>&search="+search+"&category=<%=category%>";
					} else {
						location.href="CoffeeList.bo?search="+search+"&category=<%=category%>";
					}
				}
			});
			
			//필터 닫았을 때 필터로 검색
			$('div.js-show-filter').click(function(){
				if($('div.js-show-filter').hasClass('show-filter') == false){
					if(<%=cafe_num%>>0){
						var SortBy = $('ul.filul').find('a.filter-link-active').text();
						var Price = $('ul.filul2').find('a.filter-link-active').text();
						if(Price=="모두"){
							Price="0";
						}else if(Price=="1000원 - 2000원"){
							Price="1000";
						}else if(Price=="2000원 - 3000원"){
							Price="2000";
						}else if(Price=="3000원 - 4000원"){
							Price="3000";
						}else if(Price=="4000원 - 5000원"){
							Price="4000";
						}else if(Price=="5000원+"){
							Price="5000";
						}
						if(SortBy=="가격 : 내림차순") {
							SortBy = "price desc"
						} else if(SortBy=="가격 : 오름차순") {
							SortBy = "price asc";
						} else if(SortBy=="인기순") {
							SortBy = "count";
						} else if(SortBy=="가나다순") {
							SortBy = "coffee_name asc";
						}  
					var category = "<%=category%>";
					location.href="CoffeeList.bo?cafe_num=<%=cafe_num%>&SortBy="+SortBy+"&Price="+Price+"&category="+category;
					}
				}
			});
			
		});
	</script>
</body>
</html>