<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link rel="stylesheet" href="/resources/css/member/loginform.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">


</head>

<script type="text/javascript">

		window.history.forward();

		function noBack() {

			window.history.forward();

		}
		
</script>
<body>


	<header><%@ include file="../header.jsp"%></header>
	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<h4 class="mb-3">로그인</h4>
				
				<form action="login" id="login_form" name="loginFrm" class="validation-form" method="post">

					<div class="mb-3">
						<label for="id">이메일아이디</label> <input type="text"
							class="form-control input_memberId " name="memberId">

					</div>
					<div class="mb-3">
						<label for="password">비밀번호</label> 
						<input type="password"	class="form-control input_memberPw" name="memberPw">
	
					</div>


					<div class="mb-3">
						
					

						<input type="button" class="btn btn-success btn-lg btn-block login_button" value="로그인">
					</div>
				</form>
				
				<div class="mb-3">
					<input type="button" class="btn btn-danger btn-lg btn-block" onclick="location='../'" value="돌아가기">
				</div>
				<div class="row">
					<div class="col-md-3 mb-4">
						<button class="btn btn-primary btn-lg btn-block" onclick="location.href='/member/joinform'" >회원가입</button>
					</div>
					<div class="col-md-3 mb-4">
						<button class="btn btn-secondary btn-lg btn-info" onclick="location.href='/member/findpassform'" >비밀번호 찾기</button>
	
					</div>
				
				
				</div>
				
 
            	<c:if test = "${result == 0 }">
               		 <div style="color:'red'" class = "login_warn">사용자 아이디 또는 비밀번호를 잘못 입력하셨습니다.</div>
           		</c:if>
			</div>

		</div>

	</div>
	<footer class="my-3 text-center text-small">
		<%@ include file="../footer.jsp"%>
	</footer>
	
	<script>

    /* 로그인 버튼 클릭 메서드 */
    $(".login_button").click(function(){
        
      

        
        /* 로그인 메서드 서버 요청 */
        $("#login_form").attr("action", "/member/login");
        $("#login_form").submit();
        $( 'body' ).attr( 'onload', 'noBack();' );
        $( 'body' ).attr( 'onpageshow', 'if(event.persisted) noBack();' );
        $( 'body' ).attr( 'onunload', '' );
        
    });
	</script>

	
</body>

</html>