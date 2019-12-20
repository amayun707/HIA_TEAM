// 새댓글 등록 1)
$('#comment_add_btn').click(function () {	//댓글쓰기 버튼 클릭 시 addComment() 호출
    	    addComment();
    	});

// 새댓글 등록 2)
function addComment() {					
	  $.ajax({
		  url:'commentWirtePro.bo',
		  data:{
			  "page": $("#page").val(),
			  "cafe_num" : $("#cafe_num").val(),
			  "comment_id":	$("#comment_id").val(),
			  "comment_content": $("#comment_content").val(),
			  "comment_rating":  $("#comment_rating").val() 
		  },
		  success: function (result) {
		        if (result == 'false') {
		            alert('댓글 작성 실패!');		//나중에 alert 지울 것.
		        }
		        else {
		        	
//		        	loadCommentList();
//		        	$("#comment_id").val("");
		        	$("#comment_content").val("");
//		        	alert('댓글 등록완료!');
		        	getCommentList();
//		        	$('.comment-form-wrap').get(0).scrollIntoView(true);		//스크롤 위치 이동 함수(선택된 요소를 화면 가운데 위치하게 하는 방법 찾기)
		        	
		        }
		    }
	  });
	}  
	  
	  // 댓글리스트 불러오기
function getCommentList() {
//	alert('가기 전');
	$.ajax({
		url:'commentListAction.bo',
		data:{
			"cafe_num" : $("#cafe_num").val(),			// article.get으로 불러오기 위한 값
			"page": $("#page").val()
		},
		success: function(result){
//			alert(result);
			if(result!=null){
				$('#listAjax').html(result);
			}
		}
	});
}





