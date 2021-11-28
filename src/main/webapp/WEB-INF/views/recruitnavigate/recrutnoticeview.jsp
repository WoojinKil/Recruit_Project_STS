<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채용공고 상세</title>
</head>
<body>
	<header><%@ include file="../header.jsp"%></header>

	<nav class="navbar navbar-default">
		<div class="navbar-header">

			<a class="navbar-brand" href="main.jsp">채용공고 상세</a>
		</div>

	</nav>
	<div class="container">
		<div class="row">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="3" style="background-color: #eeeeee; text-align: center;">채용 공고 상세</th>						
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width: 20%;">글제목</td>
						<td colspan="2">${NoticeView.recruitName}</td>
					</tr>
					<tr>
						<td>머리글</td>
						<td colspan="2">${NoticeView.recruitNoticeHeader }</td>
					</tr>
					<tr>
						<td>조회수</td>
						<td colspan="2">${NoticeView.recruitHit }</td>
					</tr>
					<tr>
						<td>내용</td>
						<td colspan="2" style="min-height: 200px; text-align: left;">${NoticeView.recruitContent }
						
						
						<a href="/recruitnavigate/recruitnotice" class="btn btn-primary">지원</a>
	
						</td>
					</tr>
					
				</tbody>
			</table>
			<a href="/recruitnavigate/recruitnotice" class="btn btn-primary">목록</a>
			
		</div>
	</div>
	<footer class="my-3 text-center text-small">
		<%@ include file="../footer.jsp"%>
	</footer>
</body>
</html>