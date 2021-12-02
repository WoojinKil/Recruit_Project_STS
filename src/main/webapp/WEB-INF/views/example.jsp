<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Document</title>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
	<input type="text" id="word" placeholder="검색어를 입력하세요."
		onkeyup="search(this);">
	<button type="button" id="btn_search">Search</button>
	<ul id="schoolList"></ul>
	<!-- 검색리스트가 나타나는 영역 -->
	<script> function search(target){ 
		var word = target.value; 
		var encodeWord = encodeURI(word); 
		console.log(word); 
		console.log(encodeWord); 
		//start Ajax 
		$.ajax({ 
			type : 'GET',
			dataType : 'json', 
			url : "www.career.go.kr/cnet/openapi/getOpenApi?apiKey=fc5c54a9bd9d8f4f00a35dbdb5bd356a&svcType=api&svcCode=SCHOOL&contentType=xml&gubun=elem_list" +"&searchSchulNm="+word, 
					error : function(err) 
					{ 
						console.log("실행중 오류가 발생하였습니다."); }, 
						success : function(data) 
						{ 
							console.log("data확인 : "+data); 
							console.log("결과 갯수 : "+data.dataSearch.content.length); 
							console.log("첫번째 결과 : "+data.dataSearch.content[0]); 
							$("#schoolList").empty(); 
							var checkWord = $("#word").val(); //검색어 입력값 
							console.log(data.dataSearch.content.length); 
							if(checkWord.length > 0 && data.dataSearch.content.length > 0){ 
								for (i = 0; i < data.dataSearch.content.length; i++) { 
									$("#schoolList") .append( "<li class='schoolList' value='" + data.dataSearch.content[i].schoolName + "' data-input='" + data.dataSearch.content[i].schoolName + ">" + "<a href='javascript:void(0);'>" + data.dataSearch.content[i].schoolName + "</a>" + "</li>"); 
									}
								}
							} 
						});//end Ajax } 
	
	
	
	
	}
	</script>
</body>
</html>

