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
<title>공지사항</title>
</head>
<body>
	<header><%@ include file="../header.jsp"%></header>
	

	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<a class="navbar-brand" href="/bbs/bbsList">공지사항</a>
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
						<th style="background-color: #eeeeee; text-align: center;">공지사항 제목</th>
						
						<th style="background-color: #eeeeee; text-align: center;">작성일자</th>
						<th style="background-color: #eeeeee; text-align: center;">조회수</th>
					</tr>
				</thead>
				<tbody class="bbs_list">
				

				</tbody>
			</table>
			
			<nav aria-label="...">
				<ul class="pagination">
					

				</ul>
			</nav>
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
				
				
				searchBbsList(keyword);
				
				
			});
			function searchBbsList(keyword){
				$.ajax({
					url : '/bbs/SearchbbsList.do',
					type : 'post',
					data : {
						"bbsTitle" : keyword,
						"bbsContent" : keyword
					},
					success : function(data){
					
						var outHtml = "";
						$(".bbs_list").append(outHtml);
						$.each(data,function(index, item){
							

						
 							outHtml += "<tr><td>" + data[index].bbsNo + "</td>";
							outHtml += "<td style=\"text-align: left\"><a href=\"/bbs/bbsView?bbsNo="	+data[index].bbsNo+"\">" + data[index].bbsTitle + "</a></td>";
							outHtml += "<td>" + data[index].bbsWriteDate +"</td>";
							outHtml += "<td>" + data[index].bbsHit + "</td><tr>"; 
						});
						
						$('.bbs_list').empty();
						$('.bbs_list').append(outHtml);
					}
				})
			} 
			
 			//공지사항 리스트를 뿌리는 메소드
			function recruitNoticeList(){
				
				$.ajax({
					url : '/bbs/bbsList.do',
					type : 'post',
					success : function(data){
						
						var outHtml = "";
						$(".bbs_list").append(outHtml);
						$.each(data,function(index, item){
							
							
 							outHtml += "<tr><td>" + data[index].bbsNo + "</td>";
							outHtml += "<td style=\"text-align: left\"><a href=\"/bbs/bbsView?bbsNo="	+data[index].bbsNo+"\">" + data[index].bbsTitle + "</a></td>";
							outHtml += "<td>" + data[index].bbsWriteDate +"</td>";
							outHtml += "<td>" + data[index].bbsHit + "</td><tr>"; 
						});
						
						$('.bbs_list').empty();
						$('.bbs_list').append(outHtml);
						
						
					}
				});
				
			} 
			

		});
	
	
	</script>	
</body>
</html>