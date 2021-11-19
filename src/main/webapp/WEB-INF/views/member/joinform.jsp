<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="UTF-8">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입</title>
<link rel="stylesheet" href="/resources/css/member/joinform.css">

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

#essentionalred {
	color: red;
	/* 필수 항목에는 빨간색 '*'을 표시 */
}
</style>
<script type="text/javascript">
		//각 항목이 유효한지 나타내는 변수
	var idCheck = false;
	var pwCheck = false;
	var pwConfirmCheck = false;
	var nameCheck = false;
	var birthCheck = false;
	var phoneNumber1Check = false;
	var phoneNumber2Check = false;
	var phoneNumber3Check = false;

$(document).ready(function() {
	//버튼을 클릭하는 순간 메소드가 작동
	$(".join_button").click(function(){
		//$안에 class명을 입력
		var id = $('.input_memberId').val();
		var pw = $('.input_memberPw').val();
		var pwConfirm = $('.input_memberPwConfirm').val();
		var name = $('.input_memberName').val();
		var birth = $('.input_memberBirth').val();
		
		if(name == ""){
			$('.final_memberName_ck').css('display','block');
			nameCheck = false;
		}else{
			$('.final_memberName_ck').css('display','none');
			nameCheck = true;
		}
	});
});




</script>



</head>
<body>

	<!-- 헤더 -->
	<header><%@ include file="../header.jsp"%></header>

	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<h4 class="mb-3">회원가입</h4>
				<p style="color: red">*은 필수 입력 사항입니다.</p>
				
				<!-- 회원가입 폼  -->
				<form name="joinFrm" class="validation-form" method="post" action="member/join">
					<div class="row">
						<div class="col-md-6 mb-3"><!-- 이름 -->
							<label for="name">이름<a id="essentionalred">*</a></label>
							<span>
								<span class="final_memberName_ck">이름을 입력하세요.</span>
							
							</span>
							<input type="text" class="input_memberName" name="memberName" placeholder="한글 성명" required>
						</div>
						
						<div class="col-md-3 mb-3"><!-- 생년월일 -->
							<label for="birth">생년월일<a id="essentionalred">*</a></label>
							<span>
								<span class="final_memberBirth_ck">생년월일을 입력하세요.</span>
							</span> 
							<input type ="text" class="input_memberBirth" maxlength="8" name="memberBirth" placeholder="19951102">

						</div>
						<div class="col-md-3 mb-3"><!-- 성별 -->
							<label for="gender">성별<a id="essentionalred">*</a></label>
							<select class="custom-select d-block w-100" name="memberGender">
								<option value="male" selected="selected">남자</option>
								<option value="female">여자</option>
								<option value="etc">기타</option>
							</select>
						</div>
					</div>
					<div class="mb-3"><!-- 아이디 -->
						<label for="id">이메일아이디<a id="essentionalred">*</a>
							<span>
								<span class="input_memberId_re1">사용 가능한 아이디입니다.</span>
								
								<span class="input_memberId_re2">사용 중인 아이디입니다.</span>
								<span class="final_memberId_ck">아이디를 입력해주세요.</span>
								
							</span>
							
						</label> 
						<input type="text" id="memberId" class="input_memberId" name="memberId" placeholder="you@example.com">
					</div>

					<div class="mb-3"><!-- 비밀번호 -->
						<label for="password">비밀번호<a id="essentionalred">*</a>
							<span>
								<span class="final_memberPw_ck">비밀번호를 입력해주세요.</span>
							</span>	
						</label>
							
						<input type="password" maxlength="12" class="input_memberPw" name="memberPw" placeholder="특수문자 조합  8자 이상, 12자 이하">
					</div>
					<div class="mb-3"><!-- 비밀번호 확인 -->
						<label for="passwordConfirm">비밀번호 확인<a id="essentionalred">*</a>
							<span>
								<span class="final_memberPwConfirm_ck">비밀번호 확인을 입력해주세요.</span>
							</span>
				
						</label>
						<input type="password" class="input_memberPwConfirm" name="memberPwConfirm" maxlength="12" placeholder="특수문자 조합  8자 이상, 12자 이하">

					</div>
					<div class="row">
						<div class="col-md-3 mb-3"><!-- 가입경로 -->
							<label for="root">가입 경로
							</label>
							 <select class="custom-select d-block w-100" name="memberRoot">
								<option value="회사 홈페이지" selected="selected">회사 홈페이지</option>
								<option value="인터넷 검색">인터넷 검색</option>
								<option value="지인">지인</option>
								<option value="구인 사이트">구인 사이트</option>
								<option value="기타"></option>
							</select>
						</div>
						
						<div class="col-md-8 mb-3"><!-- 휴대폰 번호 -->
							<label for="phone">휴대폰 번호<a id="essentionalred">*</a>
								<span>
									<span class="final_memberPhoneNumber">휴대폰 번호를 입력하세요.</span>
								</span>
							</label>

							<div class="row">
								<div class="col-md-3 mb-3">
									<input maxlength="3" type="text" class="input_memberPhoneNumber1" name="memberPhoneNumber1" placeholder="">
								</div>
								-
								<div class="col-md-3 mb-3">
									<input maxlength="4" type="text" class="input_memberPhoneNumber1" name="memberPhoneNumber2" placeholder="">
								</div>
								-
								<div class="col-md-3 mb-3">
									<input maxlength="4" type="text" class="input_memberPhoneNumber1"  name="memberPhoneNumber3" placeholder="">
								</div>

							</div>

						</div>
					</div>


					<div class="mb-4"></div>
					<input type="button" id="join_button"
						class="btn btn-primary btn-lg btn-block" onclick="CheckForm()"
						value="가입 하기">

				</form>
				<button class="btn btn-danger btn-lg btn-block"
					onclick="location='../'">돌아가기</button>
			</div>

		</div>

	</div>
	<footer class="my-3 text-center text-small">
		<%@ include file="../footer.jsp"%>
	</footer>
</body>
</html>

