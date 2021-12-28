<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>새 비밀번호 입력</title>
</head>
<script type="text/javascript">
	 window.history.forward();
	 function noBack(){window.history.forward();}
</script>
<!-- CSS 적용 -->
<link rel="stylesheet" href="/resources/css/member/newpassform.css">

<body onload="noBack();" onpageshow="if(event.persisted) noBack();" onunload="">
	<header><%@ include file="../header.jsp"%></header>
	<div class="container">
		<div class="input-form col-md-12 mx-auto">
			<h4 class="mb-3">새 비밀번호 입력</h4>
			<form id="new_pass_form" class="validation-form" method="post">

				<input type="hidden" value = "${member.memberId }" name="input_memberId">
				
				
				<br>안전을 위하여 비밀번호를 바꿔주세요.<br>
				<div class="col-md-6 mb-3">
					<label for="password">비밀번호</label> 
					<span> 
						<span class="final_memberPw_ck">
							<a id="essentionalred">비밀번호를 입력해주세요.</a>
						</span>
					</span> 
					<input type="password" class="form-control new_memberPw" maxlength="12" name="memberPw" placeholder="특수문자 포함 8자 이상, 12자 이하">

				</div>

				<div class="col-md-6 mb-3">
					<label for="passwordConfirm">비밀번호 확인</label> 
					<span class="final_memberPwConfirm_ck">
						<a id="essentionalred">비밀번호 확인을 입력해주세요.</a>
					</span>
					<span class="input_memberPw_re1">비밀번호가 일치합니다.</span>
					<span class="input_memberPw_re2">비밀번호가 일치하지 않습니다.</span>
					<input type="password" class="form-control new_memberPwConfirm" maxlength="12" name="memberPwConfirm" placeholder="8자 이상, 12자 이하">

				</div>
				<input type="button" class="btn btn-primary new_pass_btn" value="비밀번호 생성">
				<a type="button" class="btn btn-primary" href="/"> 홈 화면으로 돌아가기</a>

			</form>
		</div>
	</div>



	<footer class="my-3 text-center text-small">
		<%@ include file="../footer.jsp"%>
	</footer>

	<script>
		$(document).ready(function() {
			
			var pwCheck = false; // 비밀번호 유효성
			var pwckCheck = false; // 비밀번호 확인 유효성
			var pwckcorCheck = false; // 비밀번호 일치 유효성
			
			$(".new_pass_btn").click(function(){
				console.log(pwCheck + "" + pwckCheck + "" + pwckcorCheck);
				var pw = $.trim($('.new_memberPw').val());
				var pwck = $.trim($('.new_memberPwConfirm').val());
	
				if(pwCheck && pwckCheck && pwckcorCheck){
					var con_test = confirm("비밀번호를 바꾸시겠습니까?");
					if (con_test == true) {
						alert("완료되었습니다. 메인화면으로 돌아갑니다.");
						$("#new_pass_form").attr("action", "/member/newPass");
						$("#new_pass_form").attr('method', 'post');
						$("#new_pass_form").submit();
						
					} else if (con_test == false) {
						return false;
					}
				}
				
				
			});
			
			/* 비밀번호 확인 일치 유효성 검사 */
			
			//비밀번호 확인 입력란의 값이 변한다면 실행하는 메소드
			$('.new_memberPwConfirm').on("propertychange change keyup paste input", function() {
				

				var pw = $('.new_memberPw').val();
				var pwck = $('.new_memberPwConfirm').val();

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
						console.log("비밀번호확인" + pwck + pwckCheck);
					} else {
						$('.input_memberPw_re1').css('display', 'none');
						$('.input_memberPw_re2').css('display', 'inline-block');

						pwckcorCheck = false;
						console.log("일치여부" + pwckcorCheck);
						console.log("비밀번호확인" + pwck + pwckCheck);
					}
					$('.final_memberPwConfirm_ck').css('display', 'none');
					pwckCheck = true;
					console.log("비밀번호확인" + pwck + pwckCheck);
					
				}


				
			});

			/* 비밀번호 유효성 검사 */
			$('.new_memberPw').on("propertychange change keyup paste input", function() {
				console.log("come on");

				var pw = $('.new_memberPw').val();
				var pwck = $('.new_memberPwConfirm').val();
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

				
			});

			
			
			
			
		});
	</script>
</body>
</html>