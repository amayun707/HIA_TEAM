<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	ArrayList<ArrayList> graph = (ArrayList<ArrayList>) request.getAttribute("graph");
	ArrayList<ArrayList> monthGraph = (ArrayList<ArrayList>) request.getAttribute("monthGraph");
	ArrayList<ArrayList> cafeGraph = (ArrayList<ArrayList>) request.getAttribute("cafeGraph");
	ArrayList<ArrayList> cafeIncomeByDay = (ArrayList<ArrayList>) request.getAttribute("cafeIncomeByDay");
	ArrayList<ArrayList> cafeIncomeByMonth = (ArrayList<ArrayList>) request.getAttribute("cafeIncomeByMonth");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Contact</title>
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
	href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
<style>
.graph {
	width: 500px;
	height: auto;
	float: left;}
#graph1 {
	margin-left: 23%;}
.graphcon {
	display: inline-block;
	width: 1600px;}
.graph-middle{
	display: inline-block;
    width: 1730px;
    margin-top: 54px;
    position: relative;}
.graph-bottom {
	padding-left: 10%;
    margin-top: 15%;
    display: inline-block;
    width: 1730px;}
.mid{
	position: absolute;
    left: 50%;
    transform: translateX(-50%);
    width: 1000px;}
.btm {
	width: 700px;
    height: auto;
    float: left;
    margin-right: 53px;}
</style>
</head>
<body class="animsition">

	<!-- Header -->
	<jsp:include page="./inc/header/header-v4.jsp" />
	<!-- Cart -->
	<jsp:include page="./inc/cart/cart.jsp" />
	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92"
		style="background-image: url('images/bg-01.jpg');">
		<h2 class="ltext-105 cl0 txt-center">Revenue Status</h2>
	</section>


	<!-- Content page -->
	<section class="bg0 p-t-50 p-b-116">
		<div class="graphcon">
			<div class = "graph-top">
				<div class="graph" id="graph1">
					<h2>인기 메뉴</h2>
					<canvas id="myChart"></canvas>
				</div>
				<div class="graph">
					<h2>이번달 인기 메뉴</h2>
					<canvas id="myChart2"></canvas>
				</div>
			</div>
			<div class = "graph-middle">
				<div class="graph mid">
					<canvas id="myChart3"></canvas>
				</div>
			</div>
			<div class="graph-bottom">
				<div class="graph btm">
					<canvas id="myChart4"></canvas>
				</div>
				<div class="graph btm">
					<canvas id="myChart5"></canvas>
				</div>
			</div>
		</div>
	</section>
	<!-- Footer -->
	<jsp:include page="./inc/footer/footer.jsp" />
	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top"> <i
			class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>
	<!--===============================================================================================-->
	<script src="js/Chart.js"></script>
	<script>
		// 우선 컨텍스트를 가져옵니다. 
		var ctx = document.getElementById("myChart").getContext('2d');
		var ctx2 = document.getElementById("myChart2").getContext('2d');
		var ctx3 = document.getElementById("myChart3").getContext('2d');
		var ctx4 = document.getElementById("myChart4").getContext('2d');
		var ctx5 = document.getElementById("myChart5").getContext('2d');
		/*
		 - Chart를 생성하면서, 
		 - ctx를 첫번째 argument로 넘겨주고, 
		 - 두번째 argument로 그림을 그릴때 필요한 요소들을 모두 넘겨줍니다. 
		 */

		var myChart = new Chart(ctx, {
			type : 'polarArea',
			data : {
				labels :
	<%=graph.get(0)%>
		,
				datasets : [ {
					label : '인기 메뉴 top 10',
					data :
	<%=graph.get(1)%>
		,
					backgroundColor : [ 'rgba(255, 99, 132, 0.2)',
							'rgba(54, 162, 235, 0.2)',
							'rgba(255, 206, 86, 0.2)',
							'rgba(75, 192, 192, 0.2)',
							'rgba(153, 102, 255, 0.2)',
							'rgba(255, 99, 132, 0.2)',
							'rgba(54, 162, 235, 0.2)',
							'rgba(255, 206, 86, 0.2)',
							'rgba(75, 192, 192, 0.2)',
							'rgba(153, 102, 255, 0.2)' ],
					borderColor : [ 'rgba(255,99,132,1)',
							'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)',
							'rgba(75, 192, 192, 1)', 'rgba(153, 102, 255, 1)',
							'rgba(255,99,132,1)', 'rgba(54, 162, 235, 1)',
							'rgba(255, 206, 86, 1)', 'rgba(75, 192, 192, 1)',
							'rgba(153, 102, 255, 1)' ],
					borderWidth : 1
				} ]
			},
			options : {}
		});
		var myChart2 = new Chart(ctx2, {
			type : 'polarArea',
			data : {
				labels :
	<%=monthGraph.get(0)%>
		,
				datasets : [ {
					label : '이번달 인기 메뉴 top 10',
					data :
	<%=monthGraph.get(1)%>
		,
					backgroundColor : [ 'rgba(255, 99, 132, 0.2)',
							'rgba(54, 162, 235, 0.2)',
							'rgba(255, 206, 86, 0.2)',
							'rgba(75, 192, 192, 0.2)',
							'rgba(153, 102, 255, 0.2)',
							'rgba(255, 99, 132, 0.2)',
							'rgba(54, 162, 235, 0.2)',
							'rgba(255, 206, 86, 0.2)',
							'rgba(75, 192, 192, 0.2)',
							'rgba(153, 102, 255, 0.2)' ],
					borderColor : [ 'rgba(255,99,132,1)',
							'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)',
							'rgba(75, 192, 192, 1)', 'rgba(153, 102, 255, 1)',
							'rgba(255,99,132,1)', 'rgba(54, 162, 235, 1)',
							'rgba(255, 206, 86, 1)', 'rgba(75, 192, 192, 1)',
							'rgba(153, 102, 255, 1)' ],
					borderWidth : 1
				} ]
			},
			options : {}
		});

		var myChart3 = new Chart(ctx3, {
			type : 'bar',
			data : {
				labels :
	<%=cafeGraph.get(0)%>
		,
				datasets : [ {
					label : '우리 매장 인기 메뉴',
					data :
	<%=cafeGraph.get(1)%>
		,
					backgroundColor : [ 'rgba(255, 99, 132, 0.2)',
							'rgba(54, 162, 235, 0.2)',
							'rgba(255, 206, 86, 0.2)',
							'rgba(75, 192, 192, 0.2)',
							'rgba(153, 102, 255, 0.2)',
							'rgba(255, 99, 132, 0.2)',
							'rgba(54, 162, 235, 0.2)',
							'rgba(255, 206, 86, 0.2)',
							'rgba(75, 192, 192, 0.2)',
							'rgba(153, 102, 255, 0.2)' ],
					borderColor : [ 'rgba(255,99,132,1)',
							'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)',
							'rgba(75, 192, 192, 1)', 'rgba(153, 102, 255, 1)',
							'rgba(255,99,132,1)', 'rgba(54, 162, 235, 1)',
							'rgba(255, 206, 86, 1)', 'rgba(75, 192, 192, 1)',
							'rgba(153, 102, 255, 1)' ],
					borderWidth : 1
				} ]
			},
			options : {
				maintainAspectRatio : false, // default value. false일 경우 포함된 div의 크기에 맞춰서 그려짐.
				scales : {
					yAxes : [ {
						ticks : {
							beginAtZero : true
						}
					} ]
				}
			}
		});

		var myChart4 = new Chart(ctx4, {
			type : 'bar',
			data : {
				labels :
	<%=cafeIncomeByDay.get(0)%>
		,
				datasets : [ {
					label : '이번달 매출(일별)',
					data :
	<%=cafeIncomeByDay.get(1)%>
		,
				} ]
			},
			options : {
				maintainAspectRatio : false, // default value. false일 경우 포함된 div의 크기에 맞춰서 그려짐.
				scales : {
					yAxes : [ {
						ticks : {
							beginAtZero : true
						}
					} ]
				}
			}
		});
		var myChart5 = new Chart(ctx5, {
			type : 'bar',
			data : {
				labels :
	<%=cafeIncomeByMonth.get(0)%>
		,
				datasets : [ {
					label : '올해 매출(월별)',
					data :
	<%=cafeIncomeByMonth.get(1)%>
		,
				} ]
			},
			options : {
				maintainAspectRatio : false, // default value. false일 경우 포함된 div의 크기에 맞춰서 그려짐.
				scales : {
					yAxes : [ {
						ticks : {
							beginAtZero : true
						}
					} ]
				}
			}
		});
	</script>
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
	<script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
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
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAKFWBqlKAGCeS1rMVoaNlwyayu0e0YRes"></script>
	<script src="js/map-custom.js"></script>
	<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>