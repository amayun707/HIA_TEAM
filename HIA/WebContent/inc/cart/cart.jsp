<%@page import="svc.CartListService"%>
<%@page import="vo.CartBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%
	CartListService cartListService = new CartListService();
	String id  = (String)session.getAttribute("id");
	ArrayList cartList = cartListService.getCartList(id);
	int total = 0;
%>
<script src = "./js/jquery-3.4.1.js"></script>
<script>
$(document).ready(function(){
	$('div.icon-header-noti').attr('data-notify', <%=cartList.size()%>);
	$('div.js-show-cart').click(function(){
		//장바구니를 열었을 때 총 금액 얼마인지 설정.
		$('ul.header-cart-wrapitem').find('.amount').each(function(){
			$(this).keyup(function(){
				var ftotal = 0;
				$('ul.header-cart-wrapitem').find('.price_amount').each(function(){
					var price = Number($(this).find('.header-cart-item-info').text())*
					Number($(this).find('.amount').val());
					ftotal += price;
				});
				$('.total').html(ftotal);
			});
		});
	});
		// 카트 클릭 후 이미지 클릭시 해당 개체 제거하고 총금액, 갯수 재설정.
	$('div.js-show-cart').click(function(){
		$('ul.header-cart-wrapitem').find('li.header-cart-item').each(function(){
			var list = this;
			var coffee_num = $(this).find('div.coffee_in_cart').text();	
			$(this).find('div.header-cart-item-img').click(function(){
				$(list).remove();
				var ftotal = 0;
				$('ul.header-cart-wrapitem').find('.price_amount').each(function(){
					var price = Number($(this).find('.header-cart-item-info').text())*
					Number($(this).find('.amount').val());
					ftotal += price;
				});
				$('.total').html(ftotal);
				var count = 0;
				$('ul.header-cart-wrapitem').find('.price_amount').each(function(){
					count += 1;
				});
				$('div.icon-header-noti').attr('data-notify', count);
			});
		});
	});
		//카트 클릭후 수량 바꾸면 바뀐 수량에 맞추어 총 금액 변환
	$('ul.header-cart-wrapitem').find('.amount').each(function(){
		$(this).change(function(){
			var ftotal = 0;
			$('ul.header-cart-wrapitem').find('.price_amount').each(function(){
				var price = Number($(this).find('.header-cart-item-info').text())*
				Number($(this).find('.amount').val());
				ftotal += price;
			});
			$('.total').html(ftotal);
		});
	});
	//카트 목록 db에 저장
	$('.addCart').click(function(){
		var cart = new Array();
		$('ul.header-cart-wrapitem').find('li').each(function(index, item){
			var coffee_num = $(item).find('.coffee_in_cart').text();
			cart.push(coffee_num);
		});
		var amount = new Array();
		$('ul.header-cart-wrapitem').find('li').each(function(){
			var coffee_amount = $(this).find('.amount').val();
			amount.push(coffee_amount);
		});
		$.ajax({
    		type : "POST",
			url: "insertCart.bo", // 클라이언트가 요청을 보낼 서버의 URL 주소
			dataType : "text",
    		data: { 'cart' : String(cart),
    					'amount' : String(amount)},         // HTTP 요청과 함께 서버로 보낼 데이터
    		success: function(data){
    		},
    		error : function(xhr, status, error){
    			alert("에러!: " + error);
    		}	
		});
	});
	//결제 누르면 결제창의 리스트 초기화 후 카트에 있는 리스트 넣어주기.
	$('.modal_payP').click(function(){
		$('ul#payList').children().remove();
		$('span.totalP2').html(Number($('.total').text()));
		$('ul.header-cart-wrapitem').find('li').each(function(){
			$(this).clone().appendTo('ul#payList');
		});
		$('div.modalP').addClass('view');
	});
	//결제창의 닫기 버튼 클릭시 결제창 닫힘.
	$('div.close').click(function(){
		$('div.modalP').removeClass('view');
	});
	
	$('a.order').click(function(){
		var total =  Number($('span.totalP2').text());
		var getTime =  $('.getTime').val();
		location.href="PaymentPro.or?total="+total+"&getTime="+getTime;
	});
	
	$('.payBtn').click(function(){
		$('ul#payList').children().remove();
		$(this).closest('li.header-cart-item').clone().appendTo('ul#payList');	
		$('div.modalP').addClass('view');
	});	
});

</script>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
.padding2{
	padding-top: 20px;
	padding-bottom: 40px;}

.price_amount{
	width: 140px;}
.header-cart-item-info{
	float: left; }
.amount{
	float: right;
	width: 30px;
	height: 20px;
    background-color: #0000004a;
    border-radius: 10%;
	text-align: center;}
.pt{
	padding-top: 5px;}
.mb{
	margin-bottom: 8px;}
.cCategory{
display:none;}
.modalP {
	display: none; position: fixed; z-index: 10001; 
	left: 0; top: 0;
	width: 100%; height: 100%; overflow: auto;}    
.modal-contentP {
	background-color: #fefefe;
	margin: 15% auto; 
	padding: 20px; width: 20%;	height: 70%;
	position: relative; top: -20%;}

.close {
	width: 5%;
    position: relative;
    left: 0px;
	font-size: 28px;
	font-weight: bold;}
.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;}
.view{
	display:block; !important}
#payList{
	list-style-type: none;
    padding-left: 20px;
    height: 380px;
    overflow-y: scroll; 
    margin-bottom: 20px;}
#payList>li{
    pointer-events: none;} 
.pay{
	display: block;
	margin-bottom: 60px;}
.wpahr{
	width: 100px;
	float: left;
	font-size: 30px;
	font-weight: bold;}
.totalP{
	width: 100%;
    height: 60px;}
.totalP1{
	width: 90px;
    float: left;
    font-size: 20px;
    margin-left: 62px;}
.totalP2{
	width: 100px;
    float: left;
    font-size: 20px;
    text-align: right;}
.totalP3{
	float: left;
    padding-top: 5px;}
.getTime{
	position: relative;
    left: 63px;
    font-size: 20px;
    margin-bottom: 10px;}
select{
	width: 80px;}
option{
	text-align: center;}
#payList input{
	background-color: #FFFFFF;}
.payBtn{
	float:right;
	margin-left: 30px;}
</style>
<div class="wrap-header-cart js-panel-cart">
		<div class="s-full js-hide-cart"></div>

		<div class="header-cart flex-col-l p-l-65 p-r-25">
			<div class="header-cart-title flex-w flex-sb-m p-b-8">
				<span class="mtext-103 cl2">
					Your Cart
				</span>

				<div class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-cart">
					<i class="zmdi zmdi-close"></i>
				</div>
			</div>
			
			<div class="header-cart-content flex-w js-pscroll">
				<ul class="header-cart-wrapitem w-full">
				<%for(Object i : cartList) {
						CartBean cartBean = (CartBean)i;%>
					<li class="<%=cartBean.getCoffee_num() %> header-cart-item flex-w flex-t m-b-12">
						<div class="header-cart-item-img">
							<img src="images/item-cart-01.jpg" alt="IMG">
						</div>
						<div class = "cCategory coffee_in_cart"><%=cartBean.getCoffee_num() %></div>
						<div class='cCategory cafe_num'><%=cartBean.getCafe_num() %></div>
						<div class="header-cart-item-txt pt">
							<a href="#" class="header-cart-item-name mb hov-cl1 trans-04"><%=cartBean.getCoffee_name() %></a>
							<a href="#" class="header-cart-item-name mb hov-cl1 trans-04"><%=cartBean.getCafe_name() %></a>
							<div class = "price_amount">
							<span class="header-cart-item-info"><%=cartBean.getPrice() %>
							</span>&nbsp;X<button class = "payBtn">구매</button>
							<input type = "text" value = "<%=cartBean.getAmount() %>" class = "amount">
							</div>
						</div>
					</li>
				<%
				total += cartBean.getPrice()*cartBean.getAmount();
				} %>
				</ul>
				
				<div class="w-full">
					<div class="header-cart-total w-full">
						Total: 
					</div>
					<div class="header-cart-total w-full total padding2">
						<%=total %>
					</div>

					<div class="header-cart-buttons flex-w w-full">
						<a href="#" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10 addCart">
							장바구니 담기
						</a>

						<a href="#" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-b-10 modal_payP addCart">
							구매
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	
    <!-- The Modal -->
    <div id="myModal" class="modalP">
 
      <!-- Modal content -->
      <div class="modal-contentP">
	    <div class = "pay">
    	    <div class = "wpahr">Payment</div><div class="close">&times;</div>
      	</div>
        	<ul id = "payList">
        	</ul>
        	<div>
        	수령시간&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        		<select class = "getTime">
        			<option>09:00</option>
        			<option>09:30</option>
        			<option>10:00</option>
        			<option>10:30</option>
        		</select>
        	</div>
        	<div class = "totalP">
    	    <div class = "totalP1">결제금액</div><span class="totalP2">1000</span><div class="totalP3">원</div>
      		</div>
      		<a href="#" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-b-10 order">
							구매
			</a>                                                 
      </div>
    </div>
	
