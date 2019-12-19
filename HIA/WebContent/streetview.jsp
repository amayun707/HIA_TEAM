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
			    title: '코티지피',
			    position: new kakao.maps.LatLng(35.156938, 129.064489)
			});

			//A구역 1번 마커 생성 메서드 끝

			// A구역 1번 오버레이(작은창) 생성 메서드 시작
			var contentA1 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title">' + 
			            '            <div style="text-align: center;color: red;">전포카페거리</div>' + 
			            '            <div class="close" onclick="closeOverlayA1()" title="닫기"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="https://scontent-icn1-1.xx.fbcdn.net/v/t31.0-8/23270260_305585979848521_1728404791928000445_o.jpg?_nc_cat=107&_nc_oc=AQlLsWlIbu2W-s_4j1xjgkZzDGOu-sXmcKyMPrnOOwkuFORG0r9VStcXrfiLy9uBJYM&_nc_ht=scontent-icn1-1.xx&oh=2a28ce24580b84a13caf88777d497279&oe=5E4F2C9A" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">부산 부산진구 동천로 92</div>' + 
			            '                <div class="jibun ellipsis">지번 전포동 668-1</div>' + 
			            '                <div><a href="cafeDetail.bo?cafe_num=101&page=1">카페상페이지 <<<< 클릭!</a></div>' + 
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
			    title: '북그러움',
			    position: new kakao.maps.LatLng(35.157175, 129.064473)
			});

			//------------- A구역 2번 마커 생성 메서드 끝

			// ------------  A구역 2번 오버레이(작은창) 생성 메서드 시작
			var contentA2 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title">' + 
			            '            전포카페거리' + 
			            '            <div class="close" onclick="closeOverlayA2()" title="닫기"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="https://scontent-icn1-1.xx.fbcdn.net/v/t31.0-8/23270260_305585979848521_1728404791928000445_o.jpg?_nc_cat=107&_nc_oc=AQlLsWlIbu2W-s_4j1xjgkZzDGOu-sXmcKyMPrnOOwkuFORG0r9VStcXrfiLy9uBJYM&_nc_ht=scontent-icn1-1.xx&oh=2a28ce24580b84a13caf88777d497279&oe=5E4F2C9A" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">부산 부산진구 동천로 92</div>' + 
			            '                <div class="jibun ellipsis">지번 전포동 668-1</div>' + 
			            '                <div><a href="https://map.kakao.com/link/to/전포 카페거리, 35.155426,129.062558" target="_blank" class="link">길찾기 바로가기</a></div>' + 
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
			    title: '더블링',
			    position: new kakao.maps.LatLng(35.156590, 129.064724)
			});

			// ------------  A구역 3번 오버레이(작은창) 생성 메서드 시작
			var contentA3 = '<div class="wrap">' + 
			            '    <div class="info">' + 
			            '        <div class="title">' + 
			            '            전포카페거리' + 
			            '            <div class="close" onclick="closeOverlayA3()" title="닫기"></div>' + 
			            '        </div>' + 
			            '        <div class="body">' + 
			            '            <div class="img">' +
			            '                <img src="https://scontent-icn1-1.xx.fbcdn.net/v/t31.0-8/23270260_305585979848521_1728404791928000445_o.jpg?_nc_cat=107&_nc_oc=AQlLsWlIbu2W-s_4j1xjgkZzDGOu-sXmcKyMPrnOOwkuFORG0r9VStcXrfiLy9uBJYM&_nc_ht=scontent-icn1-1.xx&oh=2a28ce24580b84a13caf88777d497279&oe=5E4F2C9A" width="73" height="70">' +
			            '           </div>' + 
			            '            <div class="desc">' + 
			            '                <div class="ellipsis">부산 부산진구 동천로 92</div>' + 
			            '                <div class="jibun ellipsis">지번 전포동 668-1</div>' + 
			            '                <div><a href="https://map.kakao.com/link/to/전포 카페거리, 35.155426,129.062558" target="_blank" class="link">길찾기 바로가기</a></div>' + 
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
		    title: '블루마운틴',
		    position: new kakao.maps.LatLng(35.156313, 129.064717)
		});

		// ------------  B구역 1번 오버레이(작은창) 생성 메서드 시작
		var contentB1 = '<div class="wrap">' + 
		            '    <div class="info">' + 
		            '        <div class="title">' + 
		            '            전포카페거리' + 
		            '            <div class="close" onclick="closeOverlayB1()" title="닫기"></div>' + 
		            '        </div>' + 
		            '        <div class="body">' + 
		            '            <div class="img">' +
		            '                <img src="https://scontent-icn1-1.xx.fbcdn.net/v/t31.0-8/23270260_305585979848521_1728404791928000445_o.jpg?_nc_cat=107&_nc_oc=AQlLsWlIbu2W-s_4j1xjgkZzDGOu-sXmcKyMPrnOOwkuFORG0r9VStcXrfiLy9uBJYM&_nc_ht=scontent-icn1-1.xx&oh=2a28ce24580b84a13caf88777d497279&oe=5E4F2C9A" width="73" height="70">' +
		            '           </div>' + 
		            '            <div class="desc">' + 
		            '                <div class="ellipsis">부산 부산진구 동천로 92</div>' + 
		            '                <div class="jibun ellipsis">지번 전포동 668-1</div>' + 
		            '                <div><a href="https://map.kakao.com/link/to/전포 카페거리, 35.155426,129.062558" target="_blank" class="link">길찾기 바로가기</a></div>' + 
		            '            </div>' + 
		            '        </div>' + 
		            '    </div>' +    
		            '</div>';

		// 마커 위에 커스텀오버레이를 표시합니다
		// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
		var overlayB1 = new kakao.maps.CustomOverlay({
		    content: contentB1,
//		     map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
		    position: markerB1.getPosition()       
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
		    title: '화화정',
		    position: new kakao.maps.LatLng(35.156210, 129.064402)
		});

		// ------------  B구역 2번 오버레이(작은창) 생성 메서드 시작
		var contentB2 = '<div class="wrap">' + 
		            '    <div class="info">' + 
		            '        <div class="title">' + 
		            '            전포카페거리' + 
		            '            <div class="close" onclick="closeOverlayB2()" title="닫기"></div>' + 
		            '        </div>' + 
		            '        <div class="body">' + 
		            '            <div class="img">' +
		            '                <img src="https://scontent-icn1-1.xx.fbcdn.net/v/t31.0-8/23270260_305585979848521_1728404791928000445_o.jpg?_nc_cat=107&_nc_oc=AQlLsWlIbu2W-s_4j1xjgkZzDGOu-sXmcKyMPrnOOwkuFORG0r9VStcXrfiLy9uBJYM&_nc_ht=scontent-icn1-1.xx&oh=2a28ce24580b84a13caf88777d497279&oe=5E4F2C9A" width="73" height="70">' +
		            '           </div>' + 
		            '            <div class="desc">' + 
		            '                <div class="ellipsis">부산 부산진구 동천로 92</div>' + 
		            '                <div class="jibun ellipsis">지번 전포동 668-1</div>' + 
		            '                <div><a href="https://map.kakao.com/link/to/전포 카페거리, 35.155426,129.062558" target="_blank" class="link">길찾기 바로가기</a></div>' + 
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
		  title: '피플스',
		  position: new kakao.maps.LatLng(35.156195, 129.064731)
		});

		//------------  B구역 3번 오버레이(작은창) 생성 메서드 시작
		var contentB3 = '<div class="wrap">' + 
		          '    <div class="info">' + 
		          '        <div class="title">' + 
		          '            전포카페거리' + 
		          '            <div class="close" onclick="closeOverlayB3()" title="닫기"></div>' + 
		          '        </div>' + 
		          '        <div class="body">' + 
		          '            <div class="img">' +
		          '                <img src="https://scontent-icn1-1.xx.fbcdn.net/v/t31.0-8/23270260_305585979848521_1728404791928000445_o.jpg?_nc_cat=107&_nc_oc=AQlLsWlIbu2W-s_4j1xjgkZzDGOu-sXmcKyMPrnOOwkuFORG0r9VStcXrfiLy9uBJYM&_nc_ht=scontent-icn1-1.xx&oh=2a28ce24580b84a13caf88777d497279&oe=5E4F2C9A" width="73" height="70">' +
		          '           </div>' + 
		          '            <div class="desc">' + 
		          '                <div class="ellipsis">부산 부산진구 동천로 92</div>' + 
		          '                <div class="jibun ellipsis">지번 전포동 668-1</div>' + 
		          '                <div><a href="https://map.kakao.com/link/to/전포 카페거리, 35.155426,129.062558" target="_blank" class="link">길찾기 바로가기</a></div>' + 
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
		  title: '카페미드나잇',
		  position: new kakao.maps.LatLng(35.156025, 129.064389)
		});

		//------------  B구역 4번 오버레이(작은창) 생성 메서드 시작
		var contentB4 = '<div class="wrap">' + 
		          '    <div class="info">' + 
		          '        <div class="title">' + 
		          '            전포카페거리' + 
		          '            <div class="close" onclick="closeOverlayB4()" title="닫기"></div>' + 
		          '        </div>' + 
		          '        <div class="body">' + 
		          '            <div class="img">' +
		          '                <img src="https://scontent-icn1-1.xx.fbcdn.net/v/t31.0-8/23270260_305585979848521_1728404791928000445_o.jpg?_nc_cat=107&_nc_oc=AQlLsWlIbu2W-s_4j1xjgkZzDGOu-sXmcKyMPrnOOwkuFORG0r9VStcXrfiLy9uBJYM&_nc_ht=scontent-icn1-1.xx&oh=2a28ce24580b84a13caf88777d497279&oe=5E4F2C9A" width="73" height="70">' +
		          '           </div>' + 
		          '            <div class="desc">' + 
		          '                <div class="ellipsis">부산 부산진구 동천로 92</div>' + 
		          '                <div class="jibun ellipsis">지번 전포동 668-1</div>' + 
		          '                <div><a href="https://map.kakao.com/link/to/전포 카페거리, 35.155426,129.062558" target="_blank" class="link">길찾기 바로가기</a></div>' + 
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
		title: '아뜰리에 마카롱',
		position: new kakao.maps.LatLng(35.155827, 129.063975)
		});

		//------------  B구역 5번 오버레이(작은창) 생성 메서드 시작
		var contentB5 = '<div class="wrap">' + 
		        '    <div class="info">' + 
		        '        <div class="title">' + 
		        '            전포카페거리' + 
		        '            <div class="close" onclick="closeOverlayB5()" title="닫기"></div>' + 
		        '        </div>' + 
		        '        <div class="body">' + 
		        '            <div class="img">' +
		        '                <img src="https://scontent-icn1-1.xx.fbcdn.net/v/t31.0-8/23270260_305585979848521_1728404791928000445_o.jpg?_nc_cat=107&_nc_oc=AQlLsWlIbu2W-s_4j1xjgkZzDGOu-sXmcKyMPrnOOwkuFORG0r9VStcXrfiLy9uBJYM&_nc_ht=scontent-icn1-1.xx&oh=2a28ce24580b84a13caf88777d497279&oe=5E4F2C9A" width="73" height="70">' +
		        '           </div>' + 
		        '            <div class="desc">' + 
		        '                <div class="ellipsis">부산 부산진구 동천로 92</div>' + 
		        '                <div class="jibun ellipsis">지번 전포동 668-1</div>' + 
		        '                <div><a href="https://map.kakao.com/link/to/전포 카페거리, 35.155426,129.062558" target="_blank" class="link">길찾기 바로가기</a></div>' + 
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
	  		title: '뚱카롱',
	  		position: new kakao.maps.LatLng(35.155312,  129.062777)
		});

		//------------  C구역 1번 오버레이(작은창) 생성 메서드 시작
		var contentC1 = '<div class="wrap">' + 
	          '    <div class="info">' + 
	          '        <div class="title">' + 
	          '            전포카페거리' + 
	          '            <div class="close" onclick="closeOverlayC1()" title="닫기"></div>' + 
	          '        </div>' + 
	          '        <div class="body">' + 
	          '            <div class="img">' +
	          '                <img src="https://scontent-icn1-1.xx.fbcdn.net/v/t31.0-8/23270260_305585979848521_1728404791928000445_o.jpg?_nc_cat=107&_nc_oc=AQlLsWlIbu2W-s_4j1xjgkZzDGOu-sXmcKyMPrnOOwkuFORG0r9VStcXrfiLy9uBJYM&_nc_ht=scontent-icn1-1.xx&oh=2a28ce24580b84a13caf88777d497279&oe=5E4F2C9A" width="73" height="70">' +
	          '           </div>' + 
	          '            <div class="desc">' + 
	          '                <div class="ellipsis">부산 부산진구 동천로 92</div>' + 
	          '                <div class="jibun ellipsis">지번 전포동 668-1</div>' + 
	          '                <div><a href="https://map.kakao.com/link/to/전포 카페거리, 35.155426,129.062558" target="_blank" class="link">길찾기 바로가기</a></div>' + 
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
	  		position: new kakao.maps.LatLng(35.155040,  129.064153)
		});

		//------------  D구역 1번 오버레이(작은창) 생성 메서드 시작
		var contentD1 = '<div class="wrap">' + 
	          '    <div class="info">' + 
	          '        <div class="title">' + 
	          '            전포카페거리' + 
	          '            <div class="close" onclick="closeOverlayD1()" title="닫기"></div>' + 
	          '        </div>' + 
	          '        <div class="body">' + 
	          '            <div class="img">' +
	          '                <img src="https://scontent-icn1-1.xx.fbcdn.net/v/t31.0-8/23270260_305585979848521_1728404791928000445_o.jpg?_nc_cat=107&_nc_oc=AQlLsWlIbu2W-s_4j1xjgkZzDGOu-sXmcKyMPrnOOwkuFORG0r9VStcXrfiLy9uBJYM&_nc_ht=scontent-icn1-1.xx&oh=2a28ce24580b84a13caf88777d497279&oe=5E4F2C9A" width="73" height="70">' +
	          '           </div>' + 
	          '            <div class="desc">' + 
	          '                <div class="ellipsis">부산 부산진구 동천로 92</div>' + 
	          '                <div class="jibun ellipsis">지번 전포동 668-1</div>' + 
	          '                <div><a href="https://map.kakao.com/link/to/전포 카페거리, 35.155426,129.062558" target="_blank" class="link">길찾기 바로가기</a></div>' + 
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
            '        <div class="title">' + 
            '            전포카페거리' + 
            '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
            '        </div>' + 
            '        <div class="body">' + 
            '            <div class="img">' +
            '                <img src="https://scontent-icn1-1.xx.fbcdn.net/v/t31.0-8/23270260_305585979848521_1728404791928000445_o.jpg?_nc_cat=107&_nc_oc=AQlLsWlIbu2W-s_4j1xjgkZzDGOu-sXmcKyMPrnOOwkuFORG0r9VStcXrfiLy9uBJYM&_nc_ht=scontent-icn1-1.xx&oh=2a28ce24580b84a13caf88777d497279&oe=5E4F2C9A" width="73" height="70">' +
            '           </div>' + 
            '            <div class="desc">' + 
            '                <div class="ellipsis">부산 부산진구 동천로 92</div>' + 
            '                <div class="jibun ellipsis">지번 전포동 668-1</div>' + 
            '                <div><a href="https://map.kakao.com/link/to/전포 카페거리, 35.155426,129.062558" target="_blank" class="link">길찾기 바로가기</a></div>' + 
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
    title: '코티지피',
    position: new kakao.maps.LatLng(35.156938, 129.064489)
});

//A구역 1번 마커 생성 메서드 끝

// A구역 1번 오버레이(작은창) 생성 메서드 시작
var contentA1 = '<div class="wrap">' + 
            '    <div class="info">' + 
            '        <div class="title">' + 
            '            전포카페거리' + 
            '            <div class="close" onclick="closeOverlayA1()" title="닫기"></div>' + 
            '        </div>' + 
            '        <div class="body">' + 
            '            <div class="img">' +
            '                <img src="https://scontent-icn1-1.xx.fbcdn.net/v/t31.0-8/23270260_305585979848521_1728404791928000445_o.jpg?_nc_cat=107&_nc_oc=AQlLsWlIbu2W-s_4j1xjgkZzDGOu-sXmcKyMPrnOOwkuFORG0r9VStcXrfiLy9uBJYM&_nc_ht=scontent-icn1-1.xx&oh=2a28ce24580b84a13caf88777d497279&oe=5E4F2C9A" width="73" height="70">' +
            '           </div>' + 
            '            <div class="desc">' + 
            '                <div class="ellipsis">부산 부산진구 동천로 92</div>' + 
            '                <div class="jibun ellipsis">지번 전포동 668-1</div>' + 
            '                <div><a href="/jidotest.jsp?cafenum=13">지도 테스트</a></div>' + 
            '            </div>' + 
            '        </div>' + 
            '    </div>' +    
            '</div>';

// 마커 위에 커스텀오버레이를 표시합니다
// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
var overlayA1 = new kakao.maps.CustomOverlay({
    content: contentA1,
//     map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
    position: markerA1.getPosition()       
});

// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(markerA1, 'click', function() {
//    overlay.setMap(map);
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
    title: '북그러움',
    position: new kakao.maps.LatLng(35.157175, 129.064473)
});

//------------- A구역 2번 마커 생성 메서드 끝

// ------------  A구역 2번 오버레이(작은창) 생성 메서드 시작
var contentA2 = '<div class="wrap">' + 
            '    <div class="info">' + 
            '        <div class="title">' + 
            '            전포카페거리' + 
            '            <div class="close" onclick="closeOverlayA2()" title="닫기"></div>' + 
            '        </div>' + 
            '        <div class="body">' + 
            '            <div class="img">' +
            '                <img src="https://scontent-icn1-1.xx.fbcdn.net/v/t31.0-8/23270260_305585979848521_1728404791928000445_o.jpg?_nc_cat=107&_nc_oc=AQlLsWlIbu2W-s_4j1xjgkZzDGOu-sXmcKyMPrnOOwkuFORG0r9VStcXrfiLy9uBJYM&_nc_ht=scontent-icn1-1.xx&oh=2a28ce24580b84a13caf88777d497279&oe=5E4F2C9A" width="73" height="70">' +
            '           </div>' + 
            '            <div class="desc">' + 
            '                <div class="ellipsis">부산 부산진구 동천로 92</div>' + 
            '                <div class="jibun ellipsis">지번 전포동 668-1</div>' + 
            '                <div><a href="https://map.kakao.com/link/to/전포 카페거리, 35.155426,129.062558" target="_blank" class="link">길찾기 바로가기</a></div>' + 
            '            </div>' + 
            '        </div>' + 
            '    </div>' +    
            '</div>';

// 마커 위에 커스텀오버레이를 표시합니다
// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
var overlayA2 = new kakao.maps.CustomOverlay({
    content: contentA2,
//     map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
    position: markerA2.getPosition()       
});

// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(markerA2, 'click', function() {
//    overlay.setMap(map);
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
    title: '더블링',
    position: new kakao.maps.LatLng(35.156590, 129.064724)
});

// ------------  A구역 3번 오버레이(작은창) 생성 메서드 시작
var contentA3 = '<div class="wrap">' + 
            '    <div class="info">' + 
            '        <div class="title">' + 
            '            전포카페거리' + 
            '            <div class="close" onclick="closeOverlayA3()" title="닫기"></div>' + 
            '        </div>' + 
            '        <div class="body">' + 
            '            <div class="img">' +
            '                <img src="https://scontent-icn1-1.xx.fbcdn.net/v/t31.0-8/23270260_305585979848521_1728404791928000445_o.jpg?_nc_cat=107&_nc_oc=AQlLsWlIbu2W-s_4j1xjgkZzDGOu-sXmcKyMPrnOOwkuFORG0r9VStcXrfiLy9uBJYM&_nc_ht=scontent-icn1-1.xx&oh=2a28ce24580b84a13caf88777d497279&oe=5E4F2C9A" width="73" height="70">' +
            '           </div>' + 
            '            <div class="desc">' + 
            '                <div class="ellipsis">부산 부산진구 동천로 92</div>' + 
            '                <div class="jibun ellipsis">지번 전포동 668-1</div>' + 
            '                <div><a href="https://map.kakao.com/link/to/전포 카페거리, 35.155426,129.062558" target="_blank" class="link">길찾기 바로가기</a></div>' + 
            '            </div>' + 
            '        </div>' + 
            '    </div>' +    
            '</div>';

// 마커 위에 커스텀오버레이를 표시합니다
// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
var overlayA3 = new kakao.maps.CustomOverlay({
    content: contentA3,
//     map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
    position: markerA3.getPosition()       
});

// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(markerA3, 'click', function() {
//    overlay.setMap(map);
    overlayA3.setMap(mapA);
});

// // 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
closeOverlayA3 = function () {
   overlayA3.setMap(null);
}
// -------------- A구역 3번 레이아웃(작은창) 생성 메서드 끝




    
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
    title: '블루마운틴',
    position: new kakao.maps.LatLng(35.156313, 129.064717)
});

// ------------  B구역 1번 오버레이(작은창) 생성 메서드 시작
var contentB1 = '<div class="wrap">' + 
            '    <div class="info">' + 
            '        <div class="title">' + 
            '            전포카페거리' + 
            '            <div class="close" onclick="closeOverlayB1()" title="닫기"></div>' + 
            '        </div>' + 
            '        <div class="body">' + 
            '            <div class="img">' +
            '                <img src="https://scontent-icn1-1.xx.fbcdn.net/v/t31.0-8/23270260_305585979848521_1728404791928000445_o.jpg?_nc_cat=107&_nc_oc=AQlLsWlIbu2W-s_4j1xjgkZzDGOu-sXmcKyMPrnOOwkuFORG0r9VStcXrfiLy9uBJYM&_nc_ht=scontent-icn1-1.xx&oh=2a28ce24580b84a13caf88777d497279&oe=5E4F2C9A" width="73" height="70">' +
            '           </div>' + 
            '            <div class="desc">' + 
            '                <div class="ellipsis">부산 부산진구 동천로 92</div>' + 
            '                <div class="jibun ellipsis">지번 전포동 668-1</div>' + 
            '                <div><a href="https://map.kakao.com/link/to/전포 카페거리, 35.155426,129.062558" target="_blank" class="link">길찾기 바로가기</a></div>' + 
            '            </div>' + 
            '        </div>' + 
            '    </div>' +    
            '</div>';

// 마커 위에 커스텀오버레이를 표시합니다
// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
var overlayB1 = new kakao.maps.CustomOverlay({
    content: contentB1,
//     map: map,  => 주석 풀면 오버레이 화면 뜰때 바로 띄움! 
    position: markerB1.getPosition()       
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
    title: '화화정',
    position: new kakao.maps.LatLng(35.156210, 129.064402)
});

// ------------  B구역 2번 오버레이(작은창) 생성 메서드 시작
var contentB2 = '<div class="wrap">' + 
            '    <div class="info">' + 
            '        <div class="title">' + 
            '            전포카페거리' + 
            '            <div class="close" onclick="closeOverlayB2()" title="닫기"></div>' + 
            '        </div>' + 
            '        <div class="body">' + 
            '            <div class="img">' +
            '                <img src="https://scontent-icn1-1.xx.fbcdn.net/v/t31.0-8/23270260_305585979848521_1728404791928000445_o.jpg?_nc_cat=107&_nc_oc=AQlLsWlIbu2W-s_4j1xjgkZzDGOu-sXmcKyMPrnOOwkuFORG0r9VStcXrfiLy9uBJYM&_nc_ht=scontent-icn1-1.xx&oh=2a28ce24580b84a13caf88777d497279&oe=5E4F2C9A" width="73" height="70">' +
            '           </div>' + 
            '            <div class="desc">' + 
            '                <div class="ellipsis">부산 부산진구 동천로 92</div>' + 
            '                <div class="jibun ellipsis">지번 전포동 668-1</div>' + 
            '                <div><a href="https://map.kakao.com/link/to/전포 카페거리, 35.155426,129.062558" target="_blank" class="link">길찾기 바로가기</a></div>' + 
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
  title: '피플스',
  position: new kakao.maps.LatLng(35.156195, 129.064731)
});

//------------  B구역 3번 오버레이(작은창) 생성 메서드 시작
var contentB3 = '<div class="wrap">' + 
          '    <div class="info">' + 
          '        <div class="title">' + 
          '            전포카페거리' + 
          '            <div class="close" onclick="closeOverlayB3()" title="닫기"></div>' + 
          '        </div>' + 
          '        <div class="body">' + 
          '            <div class="img">' +
          '                <img src="https://scontent-icn1-1.xx.fbcdn.net/v/t31.0-8/23270260_305585979848521_1728404791928000445_o.jpg?_nc_cat=107&_nc_oc=AQlLsWlIbu2W-s_4j1xjgkZzDGOu-sXmcKyMPrnOOwkuFORG0r9VStcXrfiLy9uBJYM&_nc_ht=scontent-icn1-1.xx&oh=2a28ce24580b84a13caf88777d497279&oe=5E4F2C9A" width="73" height="70">' +
          '           </div>' + 
          '            <div class="desc">' + 
          '                <div class="ellipsis">부산 부산진구 동천로 92</div>' + 
          '                <div class="jibun ellipsis">지번 전포동 668-1</div>' + 
          '                <div><a href="https://map.kakao.com/link/to/전포 카페거리, 35.155426,129.062558" target="_blank" class="link">길찾기 바로가기</a></div>' + 
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
  title: '카페미드나잇',
  position: new kakao.maps.LatLng(35.156025, 129.064389)
});

//------------  B구역 4번 오버레이(작은창) 생성 메서드 시작
var contentB4 = '<div class="wrap">' + 
          '    <div class="info">' + 
          '        <div class="title">' + 
          '            전포카페거리' + 
          '            <div class="close" onclick="closeOverlayB4()" title="닫기"></div>' + 
          '        </div>' + 
          '        <div class="body">' + 
          '            <div class="img">' +
          '                <img src="https://scontent-icn1-1.xx.fbcdn.net/v/t31.0-8/23270260_305585979848521_1728404791928000445_o.jpg?_nc_cat=107&_nc_oc=AQlLsWlIbu2W-s_4j1xjgkZzDGOu-sXmcKyMPrnOOwkuFORG0r9VStcXrfiLy9uBJYM&_nc_ht=scontent-icn1-1.xx&oh=2a28ce24580b84a13caf88777d497279&oe=5E4F2C9A" width="73" height="70">' +
          '           </div>' + 
          '            <div class="desc">' + 
          '                <div class="ellipsis">부산 부산진구 동천로 92</div>' + 
          '                <div class="jibun ellipsis">지번 전포동 668-1</div>' + 
          '                <div><a href="https://map.kakao.com/link/to/전포 카페거리, 35.155426,129.062558" target="_blank" class="link">길찾기 바로가기</a></div>' + 
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
title: '아뜰리에 마카롱',
position: new kakao.maps.LatLng(35.155827, 129.063975)
});

//------------  B구역 5번 오버레이(작은창) 생성 메서드 시작
var contentB5 = '<div class="wrap">' + 
        '    <div class="info">' + 
        '        <div class="title">' + 
        '            전포카페거리' + 
        '            <div class="close" onclick="closeOverlayB5()" title="닫기"></div>' + 
        '        </div>' + 
        '        <div class="body">' + 
        '            <div class="img">' +
        '                <img src="https://scontent-icn1-1.xx.fbcdn.net/v/t31.0-8/23270260_305585979848521_1728404791928000445_o.jpg?_nc_cat=107&_nc_oc=AQlLsWlIbu2W-s_4j1xjgkZzDGOu-sXmcKyMPrnOOwkuFORG0r9VStcXrfiLy9uBJYM&_nc_ht=scontent-icn1-1.xx&oh=2a28ce24580b84a13caf88777d497279&oe=5E4F2C9A" width="73" height="70">' +
        '           </div>' + 
        '            <div class="desc">' + 
        '                <div class="ellipsis">부산 부산진구 동천로 92</div>' + 
        '                <div class="jibun ellipsis">지번 전포동 668-1</div>' + 
        '                <div><a href="https://map.kakao.com/link/to/전포 카페거리, 35.155426,129.062558" target="_blank" class="link">길찾기 바로가기</a></div>' + 
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
}
//-------------- B구역 5번 레이아웃(작은창) 생성 메서드 끝
    
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

//------------  C구역 1번 오버레이(작은창) 생성 메서드 시작
var contentC1 = '<div class="wrap">' + 
          '    <div class="info">' + 
          '        <div class="title">' + 
          '            전포카페거리' + 
          '            <div class="close" onclick="closeOverlayC1()" title="닫기"></div>' + 
          '        </div>' + 
          '        <div class="body">' + 
          '            <div class="img">' +
          '                <img src="https://scontent-icn1-1.xx.fbcdn.net/v/t31.0-8/23270260_305585979848521_1728404791928000445_o.jpg?_nc_cat=107&_nc_oc=AQlLsWlIbu2W-s_4j1xjgkZzDGOu-sXmcKyMPrnOOwkuFORG0r9VStcXrfiLy9uBJYM&_nc_ht=scontent-icn1-1.xx&oh=2a28ce24580b84a13caf88777d497279&oe=5E4F2C9A" width="73" height="70">' +
          '           </div>' + 
          '            <div class="desc">' + 
          '                <div class="ellipsis">부산 부산진구 동천로 92</div>' + 
          '                <div class="jibun ellipsis">지번 전포동 668-1</div>' + 
          '                <div><a href="https://map.kakao.com/link/to/전포 카페거리, 35.155426,129.062558" target="_blank" class="link">길찾기 바로가기</a></div>' + 
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
	  		position: new kakao.maps.LatLng(35.155040,  129.064153)
		});

		//------------  D구역 1번 오버레이(작은창) 생성 메서드 시작
		var contentD1 = '<div class="wrap">' + 
	          '    <div class="info">' + 
	          '        <div class="title">' + 
	          '            전포카페거리' + 
	          '            <div class="close" onclick="closeOverlayD1()" title="닫기"></div>' + 
	          '        </div>' + 
	          '        <div class="body">' + 
	          '            <div class="img">' +
	          '                <img src="https://scontent-icn1-1.xx.fbcdn.net/v/t31.0-8/23270260_305585979848521_1728404791928000445_o.jpg?_nc_cat=107&_nc_oc=AQlLsWlIbu2W-s_4j1xjgkZzDGOu-sXmcKyMPrnOOwkuFORG0r9VStcXrfiLy9uBJYM&_nc_ht=scontent-icn1-1.xx&oh=2a28ce24580b84a13caf88777d497279&oe=5E4F2C9A" width="73" height="70">' +
	          '           </div>' + 
	          '            <div class="desc">' + 
	          '                <div class="ellipsis">부산 부산진구 동천로 92</div>' + 
	          '                <div class="jibun ellipsis">지번 전포동 668-1</div>' + 
	          '                <div><a href="https://map.kakao.com/link/to/전포 카페거리, 35.155426,129.062558" target="_blank" class="link">길찾기 바로가기</a></div>' + 
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