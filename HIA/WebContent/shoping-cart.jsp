<%@page import="vo.CartBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<CartBean> paymentList = (ArrayList<CartBean>)request.getAttribute("paymentList");
	String favoriteList = (String)request.getAttribute("favoriteList");
	String[] favorite = favoriteList.split("/");
	int size = favorite.length;
	String[] coffee = {"","",""};
	String[] cafe = {"","",""};
	String[] getTime = {"","",""};
	String cost = "";
	if(size>0){
		coffee = favorite[0].split(",");
		cafe = favorite[1].split(",");
		getTime = favorite[2].split(",");
		cost = favorite[3];
	}
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Shoping Cart</title>
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
<style>
th{
 	width: 200px; 
	font-size: 20px;}
.cn{
	text-align: center;}
.cList{
	width: 400px;
	display: inherit;
	margin-bottom: 20px;
	border-bottom :1px dashed #d9d9d9;}
#cList{
	width: 400px;
	display: inherit;}
</style>
</head>
<body class="animsition">
	
	<!-- Header -->
	<jsp:include page="./inc/header/header-v4.jsp"/>
	<!-- Cart -->
	<jsp:include page="./inc/cart/cart.jsp"/>
	<!-- breadcrumb -->
	<div class="container">
		<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
			<a href="index.jsp" class="stext-109 cl8 hov-cl1 trans-04">
				Home
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a>

			<span class="stext-109 cl4">
				Shoping Cart
			</span>
		</div>
	</div>
		

	<!-- Shoping Cart -->
	<form class="bg0 p-t-75 p-b-85">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 col-xl-7 m-lr-auto m-b-50">
					<div class="m-l-25 m-r--38 m-lr-0-xl">
						<div class="wrap-table-shopping-cart">
							<table class="table-shopping-cart">
								<tr class="table_head">
									<th colspan="2" class="cN">커피</th>
									<th>가격</th>
									<th>수량</th>
									<th>금액</th>
									<th>날짜</th>
									<th>시간</th>
								</tr>
								<%for(CartBean i :paymentList) { %>
								<tr class="table_row">
									<td class="column-1">
										<div class="how-itemcart1">
											<img src="images/item-cart-04.jpg" alt="IMG">
										</div>
									</td>
									<td class="column-2"><%=i.getCafe_name() %><br><%=i.getCoffee_name() %></td>
									<td><%=i.getPrice() %></td>
									<td>&nbsp;&nbsp;<%=i.getAmount() %></td>
									<td><%=i.getPrice()*i.getAmount() %></td>
									<td><%=i.getDate() %></td>
									<td><%=i.getGetTime() %></td>
								</tr>
								<%} %>
							</table>
						</div>
					</div>
				</div>

				<div class="col-sm-10 col-lg-7 col-xl-5 m-lr-auto m-b-50">
					<div class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">
						<h4 class="mtext-109 cl2 p-b-30">
							내 커피 성향
						</h4>

						<div class="flex-w flex-t bor12 p-b-13">
							<div class="size-208">
								<span class="stext-110 cl2">
									총 금액
								</span>
							</div>

							<div class="size-209">
								<span class="mtext-110 cl2">
									<%=cost %>원
								</span>
							</div>
						</div>
						<div class="flex-w flex-t bor12 p-t-15 p-b-30">
							<div class="cList">
							<div class="size-208 w-full-ssm">
								<span class="stext-110 cl2">
									커피
								</span>
							</div>

							<div class="size-209 p-r-18 p-r-0-sm w-full-ssm">
								<p class="stext-111 cl6 p-t-2">
								<%if(size>0){ 
 									for(int i = 0; i<coffee.length; i+=2) { %> 
									<%=coffee[i] %>(<%=coffee[i+1] %>)<br><br>
									<%} 
									}%> 
								</p>
							</div>
							</div>
							<div class="cList">
							<div class="size-208 w-full-ssm">
								<span class="stext-110 cl2">
									카페
								</span>
							</div>

							<div class="size-209 p-r-18 p-r-0-sm w-full-ssm">
								<p class="stext-111 cl6 p-t-2">
								<%if(size>0){ 
									for(int i = 0; i<cafe.length; i+=2) { %>
									<%=cafe[i] %>(<%=cafe[i+1] %>)<br><br>
									<%} 
									}%>
								</p>
							</div>
							</div>
							<div id = "cList">
							<div class="size-208 w-full-ssm">
								<span class="stext-110 cl2">
									찾는 시간
								</span>
							</div>

							<div class="size-209 p-r-18 p-r-0-sm w-full-ssm">
								<p class="stext-111 cl6 p-t-2">
								<%if(size>0){ 
									for(int i = 0; i<getTime.length; i+=2) { %>
									<%=getTime[i] %>(<%=getTime[i+1] %>)<br><br>
									<%}
									}%>
								</p>
							</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
		
	
		

	<!-- Footer -->
	<jsp:include page="./inc/footer/footer.jsp"/>
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
	<script src="./js/main.js"></script>

</body>
</html>