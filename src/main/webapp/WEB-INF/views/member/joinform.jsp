<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="UTF-8">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입 화면 샘플 - Bootstrap</title>
<!-- Bootstrap CSS -->
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
</style>
</head>
<body>
	<header><%@ include file="../header.jsp"%></header>
	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<h4 class="mb-3">회원가입</h4>
				<p style="color: red">*은 필수 입력 사항입니다.</p>
				<form action="join" class="validation-form" method="post">
					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="name">이름</label> <input type="text"
								class="form-control" name="memberName" placeholder="한글 성명"
								required>
						</div>
						<div class="col-md-6 mb-3">
							<label for="birth">생년월일</label> <input type="text"
								class="form-control" name="memberBirth" placeholder="19951102"
								value="" required>
						</div>
					</div>
					<div class="mb-3">
						<label for="id">이메일아이디</label> <input type="text"
							class="form-control" name="memberId" placeholder="you@example.com"
							required>

					</div>
					<div class="mb-3">
						<label for="password">비밀번호</label> <input type="password"
							class="form-control" name="memberPw"
							placeholder="특수문자 조합  8자 이상, 12자 이하" required>
						<div class="invalid-feedback">주소를 입력해주세요.</div>
					</div>
					<div class="mb-3">
						<label for="passwordConfirm">비밀번호 확인</label> <input
							type="password" class="form-control" name="memberPwConfirm"
							placeholder="특수문자 조합  8자 이상, 12자 이하">
					</div>
					<div class="row">
						<div class="col-md-8 mb-3">
							<label for="root">가입 경로</label> <select
								class="custom-select d-block w-100" name="memberRoot">
								<option value=""></option>
								<option value="회사 홈페이지">회사 홈페이지</option>
								<option value="인터넷 검색">인터넷 검색</option>
								<option value="지인">지인</option>
								<option value="구인 사이트">구인 사이트</option>
								<option value="기타">기타</option>
							</select>
							<div class="invalid-feedback">가입 경로를 선택해주세요.</div>
						</div>
						<div class="col-md-4 mb-3">
							<label for="code">휴대폰 번호</label> <input type="text"
								class="form-control" name="memberPhoneNumber" placeholder=""
								required>
							<div class="invalid-feedback">추천인 코드를 입력해주세요.</div>
						</div>
					</div>

					<div class="mb-4"></div>
					<button class="btn btn-primary btn-lg btn-block" type="submit">가입
						완료</button>

				</form>
				<button class="btn btn-danger btn-lg btn-block" onclick="location='../'">돌아가기</button>
			</div>

		</div>

	</div>
	<footer class="my-3 text-center text-small">
		<%@ include file="../footer.jsp"%>
	</footer>
</body>
</html>

