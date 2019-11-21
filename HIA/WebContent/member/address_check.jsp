<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    new daum.Postcode({
        oncomplete: function address_ch(data) {

            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 참고 항목 변수

            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }

            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }

            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('postcode').value = data.zonecode;
            document.getElementById("roadAddress").value = roadAddr;
            document.getElementById("jibunAddress").value = data.jibunAddress;

            var guideTextBox = document.getElementById("guide");
            
            // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
            if(data.autoRoadAddress) {
            	
                var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                guideTextBox.style.display = 'block';

            }
            else if(data.autoJibunAddress) {
            	
                var expJibunAddr = data.autoJibunAddress;
                guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                guideTextBox.style.display = 'block';
            } 
            else {
            	
                guideTextBox.innerHTML = '';
                guideTextBox.style.display = 'none';
            }
            
        }
    }).open();
    
    function complete(){
    	if(document.postcheck.detailAddress.value == null){
    		alert("상세주소를 입력해주세요.");
    	}
    	window.close();
    	
        opener.document.joinForm.postcode.value = document.postcheck.postcode.value;
        opener.document.joinForm.roadAddress.value = document.postcheck.roadAddress.value;
        opener.document.joinForm.jibunAddress.value = document.postcheck.jibunAddress.value;
        opener.document.joinForm.detailAddress.value = document.postcheck.detailAddress.value;
    }
    
</script>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");

String roadAddress = request.getParameter("roadAddress");
String jibunAddress = request.getParameter("jibunAddress");
String detailAddress = request.getParameter("detailAddress");
%>
<form action="Address.me" id="join" method="post" name="postcheck">
<input type="text" id="postcode" placeholder="우편번호">
<input type="button" onclick="location.reload()" value="우편번호 찾기"><br>
<input type="text" name="roadAddress" id="roadAddress" placeholder="도로명주소">
<input type="text" name="jibunAddress" id="jibunAddress" placeholder="지번주소"><br>
<span id="guide" style="color:#999;display:none"></span>
<input type="text" name="detailAddress" id="detailAddress" placeholder="상세주소">
<input type="button" value="해당 주소 입력" class="dup" onclick="complete()">
</form>
</body>
</html>