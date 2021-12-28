<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 완료</title>
</head>
	<script type="text/javascript">

		window.history.forward();

		function noBack() {

			window.history.forward();

		}
		alert("로그인성공. 메인화면으로 돌아갑니다.");
		window.location.href="/";
     </script>

<body onload="noBack();" onpageshow="if(event.persisted) noBack();" onunload="">

</body>

</html>