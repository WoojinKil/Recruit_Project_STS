<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale"="1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<title>채용공고</title>
</head>
<style>
body {
        height: 100vh;
        background-image: url('resources/images/bg.png');
        background-repeat : no-repeat;
        background-size : cover;
      }

</style>
<body>
	<header><%@ include file="../header.jsp"%></header>

	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<a class="navbar-brand" href="/recruitnavigate/recruitnotice">채용공고</a>
		</div>
	</nav>
	<div class="container">
		<div class="search filter">
			<div>
				제목/내용 : <input type="text" class="search_keyword" name ="search_keyword" id="search_keyword">
				<button class="btn-primary searchBtn">검색</button>
			</div>
			
		
		</div>
		<div class="row">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">번호</th>
						<th style="background-color: #eeeeee; text-align: center;">채용유형</th>
						<th style="background-color: #eeeeee; text-align: center;">공고명</th>
						<th style="background-color: #eeeeee; text-align: center;">채용규모</th>
						<th style="background-color: #eeeeee; text-align: center;">조회수</th>
					</tr>
				</thead>
				<tbody class = "recruitNotice_list">

				
				</tbody>
			</table>
			
			
			<c:if test= "${member.memberIsAdmin == 1}">
			
			<a href="http://localhost:8081/pandora3/bo" class="btn btn-primary pull-right">글쓰기</a>
			</c:if>
			
		</div>
	</div>
	<footer class="my-3 text-center text-small">
		<%@ include file="../footer.jsp"%>
	</footer>
	<script type="text/javascript">
	
		$(document).ready(function(){
			
			recruitNoticeList();
			
			//검색 버튼이 클릭되었을 때 발생하는 메소드
			$(".searchBtn").click(function(){
				var keyword = $.trim($(".search_keyword").val());
				if(keyword == ""){
					alert("검색어를 입력해주세요.");
					return false;
					
				}
				
				
				searchNoticeList(keyword);
				
				
				
				
			});
			function searchNoticeList(keyword){
				$.ajax({
					url : '/recruitnavigate/searchNotice.do',
					type : 'post',
					data : {
						"recruitName" : keyword,
						"recruitContent" : keyword
					},
					success : function(data){
						
						var outHtml = "";
						$(".recruitNotice_list").append(outHtml);
						$.each(data,function(index, item){
							
							
 							outHtml += "<tr><td>" + data[index].recruitNo + "</td>";
							outHtml += "<td>" + data[index].typeName + "</td>";
							outHtml += "<td style=\"text-align: left\"><a href=\"/recruitnavigate/recruitnoticeview?recruitNo="	+data[index].recruitNo+"\">" + data[index].recruitName + "</a></td>";
							outHtml += "<td>" + data[index].recruitScale +"</td>";
							outHtml += "<td>" + data[index].recruitHit + "</td><tr>"; 
						});
						
						$('.recruitNotice_list').empty();
						$('.recruitNotice_list').append(outHtml);
					}
				})
			} 
			
			//채용공고 리스트를 뿌리는 메소드
			function recruitNoticeList(){
				
				$.ajax({
					url : '/recruitnavigate/recruitNotice.do',
					type : 'post',
					success : function(data){
						
						var outHtml = "";
						$(".recruitNotice_list").append(outHtml);
						$.each(data,function(index, item){
							
							
 							outHtml += "<tr><td>" + data[index].recruitNo + "</td>";
							outHtml += "<td>" + data[index].typeName + "</td>";
							outHtml += "<td style=\"text-align: left\"><a href=\"/recruitnavigate/recruitnoticeview?recruitNo="
												+data[index].recruitNo+"\">" + data[index].recruitName + "</a></td>";
							outHtml += "<td>" + data[index].recruitScale +"</td>";
							outHtml += "<td>" + data[index].recruitHit + "</td><tr>"; 
						});
						
						$('.recruitNotice_list').empty();
						$('.recruitNotice_list').append(outHtml);
						
						
					}
				});
				
			}
			
		});
	
	
	</script>
</body>
</html>