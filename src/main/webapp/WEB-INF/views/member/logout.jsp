<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃 완료</title>
<script type="text/javascript">
	 window.history.forward();
	 function noBack(){window.history.forward();}
</script>

</head>
<body onload="noBack();" onpageshow="if(event.persisted) noBack();" onunload="">

</body>
<script type="text/javascript">
	alert("로그아웃 되었습니다. 메인화면으로 돌아갑니다.");
	window.location.href="/";
</script>
</html>
