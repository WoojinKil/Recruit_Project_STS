<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>채용 Homepage_1</title>

</head>
<body>
	<header><%@ include file="header.jsp"%></header>

	<div class="container">
		<a href="./">HOME</a><br> <a href="./">회사소개</a>
		<ol>

			<li><a href="talent">인재상</a></li>
			<li><a href="process">인사제도</a></li>

		</ol>

	
		<a href="./">지원안내</a><br>
		<ol>
			<li><a href="/recruitnavigate/recruitnotice">채용공고</a></li>
			<li><a href="recruit_bbs">QnA</a></li>
			<li><a href="/recruitnavigate/recruitnotice">공지사항</a></li>
		</ol>
		<a href="./">나의 채용</a><br>
		<ol>

			<c:if test = "${member ==null}"> <!-- 로그인 안했으면 -->
				<li><a href="/member/loginform">로그인</a></li>
				<li><a href="/member/joinform">회원가입</a></li>
			
			
			</c:if>
		
			<c:if test ="${member != null}"> <!-- 로그인 했으면 -->
				<li><a href="apply">지원하기</a></li>
				<li><a href="/member/logout.do">로그아웃</a></li> <!-- 로그아웃 하는 행위 -->
				<li><a href="my_recruit">나의 지원 이력</a></li>
				<li><a href="my_inform">마이페이지</a></li>

			
			</c:if>
			
		

		</ol>


	</div>


	<footer><%@ include file="footer.jsp"%></footer>
</body>
</html>