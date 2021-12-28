<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃 완료</title>

</head>

<script type="text/javascript">
	
	 window.history.forward();
	 function noBack(){window.history.forward();}
		$(document).ready(function(){
			location.href = document.referrer;
		    
			window.location.href="home";
			location.href = document.referrer;
			 $( 'body' ).attr( 'onload', 'noBack();' );
		     $( 'body' ).attr( 'onpageshow', 'if(event.persisted) noBack();' );
		     $( 'body' ).attr( 'onunload', '' );
		});
</script>
<body onload="noBack();" onpageshow="if(event.persisted) noBack();" onunload="">
<header><%@ include file="../header.jsp"%></header>


	<h1>안전하게 로그아웃 되었습니다.</h1>
	
	<a type="button" class="btn btn-primary" href="/"> 홈 화면으로 돌아가기</a>
	


<footer class="my-3 text-center text-small">
		<%@ include file="../footer.jsp"%>
	</footer>
</body>


</html>
