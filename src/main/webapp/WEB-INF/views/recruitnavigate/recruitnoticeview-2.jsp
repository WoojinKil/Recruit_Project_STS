<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			<table border="1" class="table table-striped"
				style="text-align: center;">

				<colgroup>
					<col width="130px" />
					<col width="500px" />
					<col width="130px" />
					<col width="500px" />
				</colgroup>

				<tbody>
					<tr>
						<th align="center">공고번호</th>
						<td>${NoticeView.recruitNo}</td>
						<th align="center">조회수</th>
						<td>${NoticeView.recruitHit}</td>
					</tr>
					<tr>
						<th align="center">제목</th>
						<td colspan="3">${NoticeView.recruitName}</td>
					</tr>
					<tr>
						<th align="center">유형/대상</th>
						<td>
							${NoticeView.recruitType }, ${NoticeView.recruitObject }</td>
						<th align="center">게시 일자</th>
						<td> ${NoticeView.recruitWriteDate }</td>
					</tr>
					<tr>
						<td colspan="4" height="200px">
							내용 or 이미지 <br>
							<img src="/resources/images/${NoticeView.recruitFileName}" style="width:80%"><br>
							<a class="btn btn-primary" href="/apply/applyForm?recruitNo=${NoticeView.recruitNo}&memberId=${member.memberId}" >지원하기</a>		
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