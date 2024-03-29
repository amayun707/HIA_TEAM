<%@page import="svc.MemberSelectService"%>
<%@page import="java.util.ArrayList"%>
<%@page import="svc.CartListService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header>
<%
String id = (String)session.getAttribute("id");
String customer_owner = (String)session.getAttribute("customer_owner");
%>
<script>
	$(document).ready(function(){
		$.ajax({
			url: "getCartList.bo"
		});
	});
</script>
		<!-- Header desktop -->
		<div class="container-menu-desktop">
			<!-- Topbar -->
			<div class="top-bar">
				<div class="content-topbar flex-sb-m h-full container">
					<div class="left-top-bar"></div>
					<div class="right-top-bar flex-w h-full">
					<%
						if (id == null) {
					%>
					<a href="MemberLogin.me" class="flex-c-m trans-04 p-lr-25"> 로그인
					</a> <a href="MemberStart.me" class="flex-c-m trans-04 p-lr-25">
						회원가입 </a>
					<%
						} else if (id != null) {
					%>
					<a href="Update.me" class="flex-c-m trans-04 p-lr-25"> <%=id%>님
						[로그인]
					</a> <a href="MemberLogoutPro.me" class="flex-c-m trans-04 p-lr-25">
						로그아웃 </a>
					<%
						}
					%>
				</div>
			</div>
		</div>

		<div class="wrap-menu-desktop">
			<nav class="limiter-menu-desktop container">

				<!-- Logo desktop -->
				<div class="stext-107 cl7 hov-cl1 trans-04">전포카페거리</div>
				<br> <a href="Main.me" class="logo"> <img
					src="images/icons/hia_logo.png" alt="IMG-LOGO">
				</a>

				<!-- Menu desktop -->
				<div class="menu-desktop">
					<ul class="main-menu">
						<li class="active-menu"><a href="Main.me">Home</a></li>

						<li><a href="CafeList.bo">Cafe Order</a></li>

						<li><a href="CoffeeList.bo">Coffee Order</a></li>

						<li><a href="streetview.jsp">Street View</a></li>

						<li><a href="Mail.me">Member Service</a></li>
					</ul>
				</div>

				<!-- Icon header -->
				<%
					if (id != null) {
				%>
				<div class="wrap-icon-header flex-w flex-r-m">

					<div
						class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart"
						data-notify="0">
						<i class="zmdi zmdi-shopping-cart"></i>
					</div>
					<%
						if (customer_owner.equals("c")) {
					%>
					<a href="PaymentList.or"
						class="dis-block cl2 hov-cl1 trans-04 p-l-22 p-r-11"
						data-notify="0"> <img src="images/icons/icon_receipt.png"
						alt="receipt">
					</a>
					<%
						} else if (customer_owner.equals("o")) {
					%>
					<a href="ReceiptListPro.or"
						class="dis-block cl2 hov-cl1 trans-04 p-l-22 p-r-11"
						data-notify="0" style="padding-right: 7px"> <img src="images/icons/icon_receipt.png"
						alt="receipt">
					</a>
					<a href="Graph.bo"
						class="dis-block cl2 hov-cl1 trans-04 p-l-22 p-r-11"
						data-notify="0" style="padding-left: 2px"> <img src="images/icons/icon_graph.png"
						alt="graph">
					</a>
					<%
						}
					%>
				</div>
			</nav>
		</div>
	</div>
	<%
		}
	%>

	<!-- Header Mobile -->
	<div class="wrap-header-mobile">
		<!-- Logo moblie -->
		<div class="logo-mobile">
			<div class="stext-107 cl7 hov-cl1 trans-04">전포카페거리</div>
			<br> <a href="Main.me"><img src="images/icons/hia_logo.png"
				alt="IMG-LOGO"></a>
		</div>

		<!-- Icon header -->
		<%
			if (id != null) {
		%>
		<div class="wrap-icon-header flex-w flex-r-m m-r-15">

			<div
				class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart"
				data-notify="2">
				<i class="zmdi zmdi-shopping-cart"></i>
			</div>

			<%
				if (customer_owner.equals("c")) {
			%>
			<a href="PaymentList.or"
				class="dis-block cl2 hov-cl1 trans-04 p-l-22 p-r-11" data-notify="0">
				<img src="images/icons/icon_receipt.png" alt="receipt">
			</a>
			<%
				} else if (customer_owner.equals("o")) {
			%>
			<a href="ReceiptListPro.or"
				class="dis-block cl2 hov-cl1 trans-04 p-l-22 p-r-11" data-notify="0" style="padding-right: 7px">
				<img src="images/icons/icon_receipt.png" alt="receipt">
			</a>
			<a href="Graph.bo"
						class="dis-block cl2 hov-cl1 trans-04 p-l-22 p-r-11"
						data-notify="0" style="padding-left: 2px"> <img src="images/icons/icon_graph.png"
						alt="graph">
					</a>
			<%
				}
			%>
		</div>
		<%
			}
		%>
	</div>


	<!-- Menu Mobile -->
	<div class="menu-mobile">

		<ul class="main-menu-m">
			<li><a href="Main.me">Home</a> <span class="arrow-main-menu-m">
					<i class="fa fa-angle-right" aria-hidden="true"></i>
			</span></li>

			<li><a href="CafeList.bo">Cafe Order</a></li>

			<li><a href="CoffeeList.bo">Coffee Order</a></li>

			<li><a href="streetview.jsp">Street View</a></li>

			<li><a href="Mail.me">Member Service</a></li>
		</ul>
	</div>

</header>
<script src="./js/jquery-3.4.1.js"></script>
<script>
	$(document).ready(function() {
		$.ajax({
			url : "getCartList.bo"
		});
	});
</script>