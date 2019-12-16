<%@page import="java.util.ArrayList"%>
<%@page import="svc.CartListService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header class="header-v2">
		<!-- Header desktop -->
		<div class="container-menu-desktop">
			<div class="wrap-menu-desktop">
				<nav class="limiter-menu-desktop p-l-45">
					
					<!-- Logo desktop -->	
					<div class="stext-107 cl7 hov-cl1 trans-04"> 전포카페거리</div><br>	
					<a href="Main.me" class="logo">
						<img src="images/icons/hia_logo.png" alt="IMG-LOGO">
					</a>

					<!-- Menu desktop -->
					<div class="menu-desktop">
						<ul class="main-menu">
							<li class="active-menu">
								<a href="Main.me">Home</a>
							</li>

							<li>
								<a href="CafeList.bo">Cafe Order </a>
							</li>

							<li class="label1" data-label1="주문">
								<a href="CoffeeList.bo">Coffee Order</a>
							</li>

							<li>
								<a href="streetview.jsp">Street View</a>
							</li>
							
							<li>
								<a href="Mail.me">Member Service</a>
							</li>
						</ul>
					</div>	

					<!-- Icon header -->
					<div class="wrap-icon-header flex-w flex-r-m h-full">
							
						<div class="flex-c-m h-full p-l-18 p-r-25 bor5">
							<div class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 icon-header-noti js-show-cart" data-notify="0">
								<i class="zmdi zmdi-shopping-cart"></i>
							</div>
						</div>
							
						<div class="flex-c-m h-full p-lr-19">
							<div class="cl2 hov-cl1 trans-04 p-lr-11 js-show-sidebar">
								<img src="images/icons/icon_receipt.png" alt="receipt">
							</div>
						</div>
					</div>
				</nav>
			</div>	
		</div>

		<!-- Header Mobile -->
		<div class="wrap-header-mobile">
			<!-- Logo moblie -->		
			<div class="logo-mobile">
			<div class="stext-107 cl7 hov-cl1 trans-04"> 전포카페거리</div><br>
				<a href="Main.me"><img src="images/icons/hia_logo.png" alt="IMG-LOGO"></a>
			</div>

			<!-- Icon header -->
			<div class="wrap-icon-header flex-w flex-r-m h-full m-r-15">
				<div class="flex-c-m h-full p-r-10">
					<div class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 js-show-modal-search">
						<i class="zmdi zmdi-search"></i>
					</div>
				</div>

				<div class="flex-c-m h-full p-lr-10 bor5">
					<div class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 icon-header-noti js-show-cart" data-notify="2">
						<i class="zmdi zmdi-shopping-cart"></i>
					</div>
				</div>
			</div>

			<!-- Button show menu -->
			<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
				<span class="hamburger-box">
					<span class="hamburger-inner"></span>
				</span>
			</div>
		</div>


		<!-- Menu Mobile -->
		<div class="menu-mobile">
			<ul class="main-menu-m">
				<li>
					<a href="Main.me">Home</a>
					<span class="arrow-main-menu-m">
						<i class="fa fa-angle-right" aria-hidden="true"></i>
					</span>
				</li>

				<li>
					<a href="CafeList.bo">Cafe Order </a>
				</li>

				<li class="label1" data-label1="주문">
					<a href="CoffeeList.bo">Coffee Order</a>
				</li>

				<li>
					<a href="streetview.jsp">Street View</a>
				</li>
							
				<li>
					<a href="Mail.me">Member Service</a>
				</li>
			</ul>
		</div>
	</header>