<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>500페이지에러</title>
<link rel="shortcut icon" type="image/x-icon" href="https://upload.wikimedia.org/wikipedia/commons/4/40/Home_Icon_by_Lakas.svg">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
	
<script type="text/javascript">



</script>
</head>
<body>
	<header><%@ include file="../header.jsp"%></header>




<h1>아이디 또는 비밀번호를 확인하고 다시 로그인 해주세요.</h1>
<h1>오류 발생 관리자에게 문의해주세요.</h1>
<a type="button" class="btn btn-primary" href="/"> 홈 화면으로 돌아가기</a>


	<footer class="my-3 text-center text-small">
		<%@ include file="../footer.jsp"%>
	</footer>

</body>
</html>