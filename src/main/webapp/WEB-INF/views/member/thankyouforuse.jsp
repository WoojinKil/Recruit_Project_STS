<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴 완료</title>
</head>
<script type="text/javascript">
	
	 window.history.forward();
	 function noBack(){window.history.forward();}
</script>
<body  onload="noBack();" onpageshow="if(event.persisted) noBack();" onunload="">
<header><%@ include file="../header.jsp"%></header>

<h3>안전하게 처리가 되었습니다.</h3><br>
<h3>링크루트를 이용해주셔서 감사합니다.</h3>
	<a type="button" class="btn btn-primary" href="/"> 홈 화면으로 돌아가기</a>
	

<footer class="my-3 text-center text-small">
		<%@ include file="../footer.jsp"%>
	</footer>

</body>
</html>