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
<body>
	<header><%@ include file="../header.jsp"%></header>
	
<%-- 	<%
		String memberId = null;
		if (session.getAttribute("memberId") != null) {
			memberId = (String) session.getAttribute("memberId");
		}
	%> --%>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<a class="navbar-brand" href="/recruitnavigate/recruitnotice">채용공고</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="main.jsp">메인</a></li>
				<li class="active"><a href="bbs.jsp">게시판</a></li>
			</ul>

		</div>
	</nav>
	<div class="container">
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
				<tbody>
				
					<c:forEach items ="${noticeArray}" var="noticeArray">
					<tr>
						<td>${noticeArray.recruitNo}</td>
						<td>${noticeArray.recruitType }</td>
						<td><a href="/recruitnavigate/recruitnoticeview?recruitNo=${noticeArray.recruitNo}">${noticeArray.recruitName }</a></td>
						<td>${noticeArray.recruitScale }</td>
						<td>${noticeArray.recruitHit}</td>
					</tr>
					
					
					</c:forEach>

				
				</tbody>
			</table>
			
			
			<c:if test= "${member.memberId == 'admin' }">
			
			<a href="write.jsp" class="btn btn-primary pull-right">글쓰기</a>
			</c:if>
			
		</div>
	</div>
	<footer class="my-3 text-center text-small">
		<%@ include file="../footer.jsp"%>
	</footer>
</body>
</html>