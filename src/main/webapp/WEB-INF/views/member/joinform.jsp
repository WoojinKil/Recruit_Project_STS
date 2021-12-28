<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="UTF-8">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입</title>
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
							<input type="date" class="form-control input_memberBirth" name="memberBirth" >
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
						<input type="password" class="form-control input_memberPw"	maxlength="12" name="memberPw" placeholder="특수문자 포함 8자 이상, 12자 이하">

					</div>
					
					<div class="col-md-6 mb-3">
						<label for="passwordConfirm">비밀번호 확인<a id="essentionalred">*</a></label>
						
						<span class="final_memberPwConfirm_ck"><a id="essentionalred">비밀번호 확인을 입력해주세요.</a></span>
						<span class="input_memberPw_re1">비밀번호가 일치합니다.</span>
						<span class="input_memberPw_re2">비밀번호가 일치하지 않습니다.</span>
						<input type="password" class="form-control input_memberPwConfirm" maxlength="12" name="memberPwConfirm"	placeholder="8자 이상, 12자 이하">
					</div>



					<div class="row">
						<div class="col-md-3 mb-3">
							<label for="root">가입 경로</label>
							<select	class="custom-select d-block w-100 select_memberRoot" name="memberRoot">
								<option value="회사 홈페이지 방문" selected="selected">회사 홈페이지 방문</option>
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
		var idCheck = false; // 아이디 유효성
		var pwCheck = false; // 비밀번호 유효성
		var pwckCheck = false; // 비밀번호 확인 유효성
		var pwckcorCheck = false; // 비밀번호 일치 유효성
		var nameCheck = false; // 이름 유효성
		var birthCheck = false; //생년월일 유효성
		var phoneNumber1Check = false; //휴대폰 첫번째 자리 유효성
		var phoneNumber2Check = false; //휴대폰 두번째 자리 유효성
		var phoneNumber3Check = false; //휴대폰 세번째 자리 유효성

		var phoneNumberCheck = false; //휴대폰 번호 검사
		
		//각각의 input의 class의 이름을 받아온다.
		var id = $.trim($('.input_memberId').val()); 
		var pw = $.trim($('.input_memberPw').val());
		var pwck = $.trim($('.input_memberPwConfirm').val());
		var name = $.trim($('.input_memberName').val());
		var birth = $.trim($('.input_memberBirth').val());
		var phone1 = $.trim($('.input_memberPhoneNumber1').val());
		var phone2 = $.trim($('.input_memberPhoneNumber2').val());
		var phone3 = $.trim($('.input_memberPhoneNumber3').val());

		$(document).ready(function() {
			
			//회원가입 버튼(회원가입 기능 작동)
			//만약 회원가입 버튼(join_button)이 클릭되었을 경우 시행된다.
			$(".join_button").click(function() {

				//각각의 input의 class의 이름을 받아온다.
				var id = $.trim($('.input_memberId').val()); 
				var pw = $.trim($('.input_memberPw').val());
				var pwck = $.trim($('.input_memberPwConfirm').val());
				var name = $.trim($('.input_memberName').val());
				var birth = $.trim($('.input_memberBirth').val());
				var phone1 = $.trim($('.input_memberPhoneNumber1').val());
				var phone2 = $.trim($('.input_memberPhoneNumber2').val());
				var phone3 = $.trim($('.input_memberPhoneNumber3').val());
				var root = $('.select_memberRoot option:selected').val();
				console.log(root);
				
				//최종 유효성 검사
				//전부 true가 되지 않으면 회원가입 되지 않는다.
				if (idCheck && pwCheck && pwckCheck && pwckcorCheck && nameCheck && birthCheck && phoneNumberCheck) {

					$("#join_form").attr("action", "/member/join");
					
					var con_test = confirm("가입하시겠습니까?");
					if (con_test == true) {
						alert("회원가입이 완료되었습니다.");
						$("#join_form").submit();
						$( 'body' ).attr( 'onload', 'noBack();' );
					    $( 'body' ).attr( 'onpageshow', 'if(event.persisted) noBack();' );
					    $( 'body' ).attr( 'onunload', '' );



					} else if (con_test == false) {
						return false;
					}
					
					
					
				} else {
					alert("입력되지 않는 항목이 있습니다.");
					return false;
				}
				return false;

				console.log("아이디체크" + idCheck + "비번체크" + pwCheck + "비번확인체크" + pwckCheck + "비번일치체크" + pwckcorCheck + "이름체크" + nameCheck + "생일 체크" + birthCheck + "전화 체크" + phoneNumberCheck);

			});
		});

		//아이디가 입력값이 변화되었을 경우 발생하는 메소드
		$('.input_memberId').on("propertychange change keyup paste input", function() {
			var memberId = $('.input_memberId').val(); // .input_memberId에 입력되는 값
			var data = {
				memberId : memberId
			} // '컨트롤에 넘길 데이터 이름' : '데이터(.input_memberId에 입력되는 값)'

			//ajax 시작
			$.ajax({
				type : "post",
				url : "/member/memberIdChk.do",
				data : data,
				success : function(result) {

					
					if (result != 'fail') {
						$('.input_memberId_re2').css("display", "none");
						$('.final_memberId_ck').css('display', 'none');
						$('.input_memberId_re1').css('display', 'inline-block'); //사용가능한 아이디

						//이메일 정규표현식
						var idform = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;

						/* 아이디 유효성검사 */
						if (memberId == "") {
							$('.input_memberId_re1').css('display', 'none');
							$('.input_memberId_re2').css('display', 'none');
							$('.final_memberId_ck').css('display', 'inline-block'); //형식에 맞게 아이디를 입력해주세요.

							idCheck = false; 
						} else {
							$('.final_memberId_ck').css('display', 'none');
							if (idform.test(memberId) == false) { //정규식에 맞지 않으면 if문 실행
								$('.input_memberId_re1').css('display', 'none');
								$('.input_memberId_re2').css('display', 'none');
								$('.final_memberId_ck').css('display', 'inline-block'); //형식에 맞게 아이디를 입력해주세요.


								idCheck = false;

							} else {
								idCheck = true; //아이디가 유효함
							}

							
						}

						

					} else {//fail이 아니면 사용중인 아이디
						$('.input_memberId_re2').css("display", "inline-block"); 
						$('.input_memberId_re1').css("display", "none");
						idCheck = false;
					}
					console.log("아이디체크" + idCheck + "비번체크" + pwCheck + "비번확인체크" + pwckCheck + "비번일치체크" + pwckcorCheck + "이름체크" + nameCheck + "생일 체크" + birthCheck + "전화 체크" + phoneNumberCheck);
				}//success종료
			}); // ajax 종료

		});// function 종료

		
		
		/* 비밀번호 확인 일치 유효성 검사 */
		
		//비밀번호 확인 입력란의 값이 변한다면 실행하는 메소드
		$('.input_memberPwConfirm').on("propertychange change keyup paste input", function() {
			

			var pw = $('.input_memberPw').val();
			var pwck = $('.input_memberPwConfirm').val();

			var pwform = /^[A-Za-z0-9!@#$%^&*]{8,12}$/;

			/* 비밀번호 확인 유효성 검사 */
			if (pwck == "" || pwform.test(pwck) == false) {
				$('.final_memberPwConfirm_ck').css('display', 'inline-block');
				$('.input_memberPw_re1').css('display', 'none');
				$('.input_memberPw_re2').css('display', 'none');
				pwckCheck = false;
				console.log("비밀번호확인" + pwck + pwckCheck);
			} else {
				if (pw == pwck) {
					$('.input_memberPw_re1').css('display', 'inline-block');
					$('.input_memberPw_re2').css('display', 'none');

					pwckcorCheck = true;
					console.log("일치여부" + pwckcorCheck);

				} else {
					$('.input_memberPw_re1').css('display', 'none');
					$('.input_memberPw_re2').css('display', 'inline-block');

					pwckcorCheck = false;
					console.log("일치여부" + pwckcorCheck);

				}
				$('.final_memberPwConfirm_ck').css('display', 'none');
				pwckCheck = true;
				console.log("비밀번호확인" + pwck + pwckCheck);
			}


			console.log("아이디체크" + idCheck + "비번체크" + pwCheck + "비번확인체크" + pwckCheck + "비번일치체크" + pwckcorCheck + "이름체크" + nameCheck + "생일 체크" + birthCheck + "전화 체크" + phoneNumberCheck);
		});

		/* 비밀번호 유효성 검사 */
		$('.input_memberPw').on("propertychange change keyup paste input", function() {
			console.log("come on");

			var pw = $('.input_memberPw').val();
			var pwck = $('.input_memberPwConfirm').val();
			var pwform = /^[A-Za-z0-9!@#$%^&*]{8,12}$/;
			//$('.final_memberPw_ck').css('display', 'none');
			/* 비밀번호 유효성 검사 */
			if (pw == "" || pw.length < 8 || pwform.test(pw) == false) {
				$('.final_memberPw_ck').css('display', 'inline-block');
				pwCheck = false;
				console.log("비밀번호" + pw + pwCheck);
			} else {
				if (pw == pwck) {
					$('.input_memberPw_re1').css('display', 'inline-block');
					$('.input_memberPw_re2').css('display', 'none');

					pwckcorCheck = true;
					console.log("일치여부" + pwckcorCheck);

				} else {
					$('.input_memberPw_re1').css('display', 'none');
					$('.input_memberPw_re2').css('display', 'inline-block');

					pwckcorCheck = false;
					console.log("일치여부" + pwckcorCheck);

				}
				
				$('.final_memberPw_ck').css('display', 'none');
				pwCheck = true;
				console.log("비밀번호" + pw + pwCheck);

			}

			console.log("아이디체크" + idCheck + "비번체크" + pwCheck + "비번확인체크" + pwckCheck + "비번일치체크" + pwckcorCheck + "이름체크" + nameCheck + "생일 체크" + birthCheck + "전화 체크" + phoneNumberCheck);
		});

		/*이름 유효성 검사*/
		$('.input_memberName').on("propertychange change keyup paste input", function() {
			console.log("come on");

			var name = $('.input_memberName').val();

			/* 이름 확인 유효성 검사 */
			if (name == "") {
				$('.final_memberName_ck').css('display', 'inline-block');
				nameCheck = false;

			} else {
				$('.final_memberName_ck').css('display', 'none');
				nameCheck = true;

			}

		});

		/*생년월일 유효성 검사*/
		$('.input_memberBirth').on("propertychange change keyup paste input", function() {

			var birth = $('.input_memberBirth').val();

			/* 생년월일의 유효성검사 */
			if (birth == "" ){

				$('.final_memberBirth_ck').css('display', 'inline-block');
				birthCheck = false; //비어있으면 "정확한 생년월일을 입력해주세요"

			} else {

				$('.final_memberBirth_ck').css('display', 'none');
				birthCheck = true;
			}

		});

		/*휴대전화 첫번째 자리 유효성 검사*/
		$('.input_memberPhoneNumber1').on("propertychange change keyup paste input", function() {
			var phone1 = $('.input_memberPhoneNumber1').val();

			/* 휴대폰 번호의 유효성 검사*/
			if (isNaN(phone1) || phone1 == "") {

				$('.final_memberPhone_ck').css('display', 'inline-block');
				phoneNumber1Check = false;

			} else {
				/*휴대전화 두번째 자리 유효성 검사*/

				$('.final_memberPhone_ck').css('display', 'none');
				phoneNumber1Check = true;

			}
			if (phoneNumber1Check && phoneNumber2Check && phoneNumber2Check) {
				phoneNumberCheck = true;
			}

		});

		$('.input_memberPhoneNumber2').on("propertychange change keyup paste input", function() {
			var phone2 = $('.input_memberPhoneNumber2').val();

			/* 휴대폰 번호의 유효성 검사*/
			if (isNaN(phone2) || phone2 == "") {

				$('.final_memberPhone_ck').css('display', 'inline-block');
				phoneNumber2Check = false;

			} else {
				/*휴대전화 두번째 자리 유효성 검사*/

				$('.final_memberPhone_ck').css('display', 'none');
				phoneNumber2Check = true;

			}
			if (phoneNumber1Check && phoneNumber2Check && phoneNumber2Check) {
				phoneNumberCheck = true;
			}

		});

		$('.input_memberPhoneNumber3').on("propertychange change keyup paste input", function() {
			var phone3 = $('.input_memberPhoneNumber3').val();

			/* 휴대폰 번호의 유효성 검사*/
			if (isNaN(phone3) || phone3 == "") {

				$('.final_memberPhone_ck').css('display', 'inline-block');
				phoneNumber3Check = false;

			} else {
				/*휴대전화 두번째 자리 유효성 검사*/

				$('.final_memberPhone_ck').css('display', 'none');
				phoneNumber3Check = true;

			}
			if (phoneNumber1Check && phoneNumber2Check && phoneNumber2Check) {
				phoneNumberCheck = true;
			}
		});
	</script>


	<footer class="my-3 text-center text-small">
		<%@ include file="../footer.jsp"%>
	</footer>

</body>
</html>
