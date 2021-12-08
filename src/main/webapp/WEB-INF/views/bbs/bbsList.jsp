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
				<tbody>
				
					<c:forEach items ="${bbsArray}" var="bbsArray">
					<tr>
						<td>${bbsArray.bbsNo}</td>
						
						<td  style="text-align: left"><a href="/bbs/bbsView?bbsNo=${bbsArray.bbsNo}" >${bbsArray.bbsTitle }</a></td>
						<td>${bbsArray.bbsWriteDate }</td>
						<td>${bbsArray.bbsHit}</td>
					</tr>
					
					
					</c:forEach>
				
				</tbody>
			</table>
			
			
			<c:if test= "${member.memberIsAdmin == 1}">
			
			<a href="write.jsp" class="btn btn-primary pull-right">글쓰기</a>
			</c:if>
			
		</div>
	</div>
	<footer class="my-3 text-center text-small">
		<%@ include file="../footer.jsp"%>
	</footer>
</body>
</html>