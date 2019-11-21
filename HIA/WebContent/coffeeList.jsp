<%@page import="vo.CoffeeBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="vo.PageInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
PageInfo pi = (PageInfo)request.getAttribute("pageInfo");
ArrayList<CoffeeBean> coffeeList =  (ArrayList)request.getAttribute("coffeeList");
String category = request.getParameter("category");
int cafe_num = Integer.parseInt(request.getParameter("cafe_num"));
int nowPage = pi.getPage();
int maxPage = pi.getMaxPage();
int startPage = pi.getStartPage();
int endPage = pi.getEndPage();
int listCount = pi.getListCount();
%>
<style>
.cCategory{
display:none;}
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
			<div class="flex-w flex-sb-m p-b-52">
				<div class="flex-w flex-l-m filter-tope-group m-tb-10">
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 aCategory"
						onclick = "location.href='CoffeeList.bo'">All Coffee</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						onclick = "location.href='CoffeeList.bo?category=category1'">category1</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						onclick = "location.href='CoffeeList.bo?category=category2'">category2</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						onclick = "location.href='CoffeeList.bo?category=category3'">category3</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						onclick = "location.href='CoffeeList.bo?category=category4'">category4</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						onclick = "location.href='CoffeeList.bo?category=category5'">category5</button>
					<button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
						onclick = "location.href='CoffeeList.bo?category=category6'">category6</button>
					<div class = "cCategory"><%=category %></div>
					<div class = "cCategory cafe"><%=cafe_num %></div>
				</div>

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
						<button class="size-113 flex-c-m fs-16 cl2 hov-cl1 trans-04 search">
							<i class="zmdi zmdi-search"></i>
						</button>

						<input class="mtext-107 cl2 size-114 plh2 p-r-15 search-cafe" type="text"
							name="search-product" placeholder="Search">
					</div>
				</div>
			</div>

			<div class="row isotope-grid">
				<%
					for (int i = 0; i < coffeeList.size(); i++) {
				%>
				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<img src="images/product-01.jpg" alt="IMG-PRODUCT"> 
							<%if(cafe_num==0){ %><a
								href="/Template/CafeList.bo?coffee_name=<%=coffeeList.get(i).getCoffee_name() %>"
								class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04">
								카페 보기 </a>	
						<%} %>
						</div>

						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l ">
								<a href="#"
									class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6"><%=coffeeList.get(i).getCoffee_name() %></a>
								<span class="stext-105 cl3"> <%=coffeeList.get(i).getPrice() %>
								</span>
							</div>

							<div class="block2-txt-child2 flex-r p-t-3">
								<%=coffeeList.get(i).getCoffee_category() %>
							</div>
							<div class="cCategory coffee"><%=coffeeList.get(i).getCoffee_num() %></div>
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
	<jsp:include page="coffee-sDetail.jsp"/>
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
	<script src = "./js/jquery-3.4.1.js"></script>
	<script>
		$('document').ready(function(){
			var category = $('.cCategory').text();
			$('.filter-tope-group').find('.m-tb-5').each(function(){
				var cCategory = this.innerHTML;
				if(category=="null"&cCategory=="All Coffee"){
					$(this).addClass('how-active1');
				}
				if(cCategory==category){
					$(this).addClass('how-active1');
				}
			});
			var cafe_num = $('.cafe').text();
			var count = 0;
			if(<%=cafe_num%>!=0){	
				$('.block2').click(function(){
					var coffee_num = $(this).find('.coffee').text();
					var filter= $(this).find('img').css('filter');
					var coffee_name = $(this).find('a.stext-104').text();
					var price = Number($(this).find('span.stext-105').text());
					var total = Number($('.total').text());
					if(filter!='blur(4px)'){
						count = count + 1;
						total = total + price;
						$(this).find('img').css('filter','blur(4px)');
						$('ul.header-cart-wrapitem').append(
							"<li class='"+coffee_name+" header-cart-item flex-w flex-t m-b-12'>"+
								"<div class='header-cart-item-img'>"+
									"<img src='images/item-cart-01.jpg' alt='IMG'>"+
								"</div>"+
								"<div class='cCategory cafe_num'>"+cafe_num+"</div>"+
								"<div class='cCategory coffee_num'>"+coffee_num+	"</div>"+
								"<div class='header-cart-item-txt p-t-8'>"+
									"<a href='#' class='header-cart-item-name m-b-18 hov-cl1 trans-04'>"+
										coffee_name+
									"</a>"+
									"<span class='header-cart-item-info'>"+
										price+
									"</span>"+
								"</div>"+
							"</li>"
						);
					}
					else{
						count = count-1;
						total = total - price;
						$(this).find('img').css('filter','');
						$('li').remove('\.'+coffee_name);
					}
					$('div.icon-header-noti').attr('data-notify', count);
					$('.total').html(total);
				});
			}
			$('.searching').click(function(){
				var search = $('.search-cafe').val();
				location.href="CafeList.bo?search="+search+"&category=<%=category%>";
			});
			$('.search-cafe').keydown(function(key){
				if(key.keyCode == 13) {
					var search = $('.search-cafe').val();
					location.href="CoffeeList.bo?search="+search+"&category=<%=category%>";
				}
			});
			$('.addCart').click(function(){
				var cart = new Array();
				$('ul.header-cart-wrapitem').find('li').each(function(index, item){
					var coffee_num = $(item).find('.coffee_num').text();
					cart.push(coffee_num);
				});
				location.href="insertCart.bo?cart="+cart+"&cafe_num=<%=cafe_num%>";
			});
		});
	</script>
</body>
</html>