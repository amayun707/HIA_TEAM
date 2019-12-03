<%@page import="java.util.ArrayList"%>
<%@page import="svc.CartListService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src = "js/jquery-3.4.1.js"></script>
<%
	CartListService cartListService = new CartListService();
	ArrayList cartList = cartListService.getCartList();
%>
<script>
	$(document).ready(function(){
		$.ajax({
			url: "getCartList.bo"
		});
	});
</script>
<header class="header-v4">
		<!-- Header desktop -->
		<div class="container-menu-desktop">
			<!-- Topbar -->
			<div class="top-bar">
				<div class="content-topbar flex-sb-m h-full container">
					<div class="left-top-bar"></div>
					<div class="right-top-bar flex-w h-full">
					<%
						String id = (String)session.getAttribute("id");
						if(id == null){
					%>
							<a href="MemberLogin.me" class="flex-c-m trans-04 p-lr-25">
								로그인
							</a>
							<a href="MemberStart.me" class="flex-c-m trans-04 p-lr-25">
								회원가입
							</a>
						<%
						} 
						else if(id != null){
						%>
							<a href="Update.me" class="flex-c-m trans-04 p-lr-25">
								<%=id %>님 [로그인]
							</a>
							<a href="MemberLogoutPro.me" class="flex-c-m trans-04 p-lr-25">
								로그아웃
							</a>
						<%
						}
						%>
					</div>
				</div>
			</div>

			<div class="wrap-menu-desktop how-shadow1">
				<nav class="limiter-menu-desktop container">
					
					<!-- Logo desktop -->		
					<a href="#" class="logo">
						<img src="images/icons/logo-01.png" alt="IMG-LOGO">
					</a>

					<!-- Menu desktop -->
					<div class="menu-desktop">
						<ul class="main-menu">
							<li>
								<a href="index.jsp">Home</a>
								<ul class="sub-menu">
									<li><a href="index.jsp">Homepage 1</a></li>
									<li><a href="home-02.jsp">Homepage 2</a></li>
									<li><a href="home-03.jsp">Homepage 3</a></li>
								</ul>
							</li>

							<li>
								<a href="/HIA/CafeList.bo">cafe</a>
							</li>

							<li class="label1" data-label1="hot">
								<a href="/HIA/CoffeeList.bo">coffee</a>
							</li>

							<li>
								<a href="blog.jsp">Blog</a>
							</li>

							<li class="active-menu">
								<a href="about.jsp">About</a>
							</li>

							<li>
								<a href="contact.jsp">Contact</a>
							</li>
						</ul>
					</div>	

					<!-- Icon header -->
					<div class="wrap-icon-header flex-w flex-r-m">
						<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
							<i class="zmdi zmdi-search"></i>
						</div>

						<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart" data-notify="0">
							<i class="zmdi zmdi-shopping-cart"></i>
						</div>

						<a href="#" class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti" data-notify="0">
							<i class="zmdi zmdi-favorite-outline"></i>
						</a>
					</div>
				</nav>
			</div>	
		</div>

		<!-- Header Mobile -->
		<div class="wrap-header-mobile">
			<!-- Logo moblie -->		
			<div class="logo-mobile">
				<a href="index.jsp"><img src="images/icons/logo-01.png" alt="IMG-LOGO"></a>
			</div>

			<!-- Icon header -->
			<div class="wrap-icon-header flex-w flex-r-m m-r-15">
				<div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search">
					<i class="zmdi zmdi-search"></i>
				</div>

				<div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart" data-notify="2">
					<i class="zmdi zmdi-shopping-cart"></i>
				</div>

				<a href="#" class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti" data-notify="0">
					<i class="zmdi zmdi-favorite-outline"></i>
				</a>
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
			<ul class="topbar-mobile">
				<li>
					<div class="left-top-bar">
						Free shipping for standard order over $100
					</div>
				</li>

				<li>
					<div class="right-top-bar flex-w h-full">
						<a href="#" class="flex-c-m p-lr-10 trans-04">
							Help & FAQs
						</a>

						<a href="#" class="flex-c-m p-lr-10 trans-04">
							My Account
						</a>

						<a href="#" class="flex-c-m p-lr-10 trans-04">
							EN
						</a>

						<a href="#" class="flex-c-m p-lr-10 trans-04">
							USD
						</a>
					</div>
				</li>
			</ul>

			<ul class="main-menu-m">
				<li>
					<a href="index.jsp">Home</a>
					<ul class="sub-menu-m">
						<li><a href="index.jsp">Homepage 1</a></li>
						<li><a href="home-02.jsp">Homepage 2</a></li>
						<li><a href="home-03.jsp">Homepage 3</a></li>
					</ul>
					<span class="arrow-main-menu-m">
						<i class="fa fa-angle-right" aria-hidden="true"></i>
					</span>
				</li>

				<li>
					<a href="product.jsp">Shop</a>
				</li>

				<li>
					<a href="shoping-cart.jsp" class="label1 rs1" data-label1="hot">Features</a>
				</li>

				<li>
					<a href="blog.jsp">Blog</a>
				</li>

				<li>
					<a href="about.jsp">About</a>
				</li>

				<li>
					<a href="contact.jsp">Contact</a>
				</li>
			</ul>
		</div>

		<!-- Modal Search -->
		<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
			<div class="container-search-header">
				<button class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
					<img src="images/icons/icon-close2.png" alt="CLOSE">
				</button>

				<form class="wrap-search-header flex-w p-l-15">
					<button class="flex-c-m trans-04">
						<i class="zmdi zmdi-search"></i>
					</button>
					<input class="plh3" type="text" name="search" placeholder="Search...">
				</form>
			</div>
		</div>
	</header>