<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 확인</title>
</head>
<body>
	<header><%@ include file="../header.jsp"%></header>
	<div class="container">
		<h1>회원님의 비밀번호는</h1>${member.memberPw }  <h1>입니다.</h1>
		<br>안전을 위하여 비밀번호를 바꿔주세요.
		<a type="button" class="btn btn-primary" href="/"> 홈 화면으로 돌아가기</a>
	</div>



	<footer class="my-3 text-center text-small">
		<%@ include file="../footer.jsp"%>
	</footer>
	
</body>
</html>