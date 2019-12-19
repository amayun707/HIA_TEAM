<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
   <title>Contact</title>
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
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


<!-- ====================================CSS 시작===================================== -->
<!-- 오버레이(마커 클릭 했을때 뜨는 창) CSS :   시작 --> 
      <style> 
    .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;} 
/* 오버레이(마커 클릭 했을때 뜨는 창) CSS :   끝 */

/* 전체보기 버튼(COLOR : BLACK) CSS : 시작 */
.btnFull { 
	background-color:#131413;
	border-radius:28px;
	border:1px solid #ffffff;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:17px;
	padding:16px 31px;
	text-decoration:none;
	text-shadow:0px 1px 0px #000000;
	margin-left: 67px; /*임의로 마진 값 줌*/
}
.btnFull:hover {
	background-color:#7a7a7a;
}
.btnFull:actice {
	position:relative;
	top:1px;
} /* 전체보기 버튼(COLOR : BLACK) CSS : 끝 */


/* A 지역 보기 버튼(COLOR : PINK) CSS : 시작*/
.btnA {
	background-color:#f024e2;
	border-radius:28px;
	border:1px solid #ffffff;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:17px;
	padding:16px 31px;
	text-decoration:none;
	text-shadow:0px 1px 0px #fa03fa;
	margin-bottom: 50px; /*임의 지정 치수*/
}
.btnA:hover {
	background-color:#fa82fa;
}
.btnA:active {
	position:relative;
	top:1px;
} /* A 지역 보기 버튼(COLOR : PINK) CSS : 끝*/

/* B 지역 보기 버튼(COLOR : GREEN) CSS : 시작*/
.btnB {
	background-color:#16f552;
	border-radius:28px;
	border:1px solid #18ab29;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:17px;
	padding:16px 31px;
	text-decoration:none;
	text-shadow:0px 1px 0px #2f6627;
}
.btnB:hover {
	background-color:#5cbf2a;
}
.btnB:active {
	position:relative;
	top:1px;
} /* B 지역 보기 버튼(COLOR : GREEN) CSS : 끝*/

/* C 지역 보기 버튼(COLOR : YELLOW) CSS : 시작*/
.btnC {
	background-color:#f5d716;
	border-radius:28px;
	border:1px solid #f5b129;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:17px;
	padding:16px 31px;
	text-decoration:none;
	text-shadow:0px 1px 0px #ffffff;
}
.btnC:hover {
	background-color:#edf766;
}
.btnC:active {
	position:relative;
	top:1px;
} /* C 지역 보기 버튼(COLOR : YELLOW) CSS : 끝*/

/* D 지역 보기 버튼(COLOR : BLUE) CSS : 시작*/
.btnD {
	background-color:#16c8f5;
	border-radius:28px;
	border:1px solid #129ce6;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:17px;
	padding:16px 31px;
	text-decoration:none;
	text-shadow:0px 1px 0px #ffffff;
}
.btnD:hover {
	background-color:#7089ed;
}
.btnD:active {
	position:relative;
	top:1px;
} /* D 지역 보기 버튼(COLOR : BLUE) CSS : 끝*/

div .logo1 {
	background-image: url("/logo1.png");
}

.title {
	text-align: center;
}

.close {
	margin-left: 10px;
}

.geul {
	text-align: center;
}

.geul > a {
	color: rgba(0,0,255,.9);
  	display:inline-block; 
 	margin:0;
  	text-transform:uppercase;
	font-size: 14px;
}

.geul > a:after {
 	display:block; 
   	content: ''; 
  	border-bottom: solid 3px #ea2129;  
  	transform: scaleX(0);   
    transition: transform 250ms ease-in-out;  
}

.geul > a:hover:after { transform: scaleX(1); }




.geul {
	margin-top : 10px;
	font-weight: bold;
}

.ellipsisPhone {
	font-size: 14px;
	font-weight: bold;
	text-align: center;
	margin-top: 3px;
}

.ellipsis{
	font-weight: bold;
}




</style>



<!-- ====================================CSS 끝===================================== -->

<!-- ******************************************** jQuey 로 버튼 이벤트 하는 부분 시작 ************************************** -->
<script src="./js/jquery-3.4.1.js"></script>
<script type="text/javascript">

	$(document).ready(function() {
// A지역 버튼 이벤트 시작!!!		
		$('.btnA').click(function(){
			//A구역 지도 열기
			   var containerA = document.getElementById('map'),
			    optionsA = {
			         center: new kakao.maps.LatLng(35.156902, 129.064353),
			         draggable: false, //지도 이동 확대 막기
			         level: 1
			    };
			 
			var mapA = new kakao.maps.Map(containerA, optionsA);

			// A구역 1번 마커 생성 및 오버레이 표시
			var imageSrcA1 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
			var imageSizeA1 = new kakao.maps.Size(24, 35); 
			var markerImageA1 = new kakao.maps.MarkerImage(imageSrcA1, imageSizeA1); 

			var markerA1 = new kakao.maps.Marker({
			    image : markerImageA1,
			    map: mapA, 
			    title: '듀랩',
			    position: new kakao.maps.LatLng(35.157179, 129.064457)
			});

			//A구역 1번 마커 생성 메서드 끝

			// A구역 1번 오버레이(작은창) 생성 메서드 시작
			var contentA1 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title" style="background-color: rgba(0,0,255,.3);">' + 
			            '            <div style="text-align: center;color: white;">듀랩</div>' + 
			            '            <div class="close" onclick="closeOverlayA1()" title="닫기"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="images/101.jpg" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">부산 부산진구 서전로46번길 10-7</div>' + 
			            '                <div class="ellipsisPhone"><span style="color:GREEN"><i class="fa fa-phone fa-lg"></i></span> 051)805-8423</div>' + 
			            '                <div class="geul" ><a href="cafeDetail.bo?cafe_num=101&page=1" >카페상세보기 ◀◀◀◀ 클릭!</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';

			// 마커 위에 커스텀오버레이를 표시합니다
			// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
			var overlayA1 = new kakao.maps.CustomOverlay({
			    content: contentA1,
//			     map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
			    position: markerA1.getPosition()       
			});

			// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
			kakao.maps.event.addListener(markerA1, 'click', function() {
//			    overlay.setMap(map);
			    overlayA1.setMap(mapA);
			});

			// // 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
			closeOverlayA1 = function () {
			   overlayA1.setMap(null);
			}
			//A구역 1번 마커 생성 및 오버레이 표시

			// 구분선 ----------------------------------------------------------------------------------

			//A구역 2번 마커 생성 메서드 시작 
			var imageSrcA2 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
			var imageSizeA2 = new kakao.maps.Size(24, 35); 
			var markerImageA2 = new kakao.maps.MarkerImage(imageSrcA2, imageSizeA2); 

			var markerA2 = new kakao.maps.Marker({
			    image : markerImageA2,
			    map: mapA,
			    title: '기븐',
			    position: new kakao.maps.LatLng(35.156611, 129.064739)
			});

			//------------- A구역 2번 마커 생성 메서드 끝

			// ------------  A구역 2번 오버레이(작은창) 생성 메서드 시작
			var contentA2 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title" style="background-color: rgba(0,0,255,.3);">' + 
			            '            <div style="text-align: center;color: white;">기븐</div>' + 
			            '            <div class="close" onclick="closeOverlayA2()" title="닫기"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="images/102.jpg" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">부산 부산진구 서전로46번길 10-7</div>' + 
			            '                <div class="ellipsisPhone"><span style="color:GREEN"><i class="fa fa-phone fa-lg"></i></span> 051)805-8423</div>' +
			            '                 <div class="geul" ><a href="cafeDetail.bo?cafe_num=102&page=1">카페상세보기 ◀◀◀◀ 클릭!</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';

			// 마커 위에 커스텀오버레이를 표시합니다
			// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
			var overlayA2 = new kakao.maps.CustomOverlay({
			    content: contentA2,
//			     map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
			    position: markerA2.getPosition()       
			});

			// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
			kakao.maps.event.addListener(markerA2, 'click', function() {
//			    overlay.setMap(map);
			    overlayA2.setMap(mapA);
			});

			// // 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
			closeOverlayA2 = function () {
			   overlayA2.setMap(null);
			}
			// -------------- A구역 2번 레이아웃(작은창) 생성 메서드 끝

			// 구분선 ----------------------------------------------------------------------------------

			//A구역 3번 마커 생성 메서드 시작 
			var imageSrcA3 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
			var imageSizeA3 = new kakao.maps.Size(24, 35); 
			var markerImageA3 = new kakao.maps.MarkerImage(imageSrcA3, imageSizeA3); 

			var markerA3 = new kakao.maps.Marker({
			    image : markerImageA3,
			    map: mapA, 
			    title: '라운지커피',
			    position: new kakao.maps.LatLng(35.156745, 129.064636)
			});

			// ------------  A구역 3번 오버레이(작은창) 생성 메서드 시작
			var contentA3 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title" style="background-color: rgba(0,0,255,.3);">' + 
			            '            <div style="text-align: center;color: white;">라운지커피</div>' + 
			            '            <div class="close" onclick="closeOverlayA3()" title="닫기"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="images/103.jpg" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">부산 부산진구 서전로46번길 10-7</div>' + 
			            '                <div class="ellipsisPhone"><span style="color:GREEN"><i class="fa fa-phone fa-lg"></i></span> 051)805-8423</div>' + 
			            '                 <div class="geul" ><a href="cafeDetail.bo?cafe_num=103&page=1">카페상세보기 ◀◀◀◀ 클릭!</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';

			// 마커 위에 커스텀오버레이를 표시합니다
			// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
			var overlayA3 = new kakao.maps.CustomOverlay({
			    content: contentA3,
//			     map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
			    position: markerA3.getPosition()       
			});

			// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
			kakao.maps.event.addListener(markerA3, 'click', function() {
//			    overlay.setMap(map);
			    overlayA3.setMap(mapA);
			});

			// // 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
			closeOverlayA3 = function () {
			   overlayA3.setMap(null);
			}
			// -------------- A구역 3번 레이아웃(작은창) 생성 메서드 끝
			
			// 구분선 ----------------------------------------------------------------------------------

			//A구역 4번 마커 생성 메서드 시작 
			var imageSrcA4 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
			var imageSizeA4 = new kakao.maps.Size(24, 35); 
			var markerImageA4 = new kakao.maps.MarkerImage(imageSrcA4, imageSizeA4); 

			var markerA4= new kakao.maps.Marker({
			    image : markerImageA4,
			    map: mapA, 
			    title: '컬렉션',
			    position: new kakao.maps.LatLng(35.157180, 129.064688)
			});

			// ------------  A구역 3번 오버레이(작은창) 생성 메서드 시작
			var contentA4 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title" style="background-color: rgba(0,0,255,.3);">' + 
			            '            <div style="text-align: center;color: white;">컬렉션</div>' + 
			            '            <div class="close" onclick="closeOverlayA4()" title="닫기"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="images/104.jpg" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">부산 부산진구 서전로46번길 10-7</div>' + 
			            '                <div class="ellipsisPhone"><span style="color:GREEN"><i class="fa fa-phone fa-lg"></i></span> 051)805-8423</div>' +
			            '                 <div class="geul" ><a href="cafeDetail.bo?cafe_num=104&page=1">카페상세보기 ◀◀◀◀ 클릭!</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';

			// 마커 위에 커스텀오버레이를 표시합니다
			// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
			var overlayA4 = new kakao.maps.CustomOverlay({
			    content: contentA4,
//			     map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
			    position: markerA4.getPosition()       
			});

			// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
			kakao.maps.event.addListener(markerA4, 'click', function() {
//			    overlay.setMap(map);
			    overlayA4.setMap(mapA);
			});

			// // 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
			closeOverlayA4 = function () {
			   overlayA4.setMap(null);
			}
			// -------------- A구역 4번 레이아웃(작은창) 생성 메서드 끝
			
			// 구분선 ----------------------------------------------------------------------------------

			//A구역 5번 마커 생성 메서드 시작 
			var imageSrcA5 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
			var imageSizeA5 = new kakao.maps.Size(24, 35); 
			var markerImageA5 = new kakao.maps.MarkerImage(imageSrcA5, imageSizeA5); 

			var markerA5= new kakao.maps.Marker({
			    image : markerImageA5,
			    map: mapA, 
			    title: '피크닉',
			    position: new kakao.maps.LatLng(35.156746, 129.064747)
			});

			// ------------  A구역 5번 오버레이(작은창) 생성 메서드 시작
			var contentA5 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title" style="background-color: rgba(0,0,255,.3);">' + 
			            '            <div style="text-align: center;color: white;">피크닉</div>' + 
			            '            <div class="close" onclick="closeOverlayA5()" title="닫기"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="images/105.jpg" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">부산 부산진구 서전로46번길 10-7</div>' + 
			            '                <div class="ellipsisPhone"><span style="color:GREEN"><i class="fa fa-phone fa-lg"></i></span> 051)805-8423</div>' + 
			            '                 <div class="geul" ><a href="cafeDetail.bo?cafe_num=105&page=1">카페상세보기 ◀◀◀◀ 클릭!</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';

			// 마커 위에 커스텀오버레이를 표시합니다
			// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
			var overlayA5 = new kakao.maps.CustomOverlay({
			    content: contentA5,
//			     map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
			    position: markerA5.getPosition()       
			});

			// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
			kakao.maps.event.addListener(markerA5, 'click', function() {
//			    overlay.setMap(map);
			    overlayA5.setMap(mapA);
			});

			// // 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
			closeOverlayA5 = function () {
			   overlayA5.setMap(null);
			}
			// -------------- A구역 5번 레이아웃(작은창) 생성 메서드 끝
		}); // A버튼 이벤트 끝 
	//----------------------------------------------------------------------------
	
	
		$('.btnB').click(function(){
			var containerB = document.getElementById('map'),
		    optionsB = {
		         center: new kakao.maps.LatLng(35.155982, 129.064399),
		         draggable: false,
		         level: 1
		    };
		 
		var mapB = new kakao.maps.Map(containerB, optionsB);
		    
		//B구역 1번 마커 생성 메서드 시작 
		var imageSrcB1 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
		var imageSizeB1 = new kakao.maps.Size(24, 35); 
		var markerImageB1 = new kakao.maps.MarkerImage(imageSrcB1, imageSizeB1); 

		var markerB1 = new kakao.maps.Marker({
		    image : markerImageB1,
		    map: mapB, 
		    title: '굿굿웨더',
		    position: new kakao.maps.LatLng(35.156336, 129.064699)
		});

		// ------------  B구역 1번 오버레이(작은창) 생성 메서드 시작
		var contentB1 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title" style="background-color: rgba(0,0,255,.3);">' + 
			            '            <div style="text-align: center;color: white;">굿굿웨더</div>' + 
			            '            <div class="close" onclick="closeOverlayB1()" title="닫기"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="images/106.jpg" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">부산 부산진구 서전로46번길 10-7</div>' + 
			            '                <div class="ellipsisPhone"><span style="color:GREEN"><i class="fa fa-phone fa-lg"></i></span> 051)805-8423</div>' + 
			            '                 <div class="geul" ><a href="cafeDetail.bo?cafe_num=106&page=1">카페상세보기 ◀◀◀◀ 클릭!</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';

		// 마커 위에 커스텀오버레이를 표시합니다
		// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
		var overlayB1 = new kakao.maps.CustomOverlay({
		    content: contentB1,
//		     map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 35.156195, 129.064731
		    position: new kakao.maps.LatLng(35.156195, 129.064731)      
		});

		// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
		kakao.maps.event.addListener(markerB1, 'click', function() {
//		    overlay.setMap(map);
		    overlayB1.setMap(mapB);
		});

		// // 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
		closeOverlayB1 = function () {
		   overlayB1.setMap(null);
		}
		// -------------- B구역 1번 레이아웃(작은창) 생성 메서드 끝

		// 구분선------------------------------------------------------------------------------------------

		//B구역 2번 마커 생성 메서드 시작 
		var imageSrcB2 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
		var imageSizeB2 = new kakao.maps.Size(24, 35); 
		var markerImageB2 = new kakao.maps.MarkerImage(imageSrcB2, imageSizeB2); 

		var markerB2 = new kakao.maps.Marker({
		    image : markerImageB2,
		    map: mapB, 
		    title: '로스노비오스',
		    position: new kakao.maps.LatLng(35.155959, 129.064541)
		});

		// ------------  B구역 2번 오버레이(작은창) 생성 메서드 시작
		var contentB2 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title" style="background-color: rgba(0,0,255,.3);">' + 
			            '            <div style="text-align: center;color: white;">로스노비오스</div>' + 
			            '            <div class="close" onclick="closeOverlayB2()" title="닫기"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="images/107.jpg" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">부산 부산진구 서전로38번길 43-13</div>' + 
			            '                <div class="ellipsisPhone"><span style="color:GREEN"><i class="fa fa-phone fa-lg"></i></span> 051)805-8423</div>' + 
			            '                 <div class="geul" ><a href="cafeDetail.bo?cafe_num=107&page=1">카페상세보기 ◀◀◀◀ 클릭!</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';

		// 마커 위에 커스텀오버레이를 표시합니다
		// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
		var overlayB2 = new kakao.maps.CustomOverlay({
		    content: contentB2,
//		     map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
		    position: markerB2.getPosition()       
		});

		// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
		kakao.maps.event.addListener(markerB2, 'click', function() {
//		    overlay.setMap(map);
		    overlayB2.setMap(mapB);
		});

		// // 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
		closeOverlayB2 = function () {
		   overlayB2.setMap(null);
		}
		// -------------- B구역 2번 레이아웃(작은창) 생성 메서드 끝

		//구분선------------------------------------------------------------------------------------------

		//B구역 3번 마커 생성 메서드 시작 
		var imageSrcB3 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
		var imageSizeB3 = new kakao.maps.Size(24, 35); 
		var markerImageB3 = new kakao.maps.MarkerImage(imageSrcB3, imageSizeB3); 

		var markerB3 = new kakao.maps.Marker({
		    image : markerImageB3,
		  map: mapB, 
		  title: '망원동티라미수',
		  position: new kakao.maps.LatLng(35.155721, 129.064274)
		});

		//------------  B구역 3번 오버레이(작은창) 생성 메서드 시작
		var contentB3 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title" style="background-color: rgba(0,0,255,.3);">' + 
			            '            <div style="text-align: center;color: white;">망원동티라미수</div>' + 
			            '            <div class="close" onclick="closeOverlayB3()" title="닫기"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="images/108.jpg" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">부산 부산진구 서전로38번길 43-8</div>' + 
			            '                <div class="ellipsisPhone"><span style="color:GREEN"><i class="fa fa-phone fa-lg"></i></span> 051)805-8423</div>' + 
			            '                 <div class="geul" ><a href="cafeDetail.bo?cafe_num=108&page=1">카페상세보기 ◀◀◀◀ 클릭!</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';

		//마커 위에 커스텀오버레이를 표시합니다
		//마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
		var overlayB3 = new kakao.maps.CustomOverlay({
		  content: contentB3,
		//   map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
		  position: markerB3.getPosition()       
		});

		//마커를 클릭했을 때 커스텀 오버레이를 표시합니다
		kakao.maps.event.addListener(markerB3, 'click', function() {
		//   overlay.setMap(map);
		  overlayB3.setMap(mapB);
		});

		//// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
		closeOverlayB3 = function () {
		   overlayB3.setMap(null);
		}
		//-------------- B구역 3번 레이아웃(작은창) 생성 메서드 끝


		//구분선------------------------------------------------------------------------------------------


		//B구역 4번 마커 생성 메서드 시작 
		var imageSrcB4 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
		var imageSizeB4 = new kakao.maps.Size(24, 35); 
		var markerImageB4 = new kakao.maps.MarkerImage(imageSrcB4, imageSizeB4); 

		var markerB4 = new kakao.maps.Marker({
		    image : markerImageB4,
		  map: mapB, 
		  title: 'LOVESOME',
		  position: new kakao.maps.LatLng(35.156004, 129.063960)
		});

		//------------  B구역 4번 오버레이(작은창) 생성 메서드 시작
		var contentB4 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title" style="background-color: rgba(0,0,255,.3);">' + 
			            '            <div style="text-align: center;color: white;">LOVESOME</div>' + 
			            '            <div class="close" onclick="closeOverlayB4()" title="닫기"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="images/109.jpg" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">부산 부산진구 서전로38번길 37</div>' + 
			            '                <div class="ellipsisPhone"><span style="color:GREEN"><i class="fa fa-phone fa-lg"></i></span> 051)805-8423</div>' + 
			            '                 <div class="geul" ><a href="cafeDetail.bo?cafe_num=109&page=1">카페상세보기 ◀◀◀◀ 클릭!</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';

		//마커 위에 커스텀오버레이를 표시합니다
		//마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
		var overlayB4 = new kakao.maps.CustomOverlay({
		  content: contentB4,
		//   map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
		  position: markerB4.getPosition()       
		});

		//마커를 클릭했을 때 커스텀 오버레이를 표시합니다
		kakao.maps.event.addListener(markerB4, 'click', function() {
		//   overlay.setMap(map);
		  overlayB4.setMap(mapB);
		});

		//// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
		closeOverlayB4 = function () {
		   overlayB4.setMap(null);
		}
		//-------------- B구역 4번 레이아웃(작은창) 생성 메서드 끝

		//구분선------------------------------------------------------------------------------------------


		//B구역 5번 마커 생성 메서드 시작 
		var imageSrcB5 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
		var imageSizeB5 = new kakao.maps.Size(24, 35); 
		var markerImageB5 = new kakao.maps.MarkerImage(imageSrcB5, imageSizeB5); 

		var markerB5 = new kakao.maps.Marker({
		    image : markerImageB5,
		map: mapB, 
		title: '다운트',
		position: new kakao.maps.LatLng(35.155689, 129.064135)
		});

		//------------  B구역 5번 오버레이(작은창) 생성 메서드 시작
		var contentB5 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title" style="background-color: rgba(0,0,255,.3);">' + 
			            '            <div style="text-align: center;color: white;">다운트</div>' + 
			            '            <div class="close" onclick="closeOverlayB5()" title="닫기"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="images/110.jpg" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">부산 부산진구 서전로38번길 43-</div>' + 
			            '                <div class="ellipsisPhone"><span style="color:GREEN"><i class="fa fa-phone fa-lg"></i></span> 051)805-8423</div>' + 
			            '                 <div class="geul" ><a href="cafeDetail.bo?cafe_num=110&page=1">카페상세보기 ◀◀◀◀ 클릭!</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';

		//마커 위에 커스텀오버레이를 표시합니다
		//마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
		var overlayB5 = new kakao.maps.CustomOverlay({
		content: contentB5,
		// map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
		position: markerB5.getPosition()       
		});

		//마커를 클릭했을 때 커스텀 오버레이를 표시합니다
		kakao.maps.event.addListener(markerB5, 'click', function() {
		//   overlay.setMap(map);
		overlayB5.setMap(mapB);
		});

		////커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
		closeOverlayB5 = function () {
		   overlayB5.setMap(null);
		} //-------------- B구역 5번 레이아웃(작은창) 생성 메서드 끝
		
		}); // B클릭이벤트 메서드 끝
		
		// ---------------------------------------구 분 선---------------------------------------------------------
		
		$('.btnC').click(function(){
		//C구역 지도 열기
	    var containerC = document.getElementById('map'),
	    optionsC = {
	         center: new kakao.maps.LatLng(35.154974, 129.063128),
	         draggable: false,
	         level: 1
	    };
	 
		var mapC = new kakao.maps.Map(containerC, optionsC);

		//C구역 1번 마커 생성 메서드 시작 
		var imageSrcC1 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
		var imageSizeC1 = new kakao.maps.Size(24, 35); 
		var markerImageC1 = new kakao.maps.MarkerImage(imageSrcC1, imageSizeC1); 

		var markerC1 = new kakao.maps.Marker({
	    	image : markerImageC1,
		    map: mapC, 
	  		title: '2인칭 시점',
	  		position: new kakao.maps.LatLng(35.154822, 129.062929)
		});

		//------------  C구역 1번 오버레이(작은창) 생성 메서드 시작
		var contentC1 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title" style="background-color: rgba(0,0,255,.3);">' + 
			            '            <div style="text-align: center;color: white;">2인칭 시점</div>' + 
			            '            <div class="close" onclick="closeOverlayC1()" title="닫기"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="images/111.jpg" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">부산진구 전포대로199번길 40-7</div>' + 
			            '                <div class="ellipsisPhone"><span style="color:GREEN"><i class="fa fa-phone fa-lg"></i></span> 051)805-8423</div>' + 
			            '                 <div class="geul" ><a href="cafeDetail.bo?cafe_num=111&page=1">카페상세보기 ◀◀◀◀ 클릭!</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';

	//마커 위에 커스텀오버레이를 표시합니다
	//마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
	var overlayC1 = new kakao.maps.CustomOverlay({
	  content: contentC1,
	//   map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
	  position: markerC1.getPosition()       
	});

	//마커를 클릭했을 때 커스텀 오버레이를 표시합니다
	kakao.maps.event.addListener(markerC1, 'click', function() {
	//   overlay.setMap(map);
	  overlayC1.setMap(mapC);
	});

	//// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
	closeOverlayC1 = function () {
	   overlayC1.setMap(null);
	}
	
	// --------------------------------------------- 구분선 ------------------------------------------------
	
	
	//C구역 2번 마커 생성 메서드 시작 
	var imageSrcC2 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
	var imageSizeC2 = new kakao.maps.Size(24, 35); 
	var markerImageC2 = new kakao.maps.MarkerImage(imageSrcC2, imageSizeC2); 

	var markerC2 = new kakao.maps.Marker({
    	image : markerImageC2,
	    map: mapC, 
  		title: 'FM 커피하우스 1호점',
  		position: new kakao.maps.LatLng(35.154610, 129.063702)
	});

	//------------  C구역 2번 오버레이(작은창) 생성 메서드 시작
	var contentC2 = '<div class="wrap">' + 
		            '    <div class="info">' + 
		            '        <div class="title" style="background-color: rgba(0,0,255,.3);">' + 
		            '            <div style="text-align: center;color: white;">FM 커피하우스 1호점</div>' + 
		            '            <div class="close" onclick="closeOverlayC2()" title="닫기"></div>' + 
		            '        </div>' + 
		            '        <div class="body">' + 
		            '            <div class="img">' +
		            '                <img src="images/112.jpg" width="73" height="70">' +
		            '           </div>' + 
		            '            <div class="desc">' + 
		            '                <div class="ellipsis">부산 부산진구 전포대로199번길 26</div>' + 
		            '                <div class="ellipsisPhone"><span style="color:GREEN"><i class="fa fa-phone fa-lg"></i></span> 051)805-8423</div>' + 
		            '                 <div class="geul" ><a href="cafeDetail.bo?cafe_num=112&page=1">카페상세보기 ◀◀◀◀ 클릭!</a></div>' + 
		            '            </div>' + 
		            '        </div>' + 
		            '    </div>' +    
		            '</div>';

//마커 위에 커스텀오버레이를 표시합니다
//마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
var overlayC2 = new kakao.maps.CustomOverlay({
  content: contentC2,
//   map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
  position: new kakao.maps.LatLng(35.154610, 129.063625)
});

//마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(markerC2, 'click', function() {
//   overlay.setMap(map);
  overlayC2.setMap(mapC);
});

//// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
closeOverlayC2 = function () {
   overlayC2.setMap(null);
}
//--------------------------------------------- 구분선 ------------------------------------------------


//C구역 3번 마커 생성 메서드 시작 
var imageSrcC3 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
var imageSizeC3 = new kakao.maps.Size(24, 35); 
var markerImageC3 = new kakao.maps.MarkerImage(imageSrcC3, imageSizeC3); 

var markerC3 = new kakao.maps.Marker({
	image : markerImageC3,
    map: mapC, 
		title: '고유커피로스터스',
		position: new kakao.maps.LatLng(35.155308, 129.063166)
});

//------------  C구역 3번 오버레이(작은창) 생성 메서드 시작
var contentC3 = '<div class="wrap">' + 
	            '    <div class="info">' + 
	            '        <div class="title" style="background-color: rgba(0,0,255,.3);">' + 
	            '            <div style="text-align: center;color: white;">고유커피로스터스</div>' + 
	            '            <div class="close" onclick="closeOverlayC3()" title="닫기"></div>' + 
	            '        </div>' + 
	            '        <div class="body">' + 
	            '            <div class="img">' +
	            '                <img src="images/113.jpg" width="73" height="70">' +
	            '           </div>' + 
	            '            <div class="desc">' + 
	            '                <div class="ellipsis">부산 부산진구 전포대로209번길 39</div>' + 
	            '                <div class="ellipsisPhone"><span style="color:GREEN"><i class="fa fa-phone fa-lg"></i></span> 051)805-8423</div>' + 
	            '                 <div class="geul" ><a href="cafeDetail.bo?cafe_num=113&page=1">카페상세보기 ◀◀◀◀ 클릭!</a></div>' + 
	            '            </div>' + 
	            '        </div>' + 
	            '    </div>' +    
	            '</div>';

//마커 위에 커스텀오버레이를 표시합니다
//마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
var overlayC3 = new kakao.maps.CustomOverlay({
content: contentC3,
//map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
position: new kakao.maps.LatLng(35.155250, 129.063166)
});

//마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(markerC3, 'click', function() {
//overlay.setMap(map);
overlayC3.setMap(mapC);
});

////커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
closeOverlayC3 = function () {
overlayC3.setMap(null);
}

//--------------------------------------------- 구분선 ------------------------------------------------


//C구역 4번 마커 생성 메서드 시작 
var imageSrcC4 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
var imageSizeC4 = new kakao.maps.Size(24, 35); 
var markerImageC4 = new kakao.maps.MarkerImage(imageSrcC4, imageSizeC4); 

var markerC4 = new kakao.maps.Marker({
	image : markerImageC4,
  map: mapC, 
		title: '로망34',
		position: new kakao.maps.LatLng(35.154597, 129.063374)
});

//------------  C구역 4번 오버레이(작은창) 생성 메서드 시작
var contentC4 = '<div class="wrap">' + 
	            '    <div class="info">' + 
	            '        <div class="title" style="background-color: rgba(0,0,255,.3);">' + 
	            '            <div style="text-align: center;color: white;">로망34</div>' + 
	            '            <div class="close" onclick="closeOverlayC4()" title="닫기"></div>' + 
	            '        </div>' + 
	            '        <div class="body">' + 
	            '            <div class="img">' +
	            '                <img src="images/114.jpg" width="73" height="70">' +
	            '           </div>' + 
	            '            <div class="desc">' + 
	            '                <div class="ellipsis">부산 부산진구 전포대로199번길 34</div>' + 
	            '                <div class="ellipsisPhone"><span style="color:GREEN"><i class="fa fa-phone fa-lg"></i></span> 051)805-8423</div>' + 
	            '                 <div class="geul" ><a href="cafeDetail.bo?cafe_num=114&page=1">카페상세보기 ◀◀◀◀ 클릭!</a></div>' + 
	            '            </div>' + 
	            '        </div>' + 
	            '    </div>' +    
	            '</div>';

//마커 위에 커스텀오버레이를 표시합니다
//마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
var overlayC4 = new kakao.maps.CustomOverlay({
content: contentC4,
//map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
position: markerC4.getPosition()
});

//마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(markerC4, 'click', function() {
//overlay.setMap(map);
overlayC4.setMap(mapC);
});

////커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
closeOverlayC4 = function () {
overlayC4.setMap(null);
}

//--------------------------------------------- 구분선 ------------------------------------------------


//C구역 5번 마커 생성 메서드 시작 
var imageSrcC5 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
var imageSizeC5 = new kakao.maps.Size(24, 35); 
var markerImageC5 = new kakao.maps.MarkerImage(imageSrcC5, imageSizeC5); 

var markerC5 = new kakao.maps.Marker({
	image : markerImageC4,
map: mapC, 
		title: '코드지카페',
		position: new kakao.maps.LatLng(35.154961, 129.062678)
});

//------------  C구역 4번 오버레이(작은창) 생성 메서드 시작
var contentC5 = '<div class="wrap">' + 
	            '    <div class="info">' + 
	            '        <div class="title" style="background-color: rgba(0,0,255,.3);">' + 
	            '            <div style="text-align: center;color: white;">코드지카페</div>' + 
	            '            <div class="close" onclick="closeOverlayC5()" title="닫기"></div>' + 
	            '        </div>' + 
	            '        <div class="body">' + 
	            '            <div class="img">' +
	            '                <img src="images/115.jpg" width="73" height="70">' +
	            '           </div>' + 
	            '            <div class="desc">' + 
	            '                <div class="ellipsis">부산 부산진구 동천로 70</div>' + 
	            '                <div class="ellipsisPhone"><span style="color:GREEN"><i class="fa fa-phone fa-lg"></i></span> 051)805-8423</div>' + 
	            '                 <div class="geul" ><a href="cafeDetail.bo?cafe_num=115&page=1">카페상세보기 ◀◀◀◀ 클릭!</a></div>' + 
	            '            </div>' + 
	            '        </div>' + 
	            '    </div>' +    
	            '</div>';

//마커 위에 커스텀오버레이를 표시합니다
//마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
var overlayC5 = new kakao.maps.CustomOverlay({
content: contentC5,
//map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
position: markerC5.getPosition()
});

//마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(markerC5, 'click', function() {
//overlay.setMap(map);
overlayC5.setMap(mapC);
});

////커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
closeOverlayC5 = function () {
overlayC5.setMap(null);
}
//--------------------------------------------- 구분선 ------------------------------------------------		
	
	
	
	
	}); // C구역 클릭 이벤트 끝
	
// --------------------------------------------- 구분선 ------------------------------------------------
	
	// D구역 버튼클릭 이벤트 시작!
	$('.btnD').click(function(){
		//D구역 지도 열기
	    var containerD = document.getElementById('map'),
	    optionsD = {
	         center: new kakao.maps.LatLng(35.154953, 129.064378),
	         draggable: false,
	         level: 1
	    };
	 
		var mapD = new kakao.maps.Map(containerD, optionsD);

		//D구역 1번 마커 생성 메서드 시작 
		var imageSrcD1 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
		var imageSizeD1 = new kakao.maps.Size(24, 35); 
		var markerImageD1 = new kakao.maps.MarkerImage(imageSrcD1, imageSizeD1); 

		var markerD1 = new kakao.maps.Marker({
	    	image : markerImageD1,
		    map: mapD, 
	  		title: '카페더맨션',
	  		position: new kakao.maps.LatLng(35.155041, 129.064166)
		});

		//------------  D구역 1번 오버레이(작은창) 생성 메서드 시작
		var contentD1 = '<div class="wrap">' + 
	            '    <div class="info">' + 
	            '        <div class="title" style="background-color: rgba(0,0,255,.3);">' + 
	            '            <div style="text-align: center;color: white;">카페더맨션</div>' + 
	            '            <div class="close" onclick="closeOverlayD1()" title="닫기"></div>' + 
	            '        </div>' + 
	            '        <div class="body">' + 
	            '            <div class="img">' +
	            '                <img src="images/116.jpg" width="73" height="70">' +
	            '           </div>' + 
	            '            <div class="desc">' + 
	            '                <div class="ellipsis">부산 부산진구 동천로 70</div>' + 
	            '                <div class="ellipsisPhone"><span style="color:GREEN"><i class="fa fa-phone fa-lg"></i></span> 051)805-8423</div>' + 
	            '                 <div class="geul" ><a href="cafeDetail.bo?cafe_num=116&page=1">카페상세보기 ◀◀◀◀ 클릭!</a></div>' + 
	            '            </div>' + 
	            '        </div>' + 
	            '    </div>' +    
	            '</div>';

	//마커 위에 커스텀오버레이를 표시합니다
	//마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
	var overlayD1 = new kakao.maps.CustomOverlay({
	  content: contentD1,
	//   map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
	  position: markerD1.getPosition()       
	});

	//마커를 클릭했을 때 커스텀 오버레이를 표시합니다
	kakao.maps.event.addListener(markerD1, 'click', function() {
	//   overlay.setMap(map);
	  overlayD1.setMap(mapD);
	});

	//// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
	closeOverlayD1 = function () {
	   overlayD1.setMap(null);
	}
	
	
	// --------------------------------------------- 구분선 ------------------------------------------------
	
		//D구역 2번 마커 생성 메서드 시작 
		var imageSrcD2 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
		var imageSizeD2 = new kakao.maps.Size(24, 35); 
		var markerImageD2 = new kakao.maps.MarkerImage(imageSrcD2, imageSizeD2); 

		var markerD2 = new kakao.maps.Marker({
	    	image : markerImageD2,
		    map: mapD, 
	  		title: '하이안',
	  		position: new kakao.maps.LatLng(35.155149, 129.064575)
		});

		//------------  D구역 1번 오버레이(작은창) 생성 메서드 시작
		var contentD2 = '<div class="wrap">' + 
	            '    <div class="info">' + 
	            '        <div class="title" style="background-color: rgba(0,0,255,.3);">' + 
	            '            <div style="text-align: center;color: white;">하이안</div>' + 
	            '            <div class="close" onclick="closeOverlayD2()" title="닫기"></div>' + 
	            '        </div>' + 
	            '        <div class="body">' + 
	            '            <div class="img">' +
	            '                <img src="images/117.jpg" width="73" height="70">' +
	            '           </div>' + 
	            '            <div class="desc">' + 
	            '                <div class="ellipsis">부산 부산진구 서전로46번길 62-4</div>' + 
	            '                <div class="ellipsisPhone"><span style="color:GREEN"><i class="fa fa-phone fa-lg"></i></span> 051)805-8423</div>' + 
	            '                 <div class="geul" ><a href="cafeDetail.bo?cafe_num=117&page=1">카페상세보기 ◀◀◀◀ 클릭!</a></div>' + 
	            '            </div>' + 
	            '        </div>' + 
	            '    </div>' +    
	            '</div>';

	//마커 위에 커스텀오버레이를 표시합니다
	//마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
	var overlayD2 = new kakao.maps.CustomOverlay({
	  content: contentD2,
	//   map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
	  position: markerD2.getPosition()       
	});

	//마커를 클릭했을 때 커스텀 오버레이를 표시합니다
	kakao.maps.event.addListener(markerD2, 'click', function() {
	//   overlay.setMap(map);
	  overlayD2.setMap(mapD);
	});

	//// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
	closeOverlayD2 = function () {
	   overlayD2.setMap(null);
	}
	
	// --------------------------------------------- 구분선 ------------------------------------------------
	
	//D구역 3번 마커 생성 메서드 시작 
	var imageSrcD3 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
	var imageSizeD3 = new kakao.maps.Size(24, 35); 
	var markerImageD3 = new kakao.maps.MarkerImage(imageSrcD3, imageSizeD3); 

	var markerD3 = new kakao.maps.Marker({
    	image : markerImageD3,
	    map: mapD, 
  		title: '카페 메인',
  		position: new kakao.maps.LatLng(35.155341, 129.064113)
	});

	//------------  D구역 3번 오버레이(작은창) 생성 메서드 시작
	var contentD3 = '<div class="wrap">' + 
            '    <div class="info">' + 
            '        <div class="title" style="background-color: rgba(0,0,255,.3);">' + 
            '            <div style="text-align: center;color: white;">카페 메인</div>' + 
            '            <div class="close" onclick="closeOverlayD3()" title="닫기"></div>' + 
            '        </div>' + 
            '        <div class="body">' + 
            '            <div class="img">' +
            '                <img src="images/118.jpg" width="73" height="70">' +
            '           </div>' + 
            '            <div class="desc">' + 
            '                <div class="ellipsis">부산 부산진구 전포대로209번길 19</div>' + 
            '                <div class="ellipsisPhone"><span style="color:GREEN"><i class="fa fa-phone fa-lg"></i></span> 051)805-8423</div>' + 
            '                 <div class="geul" ><a href="cafeDetail.bo?cafe_num=118&page=1">카페상세보기 ◀◀◀◀ 클릭!</a></div>' + 
            '            </div>' + 
            '        </div>' + 
            '    </div>' +    
            '</div>';

//마커 위에 커스텀오버레이를 표시합니다
//마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
var overlayD3 = new kakao.maps.CustomOverlay({
  content: contentD3,
//   map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
  position: new kakao.maps.LatLng(35.155190, 129.064113)       
});

//마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(markerD3, 'click', function() {
//   overlay.setMap(map);
  overlayD3.setMap(mapD);
});

//// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
closeOverlayD3 = function () {
   overlayD3.setMap(null);
}

//--------------------------------------------- 구분선 ------------------------------------------------

//D구역 4번 마커 생성 메서드 시작 
var imageSrcD4 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
var imageSizeD4 = new kakao.maps.Size(24, 35); 
var markerImageD4 = new kakao.maps.MarkerImage(imageSrcD4, imageSizeD4); 

var markerD4 = new kakao.maps.Marker({
	image : markerImageD4,
    map: mapD, 
		title: '카페 레이지',
		position: new kakao.maps.LatLng(35.155330, 129.064323)
});

//------------  D구역 4번 오버레이(작은창) 생성 메서드 시작
var contentD4 = '<div class="wrap">' + 
        '    <div class="info">' + 
        '        <div class="title" style="background-color: rgba(0,0,255,.3);">' + 
        '            <div style="text-align: center;color: white;">카페 레이지</div>' + 
        '            <div class="close" onclick="closeOverlayD4()" title="닫기"></div>' + 
        '        </div>' + 
        '        <div class="body">' + 
        '            <div class="img">' +
        '                <img src="images/119.jpg" width="73" height="70">' +
        '           </div>' + 
        '            <div class="desc">' + 
        '                <div class="ellipsis">부산 부산진구 전포대로209번길 15</div>' + 
        '                <div class="ellipsisPhone"><span style="color:GREEN"><i class="fa fa-phone fa-lg"></i></span> 051)805-8423</div>' + 
        '                 <div class="geul" ><a href="cafeDetail.bo?cafe_num=119&page=1">카페상세보기 ◀◀◀◀ 클릭!</a></div>' + 
        '            </div>' + 
        '        </div>' + 
        '    </div>' +    
        '</div>';

//마커 위에 커스텀오버레이를 표시합니다
//마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
var overlayD4 = new kakao.maps.CustomOverlay({
content: contentD4,
//map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
position: new kakao.maps.LatLng(35.155230, 129.064743)       
});

//마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(markerD4, 'click', function() {
//overlay.setMap(map);
overlayD4.setMap(mapD);
});

////커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
closeOverlayD4 = function () {
overlayD4.setMap(null);
}

//--------------------------------------------- 구분선 ------------------------------------------------

//D구역 5번 마커 생성 메서드 시작 
var imageSrcD5 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
var imageSizeD5 = new kakao.maps.Size(24, 35); 
var markerImageD5 = new kakao.maps.MarkerImage(imageSrcD5, imageSizeD5); 

var markerD5 = new kakao.maps.Marker({
	image : markerImageD5,
  map: mapD, 
		title: '카페 씬',
		position: new kakao.maps.LatLng(35.155246, 129.064631)
});

//------------  D구역 5번 오버레이(작은창) 생성 메서드 시작
var contentD5 = '<div class="wrap">' + 
      '    <div class="info">' + 
      '        <div class="title" style="background-color: rgba(0,0,255,.3);">' + 
      '            <div style="text-align: center;color: white;">카페 씬</div>' + 
      '            <div class="close" onclick="closeOverlayD5()" title="닫기"></div>' + 
      '        </div>' + 
      '        <div class="body">' + 
      '            <div class="img">' +
      '                <img src="images/120.jpg" width="73" height="70">' +
      '           </div>' + 
      '            <div class="desc">' + 
      '                <div class="ellipsis">부산 부산진구 전포대로209번길 9</div>' + 
      '                <div class="ellipsisPhone"><span style="color:GREEN"><i class="fa fa-phone fa-lg"></i></span> 051)805-8423</div>' + 
      '                 <div class="geul" ><a href="cafeDetail.bo?cafe_num=120&page=1">카페상세보기 ◀◀◀◀ 클릭!</a></div>' + 
      '            </div>' + 
      '        </div>' + 
      '    </div>' +    
      '</div>';

//마커 위에 커스텀오버레이를 표시합니다
//마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
var overlayD5 = new kakao.maps.CustomOverlay({
content: contentD5,
//map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
position: new kakao.maps.LatLng(35.155, 129.064631)       
});

//마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(markerD5, 'click', function() {
//overlay.setMap(map);
overlayD5.setMap(mapD);
});

////커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
closeOverlayD5 = function () {
overlayD5.setMap(null);
}

//--------------------------------------------- 구분선 ------------------------------------------------

	
	
	
	
	
	}); // D구역 버튼클릭 이벤트 끝!
	
	
		
}); // jQuery 끝
<!-- ******************************************** jQuey 로 버튼 이벤트 하는 부분 끝 ************************************** -->
</script>
</head>



<!-- **************************************************  바디 본문 시작 구분선************************************************** -->
<!-- **************************************************  바디 본문 시작 구분선************************************************** -->
<!-- **************************************************  바디 본문 시작 구분선************************************************** -->
<!-- **************************************************  바디 본문 시작 구분선************************************************** -->
<!-- **************************************************  바디 본문 시작 구분선************************************************** -->
<!-- **************************************************  바디 본문 시작 구분선************************************************** -->




<body class="animsition">
   
   <!-- Header -->
   <jsp:include page="./inc/header/header-v4.jsp"/>
   <!-- Cart -->
   <jsp:include page="./inc/cart/cart.jsp"/>
   <!-- Title page -->
   <section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('images/bg-01.jpg');">
      <h2 class="ltext-105 cl0 txt-center">
         Street View Map
      </h2>
   </section>   


   <!-- Content page -->
   <section class="bg0 p-t-104 p-b-116">
      <div class="container">
      
      
         <div class="flex-w flex-tr">
          
            <div class="size-210 w-full-md">
            
                  <div id="map" style="min-width:100%; height: 600px; "></div>     
                  
            </div>
            <div class="size-210 bor10 flex-w flex-col-m p-lr-93 p-tb-30 p-lr-15-lg w-full-md">
               <div class="flex-w w-full p-b-42" >
                  <span class="fs-18 cl5 txt-center size-211">
                  </span>

                  <div class="size-212 p-t-2">
                     <span class="mtext-110 cl2">
                        	 
                     </span>

                     <p class="stext-115 cl6 size-213 p-t-18">
                     <button class="btnFull" onclick="toMap()">전체 지도 보기</button> 
                     </p>
                     
                  </div>
               </div>

               <div class="flex-w w-full p-b-42">
                  <span class="fs-18 cl5 txt-center size-211">
<!--                      <span class="lnr lnr-phone-handset"></span> -->
							
                  </span>

                  <div class="size-212 p-t-2">
                     <span class="mtext-110 cl2">
                      
                      <button class="btnA" >A 지역 보기</button> &nbsp;
                      <button class="btnB" >B 지역 보기</button> <br>
                      
                      <button class="btnC" >C 지역 보기</button> &nbsp;
                      <button class="btnD" >D 지역 보기</button> 
                     </span>

                     <p class="stext-115 cl1 size-213 p-t-18">
                     </p>
                  </div>
               </div>

<!--                <div class="flex-w w-full"> -->
<!--                   <span class="fs-18 cl5 txt-center size-211"> -->
<!--                      <span class="lnr lnr-envelope"></span> -->
<!--                   </span> -->

                  <div id="logo1" class="size-212 p-t-2">
                     	

<!--                      <p class="stext-115 cl1 size-213 p-t-18"> -->
<!--                         contact@example.com -->
<!--                      </p> -->
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>   
   
   
   <!-- Map -->
   


<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9e772246650bffce859982157dde262e"></script>

<script>
window.onload = function(){
	toMap();
}





function toMap(){
  var  mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(35.155826, 129.063155),// 지도의 중심좌표
        draggable: false, //지도 이동 확대 막기
        level: 3// 지도의 확대 레벨
    };  

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다


// 섹터 A //
var sw = new kakao.maps.LatLng(35.156552, 129.063900), // 섹터A 사각형 영역의 남서쪽 좌표
      ne = new kakao.maps.LatLng(35.157213,  129.064756); // 섹터A 사각형 영역의 북동쪽 좌표
// 섹터 B //     
var sw1 = new kakao.maps.LatLng(35.155446, 129.063900), // 섹터B 사각형 영역의 남서쪽 좌표
      ne1 = new kakao.maps.LatLng(35.156476, 129.064768); // 섹터B 사각형 영역의 북동쪽 좌표
// 섹터 C //     
var sw2 = new kakao.maps.LatLng(35.154556, 129.062407), // 섹터C 사각형 영역의 남서쪽 좌표
      ne2 = new kakao.maps.LatLng(35.155348, 129.063829); //  섹터C 사각형 영역의 북동쪽 좌표
// 섹터 D //     
var sw3 = new kakao.maps.LatLng(35.154576, 129.063911), // 섹터D 사각형 영역의 남서쪽 좌표
      ne3 = new kakao.maps.LatLng(35.155350, 129.064778); //  섹터D 사각형 영역의 북동쪽 좌표                  
    

    
// 섹터 A
// 사각형을 구성하는 영역정보를 생성합니다
// 사각형을 생성할 때 영역정보는 LatLngBounds 객체로 넘겨줘야 합니다
var rectangleBounds = new kakao.maps.LatLngBounds(sw, ne);
//섹터 B
//사각형을 구성하는 영역정보를 생성합니다
//사각형을 생성할 때 영역정보는 LatLngBounds 객체로 넘겨줘야 합니다
var rectangleBounds1 = new kakao.maps.LatLngBounds(sw1, ne1);
//섹터 C
//사각형을 구성하는 영역정보를 생성합니다
//사각형을 생성할 때 영역정보는 LatLngBounds 객체로 넘겨줘야 합니다
var rectangleBounds2 = new kakao.maps.LatLngBounds(sw2, ne2);
//섹터 D
//사각형을 구성하는 영역정보를 생성합니다
//사각형을 생성할 때 영역정보는 LatLngBounds 객체로 넘겨줘야 합니다
var rectangleBounds3 = new kakao.maps.LatLngBounds(sw3, ne3);
    

// 섹터 A
// 지도에 표시할 사각형을 생성합니다
var rectangle = new kakao.maps.Rectangle({
    bounds: rectangleBounds, // 그려질 사각형의 영역정보입니다
    strokeWeight: 4, // 선의 두께입니다
    strokeColor: '#FF3DE5', // 선의 색깔입니다
    strokeOpacity: 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
    strokeStyle: 'shortdashdot', // 선의 스타일입니다
    fillColor: '#FF8AEF', // 채우기 색깔입니다
    fillOpacity: 0.8 // 채우기 불투명도 입니다
});

//섹터 B
//지도에 표시할 사각형을 생성합니다
var rectangle1 = new kakao.maps.Rectangle({
 bounds: rectangleBounds1, // 그려질 사각형의 영역정보입니다
 strokeWeight: 4, // 선의 두께입니다
 strokeColor: '#80E12A', // 선의 색깔입니다
 strokeOpacity: 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
 strokeStyle: 'shortdashdot', // 선의 스타일입니다
 fillColor: '#CBFF75', // 채우기 색깔입니다
 fillOpacity: 0.8 // 채우기 불투명도 입니다
});

//섹터 C
//지도에 표시할 사각형을 생성합니다
var rectangle2 = new kakao.maps.Rectangle({
bounds: rectangleBounds2, // 그려질 사각형의 영역정보입니다
strokeWeight: 4, // 선의 두께입니다
strokeColor: '#FFA500', // 선의 색깔입니다
strokeOpacity: 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
strokeStyle: 'shortdashdot', // 선의 스타일입니다
fillColor: '#FFEB46', // 채우기 색깔입니다
fillOpacity: 0.8 // 채우기 불투명도 입니다
});

//섹터 D
//지도에 표시할 사각형을 생성합니다
var rectangle3 = new kakao.maps.Rectangle({
bounds: rectangleBounds3, // 그려질 사각형의 영역정보입니다
strokeWeight: 4, // 선의 두께입니다
strokeColor: '#00A5FF', // 선의 색깔입니다
strokeOpacity: 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
strokeStyle: 'shortdashdot', // 선의 스타일입니다
fillColor: '#00FFFF', // 채우기 색깔입니다
fillOpacity: 0.8 // 채우기 불투명도 입니다
});





// 섹터 A
// 지도에 사각형을 표시합니다
rectangle.setMap(map);
//섹터 B
//지도에 사각형을 표시합니다
rectangle1.setMap(map);
//섹터 C
//지도에 사각형을 표시합니다
rectangle2.setMap(map);
//섹터 D
//지도에 사각형을 표시합니다
rectangle3.setMap(map);





// 전포카페거리 쪽 마커 표시
var marker = new kakao.maps.Marker({
    map: map, 
    position: new kakao.maps.LatLng(35.155428, 129.062558)
});

// 커스텀 오버레이에 표시할 컨텐츠 입니다
// 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
// 별도의 이벤트 메소드를 제공하지 않습니다 
var content = '<div class="wrap">' + 
            '    <div class="info">' + 
            '        <div class="title" style="background-color: rgba(0,0,255,.3);">' + 
            '            <div style="text-align: center;color: white;">전포카페거리</div>' + 
            '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
            '        </div>' + 
            '        <div class="body">' + 
            '            <div class="img">' +
            '                <img src="https://scontent-icn1-1.xx.fbcdn.net/v/t31.0-8/23270260_305585979848521_1728404791928000445_o.jpg?_nc_cat=107&_nc_oc=AQlLsWlIbu2W-s_4j1xjgkZzDGOu-sXmcKyMPrnOOwkuFORG0r9VStcXrfiLy9uBJYM&_nc_ht=scontent-icn1-1.xx&oh=2a28ce24580b84a13caf88777d497279&oe=5E4F2C9A" width="73" height="70">' +
            '           </div>' + 
            '            <div class="desc">' + 
            '                <div class="ellipsisPhone">부산 부산진구 동천로 92</div>' + 
            '                <div class="ellipsisPhone">지번 전포동 668-1</div>' + 
            '                <div class="geul"><a href="https://map.kakao.com/link/to/전포 카페거리, 35.155426,129.062558" target="_blank" class="link">길찾기 바로가기←클릭!</a></div>' + 
            '            </div>' + 
            '        </div>' + 
            '    </div>' +    
            '</div>';

// 마커 위에 커스텀오버레이를 표시합니다
// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
var overlay = new kakao.maps.CustomOverlay({
    content: content,
    map: map,
    position: marker.getPosition()       
});

// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(marker, 'click', function() {
    overlay.setMap(map);
});

// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
closeOverlay = function () {
   overlay.setMap(null);
}

//마우스오버 아웃 이벤트 불투명도 바꾸기
var mouseoverOption = {  
    fillOpacity: 1 // 채우기 불투명도 입니다      
};

// 다각형에 마우스아웃 이벤트가 발생했을 때 변경할 채우기 옵션입니다
var mouseoutOption = {
    fillOpacity: 0.8 // 채우기 불투명도 입니다        
};



//A 섹터 마우스 오버 이벤트
kakao.maps.event.addListener(rectangle, 'mouseover',function(){
   // 다각형의 채우기 옵션을 변경합니다
    rectangle.setOptions(mouseoverOption);
   
}); 
kakao.maps.event.addListener(rectangle, 'mouseout', function() { 
 // 다각형의 채우기 옵션을 변경합니다
    rectangle.setOptions(mouseoutOption);
    
}); 


// ============== A구역 클릭이벤트 시작 ===============
	
 kakao.maps.event.addListener(rectangle, 'click', function() {        


   //A구역 지도 열기
   var containerA = document.getElementById('map'),
    optionsA = {
         center: new kakao.maps.LatLng(35.156902, 129.064353),
         draggable: false, //지도 이동 확대 막기
         level: 1
    };
 
   var mapA = new kakao.maps.Map(containerA, optionsA);

// A구역 1번 마커 생성 및 오버레이 표시
	var imageSrcA1 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
	var imageSizeA1 = new kakao.maps.Size(24, 35); 
	var markerImageA1 = new kakao.maps.MarkerImage(imageSrcA1, imageSizeA1); 

	var markerA1 = new kakao.maps.Marker({
	    image : markerImageA1,
	    map: mapA, 
	    title: '듀랩',
	    position: new kakao.maps.LatLng(35.157179, 129.064457)
	});

	//A구역 1번 마커 생성 메서드 끝

	// A구역 1번 오버레이(작은창) 생성 메서드 시작
	var contentA1 = '<div class="wrap">' + 
	            '    <div class="info">' + 
	            '        <div class="title" style="background-color: rgba(0,0,255,.3);">' + 
	            '            <div style="text-align: center;color: white;">듀랩</div>' + 
	            '            <div class="close" onclick="closeOverlayA1()" title="닫기"></div>' + 
	            '        </div>' + 
	            '        <div class="body">' + 
	            '            <div class="img">' +
	            '                <img src="images/101.jpg" width="73" height="70">' +
	            '           </div>' + 
	            '            <div class="desc">' + 
	            '                <div class="ellipsis">부산 부산진구 서전로46번길 10-7</div>' + 
	            '                <div class="ellipsisPhone"><span style="color:GREEN"><i class="fa fa-phone fa-lg"></i></span> 051)805-8423</div>' + 
	            '                <div class="geul" ><a href="cafeDetail.bo?cafe_num=101&page=1" >카페상세보기 ◀◀◀◀ 클릭!</a></div>' + 
	            '            </div>' + 
	            '        </div>' + 
	            '    </div>' +    
	            '</div>';

	// 마커 위에 커스텀오버레이를 표시합니다
	// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
	var overlayA1 = new kakao.maps.CustomOverlay({
	    content: contentA1,
//	     map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
	    position: markerA1.getPosition()       
	});

	// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
	kakao.maps.event.addListener(markerA1, 'click', function() {
//	    overlay.setMap(map);
	    overlayA1.setMap(mapA);
	});

	// // 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
	closeOverlayA1 = function () {
	   overlayA1.setMap(null);
	}
	//A구역 1번 마커 생성 및 오버레이 표시

	// 구분선 ----------------------------------------------------------------------------------

	//A구역 2번 마커 생성 메서드 시작 
			var imageSrcA2 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
			var imageSizeA2 = new kakao.maps.Size(24, 35); 
			var markerImageA2 = new kakao.maps.MarkerImage(imageSrcA2, imageSizeA2); 

			var markerA2 = new kakao.maps.Marker({
			    image : markerImageA2,
			    map: mapA,
			    title: '기븐',
			    position: new kakao.maps.LatLng(35.156611, 129.064739)
			});

			//------------- A구역 2번 마커 생성 메서드 끝

			// ------------  A구역 2번 오버레이(작은창) 생성 메서드 시작
			var contentA2 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title" style="background-color: rgba(0,0,255,.3);">' + 
			            '            <div style="text-align: center;color: white;">기븐</div>' + 
			            '            <div class="close" onclick="closeOverlayA2()" title="닫기"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="images/102.jpg" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">부산 부산진구 서전로46번길 10-7</div>' + 
			            '                <div class="ellipsisPhone"><span style="color:GREEN"><i class="fa fa-phone fa-lg"></i></span> 051)805-8423</div>' +
			            '                 <div class="geul" ><a href="cafeDetail.bo?cafe_num=102&page=1">카페상세보기 ◀◀◀◀ 클릭!</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';

			// 마커 위에 커스텀오버레이를 표시합니다
			// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
			var overlayA2 = new kakao.maps.CustomOverlay({
			    content: contentA2,
//			     map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
			    position: markerA2.getPosition()       
			});

			// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
			kakao.maps.event.addListener(markerA2, 'click', function() {
//			    overlay.setMap(map);
			    overlayA2.setMap(mapA);
			});

			// // 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
			closeOverlayA2 = function () {
			   overlayA2.setMap(null);
			}
			// -------------- A구역 2번 레이아웃(작은창) 생성 메서드 끝

			// 구분선 ----------------------------------------------------------------------------------



//A구역 3번 마커 생성 메서드 시작 
			var imageSrcA3 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
			var imageSizeA3 = new kakao.maps.Size(24, 35); 
			var markerImageA3 = new kakao.maps.MarkerImage(imageSrcA3, imageSizeA3); 

			var markerA3 = new kakao.maps.Marker({
			    image : markerImageA3,
			    map: mapA, 
			    title: '라운지커피',
			    position: new kakao.maps.LatLng(35.156745, 129.064636)
			});

			// ------------  A구역 3번 오버레이(작은창) 생성 메서드 시작
			var contentA3 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title" style="background-color: rgba(0,0,255,.3);">' + 
			            '            <div style="text-align: center;color: white;">라운지커피</div>' + 
			            '            <div class="close" onclick="closeOverlayA3()" title="닫기"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="images/103.jpg" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">부산 부산진구 서전로46번길 10-7</div>' + 
			            '                <div class="ellipsisPhone"><span style="color:GREEN"><i class="fa fa-phone fa-lg"></i></span> 051)805-8423</div>' + 
			            '                 <div class="geul" ><a href="cafeDetail.bo?cafe_num=103&page=1">카페상세보기 ◀◀◀◀ 클릭!</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';

			// 마커 위에 커스텀오버레이를 표시합니다
			// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
			var overlayA3 = new kakao.maps.CustomOverlay({
			    content: contentA3,
//			     map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
			    position: markerA3.getPosition()       
			});

			// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
			kakao.maps.event.addListener(markerA3, 'click', function() {
//			    overlay.setMap(map);
			    overlayA3.setMap(mapA);
			});

			// // 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
			closeOverlayA3 = function () {
			   overlayA3.setMap(null);
			}
			// -------------- A구역 3번 레이아웃(작은창) 생성 메서드 끝
			
				//A구역 4번 마커 생성 메서드 시작 
			var imageSrcA4 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
			var imageSizeA4 = new kakao.maps.Size(24, 35); 
			var markerImageA4 = new kakao.maps.MarkerImage(imageSrcA4, imageSizeA4); 

			var markerA4= new kakao.maps.Marker({
			    image : markerImageA4,
			    map: mapA, 
			    title: '컬렉션',
			    position: new kakao.maps.LatLng(35.157180, 129.064688)
			});

			// ------------  A구역 3번 오버레이(작은창) 생성 메서드 시작
			var contentA4 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title" style="background-color: rgba(0,0,255,.3);">' + 
			            '            <div style="text-align: center;color: white;">컬렉션</div>' + 
			            '            <div class="close" onclick="closeOverlayA4()" title="닫기"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="images/104.jpg" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">부산 부산진구 서전로46번길 10-7</div>' + 
			            '                <div class="ellipsisPhone"><span style="color:GREEN"><i class="fa fa-phone fa-lg"></i></span> 051)805-8423</div>' +
			            '                 <div class="geul" ><a href="cafeDetail.bo?cafe_num=104&page=1">카페상세보기 ◀◀◀◀ 클릭!</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';

			// 마커 위에 커스텀오버레이를 표시합니다
			// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
			var overlayA4 = new kakao.maps.CustomOverlay({
			    content: contentA4,
//			     map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
			    position: markerA4.getPosition()       
			});

			// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
			kakao.maps.event.addListener(markerA4, 'click', function() {
//			    overlay.setMap(map);
			    overlayA4.setMap(mapA);
			});

			// // 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
			closeOverlayA4 = function () {
			   overlayA4.setMap(null);
			}
			// -------------- A구역 4번 레이아웃(작은창) 생성 메서드 끝
			
			// 구분선 ----------------------------------------------------------------------------------

			//A구역 5번 마커 생성 메서드 시작 
			var imageSrcA5 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
			var imageSizeA5 = new kakao.maps.Size(24, 35); 
			var markerImageA5 = new kakao.maps.MarkerImage(imageSrcA5, imageSizeA5); 

			var markerA5= new kakao.maps.Marker({
			    image : markerImageA5,
			    map: mapA, 
			    title: '피크닉',
			    position: new kakao.maps.LatLng(35.156746, 129.064747)
			});

			// ------------  A구역 5번 오버레이(작은창) 생성 메서드 시작
			var contentA5 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title" style="background-color: rgba(0,0,255,.3);">' + 
			            '            <div style="text-align: center;color: white;">피크닉</div>' + 
			            '            <div class="close" onclick="closeOverlayA5()" title="닫기"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="images/105.jpg" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">부산 부산진구 서전로46번길 10-7</div>' + 
			            '                <div class="ellipsisPhone"><span style="color:GREEN"><i class="fa fa-phone fa-lg"></i></span> 051)805-8423</div>' + 
			            '                 <div class="geul" ><a href="cafeDetail.bo?cafe_num=105&page=1">카페상세보기 ◀◀◀◀ 클릭!</a></div>' + 
			            '            </div>' + 
			            '        </div>' + 
			            '    </div>' +    
			            '</div>';

			// 마커 위에 커스텀오버레이를 표시합니다
			// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
			var overlayA5 = new kakao.maps.CustomOverlay({
			    content: contentA5,
//			     map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
			    position: markerA5.getPosition()       
			});

			// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
			kakao.maps.event.addListener(markerA5, 'click', function() {
//			    overlay.setMap(map);
			    overlayA5.setMap(mapA);
			});

			// // 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
			closeOverlayA5 = function () {
			   overlayA5.setMap(null);
			}
			// -------------- A구역 5번 레이아웃(작은창) 생성 메서드 끝
    
});
//============== A구역 클릭이벤트 끝 ===============

	

//B 섹터 마우스 오버 이벤트
kakao.maps.event.addListener(rectangle1, 'mouseover',function(){
   // 다각형의 채우기 옵션을 변경합니다
    rectangle1.setOptions(mouseoverOption);
}); 
kakao.maps.event.addListener(rectangle1, 'mouseout', function() { 
 // 다각형의 채우기 옵션을 변경합니다
    rectangle1.setOptions(mouseoutOption);
    
}); 



//=================B 구역 클릭 이벤트 시작 ==============================
kakao.maps.event.addListener(rectangle1, 'click', function(mouseEvent) {        
    
//B구역 지도 열기
   var containerB = document.getElementById('map'),
    optionsB = {
         center: new kakao.maps.LatLng(35.155982, 129.064399),
         draggable: false,
         level: 1
    };
 
var mapB = new kakao.maps.Map(containerB, optionsB);
    
//B구역 1번 마커 생성 메서드 시작 
var imageSrcB1 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
var imageSizeB1 = new kakao.maps.Size(24, 35); 
var markerImageB1 = new kakao.maps.MarkerImage(imageSrcB1, imageSizeB1); 

var markerB1 = new kakao.maps.Marker({
    image : markerImageB1,
    map: mapB, 
    title: '굿굿웨더',
    position: new kakao.maps.LatLng(35.156336, 129.064699)
});

// ------------  B구역 1번 오버레이(작은창) 생성 메서드 시작
var contentB1 = '<div class="wrap">' + 
	            '    <div class="info">' + 
	            '        <div class="title" style="background-color: rgba(0,0,255,.3);">' + 
	            '            <div style="text-align: center;color: white;">굿굿웨더</div>' + 
	            '            <div class="close" onclick="closeOverlayB1()" title="닫기"></div>' + 
	            '        </div>' + 
	            '        <div class="body">' + 
	            '            <div class="img">' +
	            '                <img src="images/106.jpg" width="73" height="70">' +
	            '           </div>' + 
	            '            <div class="desc">' + 
	            '                <div class="ellipsis">부산 부산진구 서전로46번길 10-7</div>' + 
	            '                <div class="ellipsisPhone"><span style="color:GREEN"><i class="fa fa-phone fa-lg"></i></span> 051)805-8423</div>' + 
	            '                 <div class="geul" ><a href="cafeDetail.bo?cafe_num=106&page=1">카페상세보기 ◀◀◀◀ 클릭!</a></div>' + 
	            '            </div>' + 
	            '        </div>' + 
	            '    </div>' +    
	            '</div>';

// 마커 위에 커스텀오버레이를 표시합니다
// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
var overlayB1 = new kakao.maps.CustomOverlay({
    content: contentB1,
//     map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 35.156195, 129.064731
    position: new kakao.maps.LatLng(35.156195, 129.064731)      
});

// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(markerB1, 'click', function() {
//    overlay.setMap(map);
    overlayB1.setMap(mapB);
});

// // 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
closeOverlayB1 = function () {
   overlayB1.setMap(null);
}
// -------------- B구역 1번 레이아웃(작은창) 생성 메서드 끝

// 구분선------------------------------------------------------------------------------------------

//B구역 2번 마커 생성 메서드 시작 
var imageSrcB2 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
var imageSizeB2 = new kakao.maps.Size(24, 35); 
var markerImageB2 = new kakao.maps.MarkerImage(imageSrcB2, imageSizeB2); 

var markerB2 = new kakao.maps.Marker({
    image : markerImageB2,
    map: mapB, 
    title: '로스노비오스',
    position: new kakao.maps.LatLng(35.155959, 129.064541)
});

// ------------  B구역 2번 오버레이(작은창) 생성 메서드 시작
var contentB2 = '<div class="wrap">' + 
	            '    <div class="info">' + 
	            '        <div class="title" style="background-color: rgba(0,0,255,.3);">' + 
	            '            <div style="text-align: center;color: white;">로스노비오스</div>' + 
	            '            <div class="close" onclick="closeOverlayB2()" title="닫기"></div>' + 
	            '        </div>' + 
	            '        <div class="body">' + 
	            '            <div class="img">' +
	            '                <img src="images/107.jpg" width="73" height="70">' +
	            '           </div>' + 
	            '            <div class="desc">' + 
	            '                <div class="ellipsis">부산 부산진구 서전로38번길 43-13</div>' + 
	            '                <div class="ellipsisPhone"><span style="color:GREEN"><i class="fa fa-phone fa-lg"></i></span> 051)805-8423</div>' + 
	            '                 <div class="geul" ><a href="cafeDetail.bo?cafe_num=107&page=1">카페상세보기 ◀◀◀◀ 클릭!</a></div>' + 
	            '            </div>' + 
	            '        </div>' + 
	            '    </div>' +    
	            '</div>';

// 마커 위에 커스텀오버레이를 표시합니다
// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
var overlayB2 = new kakao.maps.CustomOverlay({
    content: contentB2,
//     map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
    position: markerB2.getPosition()       
});

// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(markerB2, 'click', function() {
//    overlay.setMap(map);
    overlayB2.setMap(mapB);
});

// // 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
closeOverlayB2 = function () {
   overlayB2.setMap(null);
}
// -------------- B구역 2번 레이아웃(작은창) 생성 메서드 끝

//구분선------------------------------------------------------------------------------------------

//B구역 3번 마커 생성 메서드 시작 
var imageSrcB3 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
var imageSizeB3 = new kakao.maps.Size(24, 35); 
var markerImageB3 = new kakao.maps.MarkerImage(imageSrcB3, imageSizeB3); 

var markerB3 = new kakao.maps.Marker({
    image : markerImageB3,
  map: mapB, 
  title: '망원동티라미수',
  position: new kakao.maps.LatLng(35.155721, 129.064274)
});

//------------  B구역 3번 오버레이(작은창) 생성 메서드 시작
var contentB3 = '<div class="wrap">' + 
	            '    <div class="info">' + 
	            '        <div class="title" style="background-color: rgba(0,0,255,.3);">' + 
	            '            <div style="text-align: center;color: white;">망원동티라미수</div>' + 
	            '            <div class="close" onclick="closeOverlayB3()" title="닫기"></div>' + 
	            '        </div>' + 
	            '        <div class="body">' + 
	            '            <div class="img">' +
	            '                <img src="images/108.jpg" width="73" height="70">' +
	            '           </div>' + 
	            '            <div class="desc">' + 
	            '                <div class="ellipsis">부산 부산진구 서전로38번길 43-8</div>' + 
	            '                <div class="ellipsisPhone"><span style="color:GREEN"><i class="fa fa-phone fa-lg"></i></span> 051)805-8423</div>' + 
	            '                 <div class="geul" ><a href="cafeDetail.bo?cafe_num=108&page=1">카페상세보기 ◀◀◀◀ 클릭!</a></div>' + 
	            '            </div>' + 
	            '        </div>' + 
	            '    </div>' +    
	            '</div>';

//마커 위에 커스텀오버레이를 표시합니다
//마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
var overlayB3 = new kakao.maps.CustomOverlay({
  content: contentB3,
//   map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
  position: markerB3.getPosition()       
});

//마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(markerB3, 'click', function() {
//   overlay.setMap(map);
  overlayB3.setMap(mapB);
});

//// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
closeOverlayB3 = function () {
   overlayB3.setMap(null);
}
//-------------- B구역 3번 레이아웃(작은창) 생성 메서드 끝


//구분선------------------------------------------------------------------------------------------


//B구역 4번 마커 생성 메서드 시작 
var imageSrcB4 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
var imageSizeB4 = new kakao.maps.Size(24, 35); 
var markerImageB4 = new kakao.maps.MarkerImage(imageSrcB4, imageSizeB4); 

var markerB4 = new kakao.maps.Marker({
    image : markerImageB4,
  map: mapB, 
  title: 'LOVESOME',
  position: new kakao.maps.LatLng(35.156004, 129.063960)
});

//------------  B구역 4번 오버레이(작은창) 생성 메서드 시작
var contentB4 = '<div class="wrap">' + 
	            '    <div class="info">' + 
	            '        <div class="title" style="background-color: rgba(0,0,255,.3);">' + 
	            '            <div style="text-align: center;color: white;">LOVESOME</div>' + 
	            '            <div class="close" onclick="closeOverlayB4()" title="닫기"></div>' + 
	            '        </div>' + 
	            '        <div class="body">' + 
	            '            <div class="img">' +
	            '                <img src="images/109.jpg" width="73" height="70">' +
	            '           </div>' + 
	            '            <div class="desc">' + 
	            '                <div class="ellipsis">부산 부산진구 서전로38번길 37</div>' + 
	            '                <div class="ellipsisPhone"><span style="color:GREEN"><i class="fa fa-phone fa-lg"></i></span> 051)805-8423</div>' + 
	            '                 <div class="geul" ><a href="cafeDetail.bo?cafe_num=109&page=1">카페상세보기 ◀◀◀◀ 클릭!</a></div>' + 
	            '            </div>' + 
	            '        </div>' + 
	            '    </div>' +    
	            '</div>';

//마커 위에 커스텀오버레이를 표시합니다
//마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
var overlayB4 = new kakao.maps.CustomOverlay({
  content: contentB4,
//   map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
  position: markerB4.getPosition()       
});

//마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(markerB4, 'click', function() {
//   overlay.setMap(map);
  overlayB4.setMap(mapB);
});

//// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
closeOverlayB4 = function () {
   overlayB4.setMap(null);
}
//-------------- B구역 4번 레이아웃(작은창) 생성 메서드 끝

//구분선------------------------------------------------------------------------------------------


//B구역 5번 마커 생성 메서드 시작 
var imageSrcB5 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
var imageSizeB5 = new kakao.maps.Size(24, 35); 
var markerImageB5 = new kakao.maps.MarkerImage(imageSrcB5, imageSizeB5); 

var markerB5 = new kakao.maps.Marker({
    image : markerImageB5,
map: mapB, 
title: '다운트',
position: new kakao.maps.LatLng(35.155689, 129.064135)
});

//------------  B구역 5번 오버레이(작은창) 생성 메서드 시작
var contentB5 = '<div class="wrap">' + 
	            '    <div class="info">' + 
	            '        <div class="title" style="background-color: rgba(0,0,255,.3);">' + 
	            '            <div style="text-align: center;color: white;">다운트</div>' + 
	            '            <div class="close" onclick="closeOverlayB5()" title="닫기"></div>' + 
	            '        </div>' + 
	            '        <div class="body">' + 
	            '            <div class="img">' +
	            '                <img src="images/110.jpg" width="73" height="70">' +
	            '           </div>' + 
	            '            <div class="desc">' + 
	            '                <div class="ellipsis">부산 부산진구 서전로38번길 43-</div>' + 
	            '                <div class="ellipsisPhone"><span style="color:GREEN"><i class="fa fa-phone fa-lg"></i></span> 051)805-8423</div>' + 
	            '                 <div class="geul" ><a href="cafeDetail.bo?cafe_num=110&page=1">카페상세보기 ◀◀◀◀ 클릭!</a></div>' + 
	            '            </div>' + 
	            '        </div>' + 
	            '    </div>' +    
	            '</div>';

//마커 위에 커스텀오버레이를 표시합니다
//마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
var overlayB5 = new kakao.maps.CustomOverlay({
content: contentB5,
// map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
position: markerB5.getPosition()       
});

//마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(markerB5, 'click', function() {
//   overlay.setMap(map);
overlayB5.setMap(mapB);
});

////커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
closeOverlayB5 = function () {
   overlayB5.setMap(null);
} //-------------- B구역 5번 레이아웃(작은창) 생성 메서드 끝
    
});
// ============================ B 구역 클릭 이벤트 끝 ===============================


//C 섹터 마우스 오버 이벤트
kakao.maps.event.addListener(rectangle2, 'mouseover',function(){
   // 다각형의 채우기 옵션을 변경합니다
    rectangle2.setOptions(mouseoverOption);
}); 
kakao.maps.event.addListener(rectangle2, 'mouseout', function() { 
 // 다각형의 채우기 옵션을 변경합니다
    rectangle2.setOptions(mouseoutOption);
    
}); 


// ========================= C 섹터 클릭 이벤트!! =================================
kakao.maps.event.addListener(rectangle2, 'click', function(mouseEvent) {        
    
    //C구역 지도 열기
    var containerC = document.getElementById('map'),
    optionsC = {
         center: new kakao.maps.LatLng(35.154974, 129.063128),
         draggable: false,
         level: 1
    };
 
var mapC = new kakao.maps.Map(containerC, optionsC);

//C구역 1번 마커 생성 메서드 시작 
var imageSrcC1 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
var imageSizeC1 = new kakao.maps.Size(24, 35); 
var markerImageC1 = new kakao.maps.MarkerImage(imageSrcC1, imageSizeC1); 

var markerC1 = new kakao.maps.Marker({
    image : markerImageC1,
  map: mapC, 
  title: '뚱카롱',
  position: new kakao.maps.LatLng(35.155312,  129.062777)
});

//C구역 1번 마커 생성 메서드 시작 
var imageSrcC1 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
var imageSizeC1 = new kakao.maps.Size(24, 35); 
var markerImageC1 = new kakao.maps.MarkerImage(imageSrcC1, imageSizeC1); 

var markerC1 = new kakao.maps.Marker({
	image : markerImageC1,
    map: mapC, 
		title: '2인칭 시점',
		position: new kakao.maps.LatLng(35.154822, 129.062929)
});

//------------  C구역 1번 오버레이(작은창) 생성 메서드 시작
var contentC1 = '<div class="wrap">' + 
	            '    <div class="info">' + 
	            '        <div class="title" style="background-color: rgba(0,0,255,.3);">' + 
	            '            <div style="text-align: center;color: white;">2인칭 시점</div>' + 
	            '            <div class="close" onclick="closeOverlayC1()" title="닫기"></div>' + 
	            '        </div>' + 
	            '        <div class="body">' + 
	            '            <div class="img">' +
	            '                <img src="images/111.jpg" width="73" height="70">' +
	            '           </div>' + 
	            '            <div class="desc">' + 
	            '                <div class="ellipsis">부산진구 전포대로199번길 40-7</div>' + 
	            '                <div class="ellipsisPhone"><span style="color:GREEN"><i class="fa fa-phone fa-lg"></i></span> 051)805-8423</div>' + 
	            '                 <div class="geul" ><a href="cafeDetail.bo?cafe_num=111&page=1">카페상세보기 ◀◀◀◀ 클릭!</a></div>' + 
	            '            </div>' + 
	            '        </div>' + 
	            '    </div>' +    
	            '</div>';

//마커 위에 커스텀오버레이를 표시합니다
//마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
var overlayC1 = new kakao.maps.CustomOverlay({
content: contentC1,
//   map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
position: markerC1.getPosition()       
});

//마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(markerC1, 'click', function() {
//   overlay.setMap(map);
overlayC1.setMap(mapC);
});

//// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
closeOverlayC1 = function () {
overlayC1.setMap(null);
}

// --------------------------------------------- 구분선 ------------------------------------------------


//C구역 2번 마커 생성 메서드 시작 
var imageSrcC2 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
var imageSizeC2 = new kakao.maps.Size(24, 35); 
var markerImageC2 = new kakao.maps.MarkerImage(imageSrcC2, imageSizeC2); 

var markerC2 = new kakao.maps.Marker({
image : markerImageC2,
map: mapC, 
	title: 'FM 커피하우스 1호점',
	position: new kakao.maps.LatLng(35.154610, 129.063702)
});

//------------  C구역 2번 오버레이(작은창) 생성 메서드 시작
var contentC2 = '<div class="wrap">' + 
            '    <div class="info">' + 
            '        <div class="title" style="background-color: rgba(0,0,255,.3);">' + 
            '            <div style="text-align: center;color: white;">FM 커피하우스 1호점</div>' + 
            '            <div class="close" onclick="closeOverlayC2()" title="닫기"></div>' + 
            '        </div>' + 
            '        <div class="body">' + 
            '            <div class="img">' +
            '                <img src="images/112.jpg" width="73" height="70">' +
            '           </div>' + 
            '            <div class="desc">' + 
            '                <div class="ellipsis">부산 부산진구 전포대로199번길 26</div>' + 
            '                <div class="ellipsisPhone"><span style="color:GREEN"><i class="fa fa-phone fa-lg"></i></span> 051)805-8423</div>' + 
            '                 <div class="geul" ><a href="cafeDetail.bo?cafe_num=112&page=1">카페상세보기 ◀◀◀◀ 클릭!</a></div>' + 
            '            </div>' + 
            '        </div>' + 
            '    </div>' +    
            '</div>';

//마커 위에 커스텀오버레이를 표시합니다
//마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
var overlayC2 = new kakao.maps.CustomOverlay({
content: contentC2,
//map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
position: new kakao.maps.LatLng(35.154610, 129.063625)
});

//마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(markerC2, 'click', function() {
//overlay.setMap(map);
overlayC2.setMap(mapC);
});

////커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
closeOverlayC2 = function () {
overlayC2.setMap(null);
}
//--------------------------------------------- 구분선 ------------------------------------------------


//C구역 3번 마커 생성 메서드 시작 
var imageSrcC3 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
var imageSizeC3 = new kakao.maps.Size(24, 35); 
var markerImageC3 = new kakao.maps.MarkerImage(imageSrcC3, imageSizeC3); 

var markerC3 = new kakao.maps.Marker({
image : markerImageC3,
map: mapC, 
title: '고유커피로스터스',
position: new kakao.maps.LatLng(35.155308, 129.063166)
});

//------------  C구역 3번 오버레이(작은창) 생성 메서드 시작
var contentC3 = '<div class="wrap">' + 
        '    <div class="info">' + 
        '        <div class="title" style="background-color: rgba(0,0,255,.3);">' + 
        '            <div style="text-align: center;color: white;">고유커피로스터스</div>' + 
        '            <div class="close" onclick="closeOverlayC3()" title="닫기"></div>' + 
        '        </div>' + 
        '        <div class="body">' + 
        '            <div class="img">' +
        '                <img src="images/113.jpg" width="73" height="70">' +
        '           </div>' + 
        '            <div class="desc">' + 
        '                <div class="ellipsis">부산 부산진구 전포대로209번길 39</div>' + 
        '                <div class="ellipsisPhone"><span style="color:GREEN"><i class="fa fa-phone fa-lg"></i></span> 051)805-8423</div>' + 
        '                 <div class="geul" ><a href="cafeDetail.bo?cafe_num=113&page=1">카페상세보기 ◀◀◀◀ 클릭!</a></div>' + 
        '            </div>' + 
        '        </div>' + 
        '    </div>' +    
        '</div>';

//마커 위에 커스텀오버레이를 표시합니다
//마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
var overlayC3 = new kakao.maps.CustomOverlay({
content: contentC3,
//map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
position: new kakao.maps.LatLng(35.155250, 129.063166)
});

//마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(markerC3, 'click', function() {
//overlay.setMap(map);
overlayC3.setMap(mapC);
});

////커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
closeOverlayC3 = function () {
overlayC3.setMap(null);
}

//--------------------------------------------- 구분선 ------------------------------------------------


//C구역 4번 마커 생성 메서드 시작 
var imageSrcC4 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
var imageSizeC4 = new kakao.maps.Size(24, 35); 
var markerImageC4 = new kakao.maps.MarkerImage(imageSrcC4, imageSizeC4); 

var markerC4 = new kakao.maps.Marker({
image : markerImageC4,
map: mapC, 
title: '로망34',
position: new kakao.maps.LatLng(35.154597, 129.063374)
});

//------------  C구역 4번 오버레이(작은창) 생성 메서드 시작
var contentC4 = '<div class="wrap">' + 
        '    <div class="info">' + 
        '        <div class="title" style="background-color: rgba(0,0,255,.3);">' + 
        '            <div style="text-align: center;color: white;">로망34</div>' + 
        '            <div class="close" onclick="closeOverlayC4()" title="닫기"></div>' + 
        '        </div>' + 
        '        <div class="body">' + 
        '            <div class="img">' +
        '                <img src="images/114.jpg" width="73" height="70">' +
        '           </div>' + 
        '            <div class="desc">' + 
        '                <div class="ellipsis">부산 부산진구 전포대로199번길 34</div>' + 
        '                <div class="ellipsisPhone"><span style="color:GREEN"><i class="fa fa-phone fa-lg"></i></span> 051)805-8423</div>' + 
        '                 <div class="geul" ><a href="cafeDetail.bo?cafe_num=114&page=1">카페상세보기 ◀◀◀◀ 클릭!</a></div>' + 
        '            </div>' + 
        '        </div>' + 
        '    </div>' +    
        '</div>';

//마커 위에 커스텀오버레이를 표시합니다
//마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
var overlayC4 = new kakao.maps.CustomOverlay({
content: contentC4,
//map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
position: markerC4.getPosition()
});

//마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(markerC4, 'click', function() {
//overlay.setMap(map);
overlayC4.setMap(mapC);
});

////커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
closeOverlayC4 = function () {
overlayC4.setMap(null);
}

//--------------------------------------------- 구분선 ------------------------------------------------


//C구역 5번 마커 생성 메서드 시작 
var imageSrcC5 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
var imageSizeC5 = new kakao.maps.Size(24, 35); 
var markerImageC5 = new kakao.maps.MarkerImage(imageSrcC5, imageSizeC5); 

var markerC5 = new kakao.maps.Marker({
image : markerImageC4,
map: mapC, 
title: '코드지카페',
position: new kakao.maps.LatLng(35.154961, 129.062678)
});

//------------  C구역 4번 오버레이(작은창) 생성 메서드 시작
var contentC5 = '<div class="wrap">' + 
        '    <div class="info">' + 
        '        <div class="title" style="background-color: rgba(0,0,255,.3);">' + 
        '            <div style="text-align: center;color: white;">코드지카페</div>' + 
        '            <div class="close" onclick="closeOverlayC5()" title="닫기"></div>' + 
        '        </div>' + 
        '        <div class="body">' + 
        '            <div class="img">' +
        '                <img src="images/115.jpg" width="73" height="70">' +
        '           </div>' + 
        '            <div class="desc">' + 
        '                <div class="ellipsis">부산 부산진구 동천로 70</div>' + 
        '                <div class="ellipsisPhone"><span style="color:GREEN"><i class="fa fa-phone fa-lg"></i></span> 051)805-8423</div>' + 
        '                 <div class="geul" ><a href="cafeDetail.bo?cafe_num=115&page=1">카페상세보기 ◀◀◀◀ 클릭!</a></div>' + 
        '            </div>' + 
        '        </div>' + 
        '    </div>' +    
        '</div>';

//마커 위에 커스텀오버레이를 표시합니다
//마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
var overlayC5 = new kakao.maps.CustomOverlay({
content: contentC5,
//map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
position: markerC5.getPosition()
});

//마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(markerC5, 'click', function() {
//overlay.setMap(map);
overlayC5.setMap(mapC);
});

////커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
closeOverlayC5 = function () {
overlayC5.setMap(null);
}
//--------------------------------------------- 구분선 ------------------------------------------------		
    
});



//D 섹터 마우스 오버 이벤트
kakao.maps.event.addListener(rectangle3, 'mouseover',function(){
   // 다각형의 채우기 옵션을 변경합니다
    rectangle3.setOptions(mouseoverOption);
}); 
kakao.maps.event.addListener(rectangle3, 'mouseout', function() { 
 // 다각형의 채우기 옵션을 변경합니다
    rectangle3.setOptions(mouseoutOption);
    
}); 

//D 섹터 클릭 이벤트!!
kakao.maps.event.addListener(rectangle3, 'click', function(mouseEvent) {        

	 var containerD = document.getElementById('map'),
	    optionsD = {
	         center: new kakao.maps.LatLng(35.154953, 129.064378),
	         draggable: false,
	         level: 1
	    };
	 
		var mapD = new kakao.maps.Map(containerD, optionsD);

		//D구역 1번 마커 생성 메서드 시작 
		var imageSrcD1 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
		var imageSizeD1 = new kakao.maps.Size(24, 35); 
		var markerImageD1 = new kakao.maps.MarkerImage(imageSrcD1, imageSizeD1); 

		var markerD1 = new kakao.maps.Marker({
	    	image : markerImageD1,
		    map: mapD, 
	  		title: '카페더맨션',
	  		position: new kakao.maps.LatLng(35.155041, 129.064166)
		});

		//------------  D구역 1번 오버레이(작은창) 생성 메서드 시작
		var contentD1 = '<div class="wrap">' + 
	            '    <div class="info">' + 
	            '        <div class="title" style="background-color: rgba(0,0,255,.3);">' + 
	            '            <div style="text-align: center;color: white;">카페더맨션</div>' + 
	            '            <div class="close" onclick="closeOverlayD1()" title="닫기"></div>' + 
	            '        </div>' + 
	            '        <div class="body">' + 
	            '            <div class="img">' +
	            '                <img src="images/116.jpg" width="73" height="70">' +
	            '           </div>' + 
	            '            <div class="desc">' + 
	            '                <div class="ellipsis">부산 부산진구 동천로 70</div>' + 
	            '                <div class="ellipsisPhone"><span style="color:GREEN"><i class="fa fa-phone fa-lg"></i></span> 051)805-8423</div>' + 
	            '                 <div class="geul" ><a href="cafeDetail.bo?cafe_num=116&page=1">카페상세보기 ◀◀◀◀ 클릭!</a></div>' + 
	            '            </div>' + 
	            '        </div>' + 
	            '    </div>' +    
	            '</div>';

	//마커 위에 커스텀오버레이를 표시합니다
	//마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
	var overlayD1 = new kakao.maps.CustomOverlay({
	  content: contentD1,
	//   map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
	  position: markerD1.getPosition()       
	});

	//마커를 클릭했을 때 커스텀 오버레이를 표시합니다
	kakao.maps.event.addListener(markerD1, 'click', function() {
	//   overlay.setMap(map);
	  overlayD1.setMap(mapD);
	});

	//// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
	closeOverlayD1 = function () {
	   overlayD1.setMap(null);
	}
	
	
	// --------------------------------------------- 구분선 ------------------------------------------------
	
		//D구역 2번 마커 생성 메서드 시작 
		var imageSrcD2 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
		var imageSizeD2 = new kakao.maps.Size(24, 35); 
		var markerImageD2 = new kakao.maps.MarkerImage(imageSrcD2, imageSizeD2); 

		var markerD2 = new kakao.maps.Marker({
	    	image : markerImageD2,
		    map: mapD, 
	  		title: '하이안',
	  		position: new kakao.maps.LatLng(35.155149, 129.064575)
		});

		//------------  D구역 1번 오버레이(작은창) 생성 메서드 시작
		var contentD2 = '<div class="wrap">' + 
	            '    <div class="info">' + 
	            '        <div class="title" style="background-color: rgba(0,0,255,.3);">' + 
	            '            <div style="text-align: center;color: white;">하이안</div>' + 
	            '            <div class="close" onclick="closeOverlayD2()" title="닫기"></div>' + 
	            '        </div>' + 
	            '        <div class="body">' + 
	            '            <div class="img">' +
	            '                <img src="images/117.jpg" width="73" height="70">' +
	            '           </div>' + 
	            '            <div class="desc">' + 
	            '                <div class="ellipsis">부산 부산진구 서전로46번길 62-4</div>' + 
	            '                <div class="ellipsisPhone"><span style="color:GREEN"><i class="fa fa-phone fa-lg"></i></span> 051)805-8423</div>' + 
	            '                 <div class="geul" ><a href="cafeDetail.bo?cafe_num=117&page=1">카페상세보기 ◀◀◀◀ 클릭!</a></div>' + 
	            '            </div>' + 
	            '        </div>' + 
	            '    </div>' +    
	            '</div>';

	//마커 위에 커스텀오버레이를 표시합니다
	//마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
	var overlayD2 = new kakao.maps.CustomOverlay({
	  content: contentD2,
	//   map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
	  position: markerD2.getPosition()       
	});

	//마커를 클릭했을 때 커스텀 오버레이를 표시합니다
	kakao.maps.event.addListener(markerD2, 'click', function() {
	//   overlay.setMap(map);
	  overlayD2.setMap(mapD);
	});

	//// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
	closeOverlayD2 = function () {
	   overlayD2.setMap(null);
	}
	
	// --------------------------------------------- 구분선 ------------------------------------------------
	
	//D구역 3번 마커 생성 메서드 시작 
	var imageSrcD3 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
	var imageSizeD3 = new kakao.maps.Size(24, 35); 
	var markerImageD3 = new kakao.maps.MarkerImage(imageSrcD3, imageSizeD3); 

	var markerD3 = new kakao.maps.Marker({
    	image : markerImageD3,
	    map: mapD, 
  		title: '카페 메인',
  		position: new kakao.maps.LatLng(35.155341, 129.064113)
	});

	//------------  D구역 3번 오버레이(작은창) 생성 메서드 시작
	var contentD3 = '<div class="wrap">' + 
            '    <div class="info">' + 
            '        <div class="title" style="background-color: rgba(0,0,255,.3);">' + 
            '            <div style="text-align: center;color: white;">카페 메인</div>' + 
            '            <div class="close" onclick="closeOverlayD3()" title="닫기"></div>' + 
            '        </div>' + 
            '        <div class="body">' + 
            '            <div class="img">' +
            '                <img src="images/118.jpg" width="73" height="70">' +
            '           </div>' + 
            '            <div class="desc">' + 
            '                <div class="ellipsis">부산 부산진구 전포대로209번길 19</div>' + 
            '                <div class="ellipsisPhone"><span style="color:GREEN"><i class="fa fa-phone fa-lg"></i></span> 051)805-8423</div>' + 
            '                 <div class="geul" ><a href="cafeDetail.bo?cafe_num=118&page=1">카페상세보기 ◀◀◀◀ 클릭!</a></div>' + 
            '            </div>' + 
            '        </div>' + 
            '    </div>' +    
            '</div>';

//마커 위에 커스텀오버레이를 표시합니다
//마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
var overlayD3 = new kakao.maps.CustomOverlay({
  content: contentD3,
//   map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
  position: new kakao.maps.LatLng(35.155190, 129.064113)       
});

//마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(markerD3, 'click', function() {
//   overlay.setMap(map);
  overlayD3.setMap(mapD);
});

//// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
closeOverlayD3 = function () {
   overlayD3.setMap(null);
}

//--------------------------------------------- 구분선 ------------------------------------------------

//D구역 4번 마커 생성 메서드 시작 
var imageSrcD4 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
var imageSizeD4 = new kakao.maps.Size(24, 35); 
var markerImageD4 = new kakao.maps.MarkerImage(imageSrcD4, imageSizeD4); 

var markerD4 = new kakao.maps.Marker({
	image : markerImageD4,
    map: mapD, 
		title: '카페 레이지',
		position: new kakao.maps.LatLng(35.155330, 129.064323)
});

//------------  D구역 4번 오버레이(작은창) 생성 메서드 시작
var contentD4 = '<div class="wrap">' + 
        '    <div class="info">' + 
        '        <div class="title" style="background-color: rgba(0,0,255,.3);">' + 
        '            <div style="text-align: center;color: white;">카페 레이지</div>' + 
        '            <div class="close" onclick="closeOverlayD4()" title="닫기"></div>' + 
        '        </div>' + 
        '        <div class="body">' + 
        '            <div class="img">' +
        '                <img src="images/119.jpg" width="73" height="70">' +
        '           </div>' + 
        '            <div class="desc">' + 
        '                <div class="ellipsis">부산 부산진구 전포대로209번길 15</div>' + 
        '                <div class="ellipsisPhone"><span style="color:GREEN"><i class="fa fa-phone fa-lg"></i></span> 051)805-8423</div>' + 
        '                 <div class="geul" ><a href="cafeDetail.bo?cafe_num=119&page=1">카페상세보기 ◀◀◀◀ 클릭!</a></div>' + 
        '            </div>' + 
        '        </div>' + 
        '    </div>' +    
        '</div>';

//마커 위에 커스텀오버레이를 표시합니다
//마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
var overlayD4 = new kakao.maps.CustomOverlay({
content: contentD4,
//map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
position: new kakao.maps.LatLng(35.155230, 129.064743)       
});

//마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(markerD4, 'click', function() {
//overlay.setMap(map);
overlayD4.setMap(mapD);
});

////커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
closeOverlayD4 = function () {
overlayD4.setMap(null);
}

//--------------------------------------------- 구분선 ------------------------------------------------

//D구역 5번 마커 생성 메서드 시작 
var imageSrcD5 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
var imageSizeD5 = new kakao.maps.Size(24, 35); 
var markerImageD5 = new kakao.maps.MarkerImage(imageSrcD5, imageSizeD5); 

var markerD5 = new kakao.maps.Marker({
	image : markerImageD5,
  map: mapD, 
		title: '카페 씬',
		position: new kakao.maps.LatLng(35.155246, 129.064631)
});

//------------  D구역 5번 오버레이(작은창) 생성 메서드 시작
var contentD5 = '<div class="wrap">' + 
      '    <div class="info">' + 
      '        <div class="title" style="background-color: rgba(0,0,255,.3);">' + 
      '            <div style="text-align: center;color: white;">카페 씬</div>' + 
      '            <div class="close" onclick="closeOverlayD5()" title="닫기"></div>' + 
      '        </div>' + 
      '        <div class="body">' + 
      '            <div class="img">' +
      '                <img src="images/120.jpg" width="73" height="70">' +
      '           </div>' + 
      '            <div class="desc">' + 
      '                <div class="ellipsis">부산 부산진구 전포대로209번길 9</div>' + 
      '                <div class="ellipsisPhone"><span style="color:GREEN"><i class="fa fa-phone fa-lg"></i></span> 051)805-8423</div>' + 
      '                 <div class="geul" ><a href="cafeDetail.bo?cafe_num=120&page=1">카페상세보기 ◀◀◀◀ 클릭!</a></div>' + 
      '            </div>' + 
      '        </div>' + 
      '    </div>' +    
      '</div>';

//마커 위에 커스텀오버레이를 표시합니다
//마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
var overlayD5 = new kakao.maps.CustomOverlay({
content: contentD5,
//map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
position: new kakao.maps.LatLng(35.155, 129.064631)       
});

//마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(markerD5, 'click', function() {
//overlay.setMap(map);
overlayD5.setMap(mapD);
});

////커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
closeOverlayD5 = function () {
overlayD5.setMap(null);
}
//----------------------------------------- 구분선 ---------------------------------------------------
    
}); // d섹터 클릭 이벤트


   
} // toMap() 끝


</script>

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
   <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAKFWBqlKAGCeS1rMVoaNlwyayu0e0YRes"></script>
   <script src="js/map-custom.js"></script>
<!--===============================================================================================-->
   <script src="js/main.js"></script>

</body>
</html>