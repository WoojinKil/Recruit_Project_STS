<%@page import="com.example.demo.SHA256"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴 페이지</title>

</head>
<link rel="stylesheet" href="/resources/css/member/joinform.css">
<script type="text/javascript">
	 window.history.forward();
	 function noBack(){window.history.forward();}
</script>
<body  onload="noBack();" onpageshow="if(event.persisted) noBack();" onunload="">
	<header><%@ include file="../header.jsp"%></header>
	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<h4 class="mb-3">회원탈퇴 페이지</h4>
				<p style="color: red">*은 필수 입력 사항입니다.</p>
				<form id="withdraw_form" method="post">
					<div class="row">
						<div class="container">
						
							<table class="table" style="width:100%; text-align: left; border: 1px solid #dddddd">
							<thead>
								<tr>
									<th>회원탈퇴 이용약관</th>
								
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>
										본 이용자가 탈퇴한 경우 모든 개인 정보와 지원 이력 내역 및 진행 전형의 결과를 확인 할 수 없으며 이에 따른 모든 책임은 회원(수험자)이(가) 책임을 진다.
										<br>
										<br>
										- 본 이용자가 탈퇴 시 가입한 이후부터 지원한 회사의 공고 정보 및 지원 내역이 전부 말소되며 이에 따른 모든 책임은 전적으로 회원(수험자)에게 있다.<br>
										- 본 이용자가 마감된 채용 전형 도중 탈퇴를 처리한 경우 전형 중인 공고의 선발 대상에서 제외 된다.<br>
										- 마감 기한 내에 공고를 지원한 지원자가 탈퇴한 경우 재가입 후 동일한 지원서를 작성할 수 있다. 이에 대한 불이익은 없으며 새로운 수험번호가 부여된다.<br>
										 
									
									</td>
								</tr>
							</tbody>
							</table>
							위 약관을 정독하였으며 동의합니다. <input type="checkbox" class="withdraw_agree">						
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="name">이름<a id="essentionalred">*</a></label> <span> <span class="final_memberName_ck"><a id="essentionalred">이름을 입력해주세요.</a></span>
							</span> <input type="text" class="form-control input_memberName" name="memberName" placeholder="한글 성명">

						</div>

	


						<div class="col-md-6 mb-3">
							<label for="id">아이디<a id="essentionalred">*</a></label>
							<input type="text" class="form-control input_memberId" name="memberId">

						</div>


					</div>

					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="birth">생년월일<a id="essentionalred">*</a></label> 
							<input type="date" class="form-control input_memberBirth" name="memberBirth" >
						</div>
	

						<div class="col-md-6 mb-3">
						<label for="password">비밀번호<a id="essentionalred">*</a></label>
						
						<input type="password" class="form-control input_memberPw"	maxlength="12" name="memberPw">

						</div>

					</div>



					<div class="mb-4"></div>
					<input type="button" class="btn btn-danger btn-primary btn-lg btn-block withdraw_button" value="회원 탈퇴">


				</form>
				<input type="button" class="btn btn-primary btn-lg btn-block" onclick="location='../'" value="돌아가기">
			</div>

		</div>

	</div>
	<footer class="my-3 text-center text-small">
		<%@ include file="../footer.jsp"%>
	</footer>

	<script type="text/javascript">
		$(document).ready(function(){
			if ('${member.memberId}' == ""){
				alert("로그인이 필요합니다.");
				window.location.href = "/member/loginform";
			}
			var idck = false;
			var nameck = false;
			var pwck = false;
			var birthck = false;
			
			//회원탈퇴를 클릭했을 때 발생하는 메소드
			$(".withdraw_button").click(function(){
				var id = $.trim($('.input_memberId').val()); 
				var pw = $.trim($('.input_memberPw').val());
				var name = $.trim($('.input_memberName').val());
				var birth = $.trim($('.input_memberBirth').val());
				if(id =="" || pw =="" || name =="" || birth ==""){
					
					alert("입력되지 않는 항목이 있습니다.");
					
					return false;

				}
				if(id == '${member.memberId}'){
					idck = true;
					
				}else{
					alert("본인의 아이디를 정확히 입력해주세요.");
					idch = false;
					return false;
				}
				
				if(birth == '${member.memberBirth}'){

					birthck = true;
				}else{

					alert("본인의 생년월일을 정확히 입력해주세요.");
					birthck = false;
					
					return false;
				}
				
				if(name == '${member.memberName}'){
					nameck = true;
				}else{
					alert("본인의 이름을 정확히 입력해주세요.");
					nameck = false;
					return false;
					
				}
				
				$.ajax({
					type : "post",
					url : "/member/chkpassword.do",
					data : {
						"memberId" : id,
						"memberPw" : pw
					
					},
					success : function(data){
						if(data == true){
							pwck = true;
							
						}else{
							alert("비밀번호를 확인해주세요");
							return false;
							
						}
							
						
					}
				});
				var draw_check = $(".withdraw_agree").is(':checked');
				
				if(!(draw_check)){
					alert("이용약관에 동의를 해주시기 바랍니다.");
					return false;
				}
				console.log("id"+idck);
				console.log("pw"+pwck);
				console.log("birth"+birthck);
				console.log("name"+nameck);
				if(draw_check && idck && birthck && nameck && pwck){

					var con_test = confirm("회원탈퇴를 진행하시겠습니까?");
					if(con_test == true){
						$.ajax({
							type : "post",
							url : "/member/withdraw.do",
							data : {
								"memberId" : id,
								"memberPw" : pw,
								"memberName" : name,
								"memberBirth" : birth
							},
							success : function(data){
								if(data=="success"){
									alert("회원탈퇴에 성공했습니다. 메인화면으로 돌아갑니다.");
									window.location.href="/";
								}else{
									alert("회원정보를 다시 한 번 확인해주세요");
									return false;
								}
							},
							error : function(data){
								alert("에러 발생");
								return false;
							}
						});
						
					}else{
						
						return false;
						
					}

					
				}
				
				
			});
		});
	
	
	
	</script>	
</body>
</html>