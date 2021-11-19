<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<style>
body {
	min-height: 100vh;
	background: -webkit-gradient(linear, left bottom, right top, from(#92b5db),
		to(#1d466c));
	background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
}

.input-form {
	max-width: 680px;
	margin-top: 80px;
	padding: 32px;
	background: #fff;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
}

.button2 {background-color: #008CBA;}
</style>
<script type="text/javascript">
	functioin CheckNullId{
		
		var id = document.loginFrm.memberId;
		var pw = document.loginFrm.pw;
		
		if(id.value=="" || pw. value ==""){
			alert("아이디 및 비밀번호를 입력해주세요.");
			
		}
	}
	
	
</script>
</head>

<body>
	<header><%@ include file="../header.jsp"%></header>
	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<h4 class="mb-3">로그인</h4>
				
				<form action="login" name="loginFrm" class="validation-form" method="post">

					<div class="mb-3">
						<label for="id">이메일아이디</label> <input type="text"
							class="form-control" name="memberId" placeholder="you@example.com"
							>

					</div>
					<div class="mb-3">
						<label for="password">비밀번호</label> <input type="password"
							class="form-control" name="memberPw"
							placeholder="특수문자 조합  8자 이상, 12자 이하" >
	
					</div>


					<div class="mb-3">
						
					

						<button class="btn btn-success btn-lg btn-block" onclick="CheckNullId()">로그인</button>
					</div>
				</form>
				
				<div class="mb-3">
				<button class="btn btn-secondary btn-lg btn-block" onclick="location='../'">돌아가기</button>
				</div>
				<div class="row">
					<div class="col-md-3 mb-4">
						<button class="btn btn-primary btn-lg btn-block" onclick="location.href='/joinform'" >회원가입</button>
					</div>
					<div class="col-md-3 mb-4">
						<button class="btn btn-secondary btn-lg btn-info" onclick="location.href='/joinform'" >비밀번호 찾기</button>
	
					</div>
				
				
				</div>
				
				
			</div>

		</div>

	</div>
	<footer class="my-3 text-center text-small">
		<%@ include file="../footer.jsp"%>
	</footer>
</body>

</html>