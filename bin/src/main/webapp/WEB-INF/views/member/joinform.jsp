<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="UTF-8">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입 화면 샘플 - Bootstrap</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous">
	
</script>

<!-- CSS 적용 -->
<link rel="stylesheet" href="/resources/css/member/joinform.css">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

</head>

<script type="text/javascript">
	
</script>


<body>

	<header><%@ include file="../header.jsp"%></header>
	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<h4 class="mb-3">회원가입</h4>
				<p style="color: red">*은 필수 입력 사항입니다.</p>
				<form id="join_form" class="validation-form" method="post">

					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="name">이름<a id="essentionalred">*</a></label> 
							<span>
								<span class="final_memberName_ck"><a id="essentionalred">이름을 입력해주세요.</a></span>
							</span>
							<input type="text" class="form-control input_memberName" name="memberName" placeholder="한글 성명">

						</div>
						<div class="col-md-6 mb-3">
							<label for="birth">생년월일<a id="essentionalred">*</a></label> 
							<span>
								<span class="final_memberBirth_ck"><a id="essentionalred">양식에 맞게 생년월일을 입력해주세요.</a></span>
							</span>
							<input type="text" class="form-control input_memberBirth" name="memberBirth" placeholder="19951102" value="">
						</div>
					</div>


					<div class="row">


						<div class="col-md-6 mb-3">
							<label for="id">아이디<a id="essentionalred">*</a></label>
								<span>
									<span class="input_memberId_re1">사용 가능한 아이디입니다.</span>
									<span class="input_memberId_re2">사용 중인 아이디입니다.</span> 
									<span class="final_memberId_ck"><a id="essentionalred">형식에 맞게 아이디를 입력해주세요.</a></span>
								</span>
								<input type="text" class="form-control input_memberId" name="memberId" placeholder="you@example.com" required>

						</div>


					</div>

					<div class="col-md-6 mb-3">
						<label for="password">비밀번호<a id="essentionalred">*</a></label>
						<span>
							<span class="final_memberPw_ck"><a id="essentionalred">비밀번호를 입력해주세요.</a></span>
						</span>
						<input type="password" class="form-control input_memberPw"	maxlength="12" name="memberPw" placeholder="특수문자 조합  8자 이상, 12자 이하">

					</div>
					
					<div class="col-md-6 mb-3">
						<label for="passwordConfirm">비밀번호 확인<a id="essentionalred">*</a></label>
						
						<span class="final_memberPwConfirm_ck"><a id="essentionalred">비밀번호 확인을 입력해주세요.</a></span>
						<span class="input_memberPw_re1">비밀번호가 일치합니다.</span>
						<span class="input_memberPw_re2">비밀번호가 일치하지 않습니다.</span>
						<input type="password" class="form-control input_memberPwConfirm" maxlength="12" name="memberPwConfirm"	placeholder="특수문자 조합  8자 이상, 12자 이하">
					</div>



					<div class="row">
						<div class="col-md-3 mb-3">
							<label for="root">가입 경로</label>
							<select	class="custom-select d-block w-100" name="memberRoot">
								<option value="회사 홈페이지 방문">회사 홈페이지 방문</option>
								<option value="인터넷 검색">인터넷 검색</option>
								<option value="구인 사이트">구인 사이트</option>
								<option value="지인">지인</option>
								<option value="기타">기타</option>
							</select>
						</div>
						<div class="col-md-8 mb-3">
							<!-- 휴대폰 번호 -->
							<label for="phone">휴대폰 번호<a id="essentionalred">*</a></label>
							<span class="final_memberPhone_ck"><a id="essentionalred">휴대폰 번호를 입력해주세요.</a></span>
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
					<input type="button" class="btn btn-primary btn-lg btn-block join_button" value="가입완료">


				</form>
				<input type="button" class="btn btn-danger btn-lg btn-block" onclick="location='../'" value="돌아가기">
			</div>

		</div>

	</div>

	<script>
		/* 유효성 검사 통과유무 변수 */
		var idCheck = false; // 아이디
		var pwCheck = false; // 비번
		var pwckCheck = false; // 비번 확인
		var pwckcorCheck = false; // 비번 확인 일치 확인
		var nameCheck = false; // 이름
		var birthCheck = false; //생년월일 검사
		var phoneNumber1Check = false; //휴대폰 첫번째 자리 검사
		var phoneNumber2Check = false; //휴대폰 두번째 자리 검사
		var phoneNumber3Check = false; //휴대폰 세번째 자리 검사
		
		
		var phoneNumberCheck = false; //휴대폰 번호 검사
		var id = $('.input_memberId').val();
		var pw = $('.input_memberPw').val();
		var pwck = $('.input_memberPwConfirm').val();
		var name = $('.input_memberName').val();
		var birth = $('.input_memberBirth').val();
		var phone1 = $('.input_memberPhoneNumber1').val();
		var phone2 = $('.input_memberPhoneNumber2').val();
		var phone3 = $('.input_memberPhoneNumber3').val();		

		$(document).ready(function() {
							//회원가입 버튼(회원가입 기능 작동)
			$(".join_button").click(function() {

				var id = $('.input_memberId').val();
				var pw = $('.input_memberPw').val();
				var pwck = $('.input_memberPwConfirm').val();
				var name = $('.input_memberName').val();
				var birth = $('.input_memberBirth').val();
				var phone1 = $('.input_memberPhoneNumber1').val();
				var phone2 = $('.input_memberPhoneNumber2').val();
				var phone3 = $('.input_memberPhoneNumber3').val();		









												
				//최종 유효성 검사
				if (idCheck && pwCheck	&& pwckCheck && pwckcorCheck && nameCheck && birthCheck	&& phoneNumberCheck) {

					$("#join_form").attr("action","/member/join");
					$("#join_form").submit();

				}else{
					alert("입력되지 않는 항목이 있습니다.");
					return;
				}
				return false;
			
			});
		});

		$('.input_memberId').on(
				"propertychange change keyup paste input", function() {
					var memberId = $('.input_memberId').val(); // .input_memberId에 입력되는 값
					var data = {
						memberId : memberId
					} // '컨트롤에 넘길 데이터 이름' : '데이터(.input_memberId에 입력되는 값)'


					
					$.ajax({
						type : "post",
						url : "/member/memberIdChk",
						data : data,
						success : function(result) {

							if (result != 'fail') {
								$('.input_memberId_re2').css("display",	"none");
								$('.final_memberId_ck').css('display', 'none');
								$('.input_memberId_re1').css('display',	'inline-block');

								var form = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
								
								/* 아이디 유효성검사 */
								if (memberId == "") {
									$('.input_memberId_re1').css('display', 'none');
									$('.input_memberId_re2').css('display', 'none');
									$('.final_memberId_ck').css('display', 'inline-block');

									idCheck = false; //비어있으면 "입력해주세요"
								} else {
									$('.final_memberId_ck').css('display', 'none');
									if (form.test(memberId) == false) {
										$('.input_memberId_re1').css('display', 'none');
										$('.input_memberId_re2').css('display', 'none');
										$('.final_memberId_ck').css('display','inline-block');
										
										idCheck = false;
										
									} else {
										idCheck = true;
									}

									//idCheck = true;
								}
								
								
								
								//idCheck = true;
								
							} 
							else {
								$('.input_memberId_re2').css("display",	"inline-block");
								$('.input_memberId_re1').css("display",	"none");
								idCheck = false;
							}
						
						}//success종료
					}); // ajax 종료

						
							
				});// function 종료

		/* 비밀번호 확인 일치 유효성 검사 */

		$('.input_memberPwConfirm').on(
				"propertychange change keyup paste input", function() {


					var pw = $('.input_memberPw').val();
					var pwck = $('.input_memberPwConfirm').val();

					//$('.final_memberPw_ck').css('display', 'none');

					/* 비밀번호 확인 유효성 검사 */
					if (pwck == "") {
						$('.final_memberPwConfirm_ck').css('display','inline-block');
							pwckCheck = false;
	
					} else {
						$('.final_memberPwConfirm_ck').css('display','none');
							pwckCheck = true;
					
					}
					
					if (pw == pwck) {
						$('.input_memberPw_re1').css('display', 'inline-block');
						$('.input_memberPw_re2').css('display', 'none');

						pwckcorCheck = true;


					} else {
						$('.input_memberPw_re1').css('display', 'none');
						$('.input_memberPw_re2').css('display', 'block');

						pwckcorCheck = false;


					}
					
				});
		
		/* 비밀번호 유효성 검사 */		
		$('.input_memberPw').on(
				"propertychange change keyup paste input", function() {


					var pw = $('.input_memberPw').val();
					var pwck = $('.input_memberPwConfirm').val();

					//$('.final_memberPw_ck').css('display', 'none');
												/* 비밀번호 유효성 검사 */
					if (pw == "" || pw.length < 8) {
						$('.final_memberPw_ck').css('display','inline-block');
						pwCheck = false;
		
					else {
						$('.final_memberPw_ck').css('display', 'none');
						pwCheck = true;
		

					}
					if (pw == pwck) {
						$('.input_memberPw_re1').css('display', 'inline-block');
						$('.input_memberPw_re2').css('display', 'none');

						pwckcorCheck = true;


					} else {
						$('.input_memberPw_re1').css('display', 'none');
						$('.input_memberPw_re2').css('display', 'inline-block');

						pwckcorCheck = false;


					}

		});				
				
		/*이름 유효성 검사*/		
		$('.input_memberName').on(
				"propertychange change keyup paste input", function() {


					var name = $('.input_memberName').val();
					

					/* 이름 확인 유효성 검사 */
					if (name == "") {
						$('.final_memberName_ck').css('display','inline-block');
							nameCheck = false;
							
					} else {
						$('.final_memberName_ck').css('display','none');
							nameCheck = true;
							
				}
					

				
					
		});
				
	
		/*생년월일 유효성 검사*/		
		$('.input_memberBirth').on(
				"propertychange change keyup paste input", function() {
					

					var birth = $('.input_memberBirth').val();
					

					/* 생년월일의 유효성검사 */
					if (birth == "" || isNaN(birth) || birth.length != 8) {
						
						$('.final_memberBirth_ck').css('display','inline-block');
						birthCheck = false; //비어있으면 "정확한 생년월일을 입력해주세요"
						
					} else {
					
						$('.final_memberBirth_ck').css('display','none');
						birthCheck = true;
					}
					

				
					
		});	
		
		/*휴대전화 첫번째 자리 유효성 검사*/		
		$('.input_memberPhoneNumber1').on(
				"propertychange change keyup paste input", function() {
					var phone1 = $('.input_memberPhoneNumber1').val();

					
					/* 휴대폰 번호의 유효성 검사*/
					if (isNaN(phone1) || phone1 == "") {
						
						$('.final_memberPhone_ck').css('display','inline-block');
						phoneNumber1Check = false;
						
					} else {
						/*휴대전화 두번째 자리 유효성 검사*/		

						$('.final_memberPhone_ck').css('display','none');
						phoneNumber1Check = true;
						
					}	
					if(phoneNumber1Check && phoneNumber2Check&& phoneNumber2Check){
						phoneNumberCheck = true;
					}
					
		});			

		$('.input_memberPhoneNumber2').on(
				"propertychange change keyup paste input", function() {
					var phone2 = $('.input_memberPhoneNumber2').val();		

					/* 휴대폰 번호의 유효성 검사*/
					if (isNaN(phone2) || phone2 == "") {
						
						$('.final_memberPhone_ck').css('display','inline-block');
						phoneNumber2Check = false;
						
					} else {
						/*휴대전화 두번째 자리 유효성 검사*/		

						$('.final_memberPhone_ck').css('display','none');
						phoneNumber2Check = true;
						
					}	
					if(phoneNumber1Check && phoneNumber2Check&& phoneNumber2Check){
						phoneNumberCheck = true;
					}
					
		});	
				
		$('.input_memberPhoneNumber3').on(
				"propertychange change keyup paste input", function() {
					var phone3 = $('.input_memberPhoneNumber3').val();		

					/* 휴대폰 번호의 유효성 검사*/
					if (isNaN(phone3) || phone3 == "") {
						
						$('.final_memberPhone_ck').css('display','inline-block');
						phoneNumber3Check = false;
						
					} else {
						/*휴대전화 두번째 자리 유효성 검사*/		

						$('.final_memberPhone_ck').css('display','none');
						phoneNumber3Check = true;
						
					}	
					if(phoneNumber1Check && phoneNumber2Check&& phoneNumber2Check){
						phoneNumberCheck = true;
					}
		});	
		
						
	</script>


	<footer class="my-3 text-center text-small">
		<%@ include file="../footer.jsp"%>
	</footer>

</body>
</html>
