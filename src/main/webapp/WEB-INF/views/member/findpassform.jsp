<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="UTF-8">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>비밀번호 찾기</title>
<script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous">
	
</script>

<!-- CSS 적용 -->
<link rel="stylesheet" href="/resources/css/member/joinform.css">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>

<script type="text/javascript">
	 window.history.forward();
	 function noBack(){window.history.forward();}
</script>

<body onload="noBack();" onpageshow="if(event.persisted) noBack();" onunload="">

	<header><%@ include file="../header.jsp"%></header>
	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<h4 class="mb-3">비밀번호 찾기</h4>
				<p style="color: red">*은 필수 입력 사항입니다.</p>
				<form id="findpass_form" class="validation-form" method="post">

					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="name">이름<a id="essentionalred">*</a></label> <span> <span class="final_memberName_ck"><a id="essentionalred">이름을 입력해주세요.</a></span>
							</span> <input type="text" class="form-control input_memberName" name="memberName" placeholder="한글 성명">

						</div>
						<div class="col-md-6 mb-3">
							<label for="birth">생년월일<a id="essentionalred">*</a></label>
							 <input type="date" class="form-control input_memberBirth" name="memberBirth">
						</div>
					</div>


					<div class="row">


						<div class="col-md-6 mb-3">
							<label for="id">아이디<a id="essentionalred">*</a></label>
							<input type="text" class="form-control input_memberId" name="memberId" placeholder="you@example.com">

						</div>


					</div>

					<div class="row">

						<div class="col-md-8 mb-3">
							<!-- 휴대폰 번호 -->
							<label for="phone">휴대폰 번호<a id="essentionalred">*</a></label> <span class="final_memberPhone_ck"><a id="essentionalred">휴대폰 번호를 입력해주세요.</a></span>
							<div class="row">
								<div class="col-md-3 mb-3">
									<input maxlength="3" type="text" class="form-control input_memberPhoneNumber1" name="memberPhoneNumber1" placeholder="">
								</div>
								-
								<div class="col-md-3 mb-3">
									<input maxlength="4" type="text" class="form-control input_memberPhoneNumber2" name="memberPhoneNumber2" placeholder="">
								</div>
								-
								<div class="col-md-3 mb-3">
									<input maxlength="4" type="text" class="form-control input_memberPhoneNumber3" name="memberPhoneNumber3" placeholder="">
								</div>

							</div>
						</div>
					</div>




					<div class="mb-4"></div>
					<input type="button" class="btn btn-primary btn-lg btn-block find_button" value="비밀번호 찾기">


				</form>
				<input type="button" class="btn btn-danger btn-lg btn-block" onclick="location='../'" value="돌아가기">
			</div>

		</div>

	</div>
	
	<script type="text/javascript">
    $(".find_button").click(function(){
        
      

        
        /* 로그인 메서드 서버 요청 */
        $("#findpass_form").attr("action", "/member/findPass");
        $("#findpass_form").submit();
        
    });
 
	
	
	</script>
</body>
</html>
