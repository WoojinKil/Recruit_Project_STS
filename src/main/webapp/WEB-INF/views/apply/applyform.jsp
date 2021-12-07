<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입사지원 페이지</title>



</head>
<body>
	<header><%@ include file="../header.jsp"%></header>

	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<a class="navbar-brand">입사 지원</a>
		</div>

	</nav>

	<div class="container">



		<!-- 인적사항 form -->
		<form id="apply_form" method="post">
			<div class="container">
				<strong>인적사항</strong>
			</div>
			<table border="1" class="table table-striped" style="text-align: center;">

				<colgroup>
					<col width="130px" />
					<col width="500px" />
					<col width="130px" />
					<col width="500px" />
				</colgroup>

				<tbody>
					<tr>
						<th align="center">지원자 이름</th>
						<td>${applicant.memberName}</td>
						<th align="center">생년월일</th>
						<td colspan="5">${applicant.memberBirth}</td>
					</tr>
					<tr>
						<th align="center">공고명</th>
						<td colspan="5"><a class="notice_no">${noticeInfo.recruitNo }</a>/${noticeInfo.recruitName}</td>
					</tr>
					<tr>
						<th align="center">유형</th>
						<td>${type.typeName }</td>
						<th align="center">직무 선택</th>
						<td colspan="4">
							<div>


								<select class="select_applyNo" style="width: 100%">
									<option value="">직무를 선택해주세요</option>
									<c:forEach var="adtos" items="${adtos }" varStatus="status">
										<option value="${adtos.applyNo }">${parts[status.index].partName }-${wdtos[status.index].workName }-${odtos[status.index].objectName }</option>

									</c:forEach>

								</select>
							</div>

						</td>
					</tr>

					<tr>
						<th align="center">병역사항</th>
						<td><select class="select_applicant_millitary">
								<option value="">선택해주세요</option>
								<option value="만기제대">만기제대(소집해제)</option>
								<option value="복무 중">복무중</option>
								<option value="면제">면제</option>
								<option value="해당사항 없음">해당사항 없음</option>


						</select></td>
						<th align="center">보훈 대상</th>
						<td><select class="select_veteran">
								<option value="">선택해주세요</option>
								<option value="비대상">비대상</option>
								<option value="대상">대상</option>


						</select></td>

					</tr>

					<tr>
						<th align="center">장애 유무</th>
						<td><select class="select_disability">
								<option value="해당없음">해당없음</option>
								<option value="3급">3급</option>
								<option value="2급">2급</option>
								<option value="1급">1급</option>


						</select></td>
						<th align="center">취업 보호 대상</th>
						<td><select class="select_job_pro">
								<option value="비대상">비대상</option>
								<option value="대상">대상</option>


						</select></td>

					</tr>

				</tbody>



			</table>



		</form>

		<!-- 학교 입력 폼(고등학교) -->
		<form>
			<div class="container">
			
			<strong>고등학교 정보</strong>
			</div>
			<table border="1" class="table table-striped" style="text-align: center;">

				<colgroup>
					<col width="130px" />

				</colgroup>
				<tr>
					<th align="center">최종 고등학교 입력</th>

					<td colspan="6">
						<div>
							
							<input type="text" class="input_highschool_name" style="width:40%" placeholder="검정고시일 경우 '대입검정고시'라고 작성해주세요." value="${apdto.applicantHighSchoolName }">
							<input type="text" placeholder="졸업년도(합격년도)" maxlength="4" value="${apdto.applicantHighSchoolGraduateYear }">
							재적
						<select class=select_highschool_graduate>
								<option value="졸업">졸업(합격)</option>
								<option value="졸업예정">졸업예정</option>
								<option value="재학 중">재학 중</option>

						</select>							
							
						</div>

					</td>
				</tr>

				</tbody>



			</table>


		</form>




<!-- 대학교(2,3,4년제) / 대학원 form -->
		<form method="post" id=collegeForm>
			<div class="container">
				<strong>대학교/대학원 정보(2, 3년제 포함)</strong>
			</div>

			<table border="1" class="table table-striped" height="100" style="text-align: center;">

				<colgroup>
					<col width="130px" />
					<col width="800px" />
					<col width="130px" />
					<col width="500px" />
				</colgroup>

				<tbody>

					<tr>
						<th align="center">대학/대학원명</th>
						<td>
							<input name="college_name" style="width: 50%" class="input_college_name" type="text">
							소재지:
							<select class="select_college_location">
								<option value="서울">서울</option>
								<option value="경기">경기</option>
								<option value="인천">인천</option>
								<option value="대전">대전</option>
								<option value="대구">대구</option>
								<option value="부산">부산</option>
								<option value="울산">울산</option>
								<option value="광주">광주</option>
								<option value="충남">충남</option>
								<option value="충북">충북</option>
								<option value="경남">경남</option>
								<option value="경북">경북</option>
								<option value="전남">전남</option>
								<option value="전북">전북</option>
								<option value="강원">강원</option>
								<option value="제주">제주</option>
								<option value="기타/해외">기타/해외</option>
								
								
							
							</select>
						</td>
						<th align="center">학위</th>
						<td><select class="select_college_degree" style="width: 50%">

								<option value="학사">학사</option>
								<option value="전문학사">전문학사</option>
								<option value="석사">석사</option>
								<option value="박사">박사</option>
								<option value="석박사">석박사</option>

						</select></td>

					</tr>

					<tr>
						<th align="center">학과</th>
						<td><input name="college_major1" style="width: 30%" class="input_college_major1" type="text" placeholder="주전공"> <input name="college_major2" style="width: 30%" class="input_college_major2" type="text" placeholder="복수전공/부전공"> 단일전공<input type="checkbox" class="input_double_major" checked="checked"> <select class="select_college_double_majorKind">

								<option value="복수전공" selected="selected">복수전공</option>
								<option value="부전공">부전공</option>
								<option value="기타">기타</option>


						</select></td>
						<th style="width: 10%" align="center">학점<br></th>
						<td><input style="width: 100px" name="college_score" class="input_college_score" type="text" step="0.01" maxlength="5"> / <select class="select_college_scoreMax">
								<option value="4.5">4.5점</option>
								<option value="4.3">4.3점</option>
								<option value="4.0">4.0점</option>
								<option value="100">100점</option>


						</select> <br> <span style="font-size: 1em; color: red">소수 둘째 자리에서 반올림</span></td>
					</tr>


					<tr>
						<th align="center">재학 기간</th>
						<td colspan="4"><select class=select_college_enter>
								<option value="입학">입학</option>
								<option value="편입학">편입학</option>
								<option value="재입학">재입학</option>
								<option value="기타">기타</option>


						</select> <input name="college_start_date" class="input_college_start_date" type="month"> ~ <input name="college_end_date" class="input_college_end_date" type="month"> <select class=select_college_graduate>
								<option value="졸업">졸업</option>
								<option value="졸업예정">졸업예정</option>
								<option value="수료">수료</option>
								<option value="휴학">휴학</option>
								<option value="재학 중">재학 중</option>
								<option value="중퇴">중퇴</option>

						</select></td>
					</tr>
					<tr>
						<th align="center"><button type="button" class="btn btn-primary add_college">학교 추가</button></th>

						<td colspan="4">

							<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
								<thead>
									<tr>

										<th style="background-color: #eeeeee; text-align: center;">학교</th>
										<th style="background-color: #eeeeee; text-align: center;">소재</th>
										<th style="background-color: #eeeeee; text-align: center;">주전공</th>

										<th style="background-color: #eeeeee; text-align: center;">다중전공</th>
										<th style="background-color: #eeeeee; text-align: center;">학점</th>
										<th style="background-color: #eeeeee; text-align: center;">학위</th>
										<th style="background-color: #eeeeee; text-align: center;">입학</th>
										<th style="background-color: #eeeeee; text-align: center;">재학기간</th>
										<th style="background-color: #eeeeee; text-align: center;">재적</th>

										<th style="background-color: #eeeeee; text-align: center;">삭제</th>

									</tr>
								</thead>
								<tbody class="college_list">



								</tbody>
							</table>
						</td>


					</tr>



				</tbody>



			</table>

		</form>

		
		
		
		
<!-- 자격증 form -->
		<form method="post" id=certificateForm>
			<div class="container">
				<strong>자격증, 어학 정보</strong>
			</div>

			<table border="1" class="table table-striped" style="text-align: center;">

				<colgroup>
					<col width="130px" />
					<col width="500px" />
					<col width="130px" />
					<col width="500px" />
				</colgroup>

				<tbody>

					<tr>
						<th align="center">시험명</th>
						<td><input name="certificate_name" class="input_certificate_name" style="width: 80%" type="text" placeholder="ex) 정보처리기사-> 정보처리"></td>
						<th style="width: 15%" align="center">등급(점수)</th>
						<td><input name="certificate_score" class="input_certificate_score" style="width: 100%" type="text" placeholder="ex) 기사, 산업기사, 1급, 765점"></td>
					</tr>

					<tr>
						<th align="center">취득일</th>
						<td><input name="certificate_date" class="input_certificate_date" style="width: 50%" type="date"></td>
						<th align="center">자격증 번호<br>(수험번호)
						</th>
						<td colspan="3"><input name="certificate_code" class="input_certificate_code" style="width: 100%" type="text" placeholder="최종 면접에 확인할 예정이니 정확히 입력 바랍니다."></td>
					</tr>
					<tr>
						<th align="center"><button type="button" class="btn btn-primary add_certificate">자격증 추가</button></th>

						<td colspan="3">

							<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
								<thead>
									<tr>

										<th style="background-color: #eeeeee; text-align: center;">시험명</th>
										<th style="background-color: #eeeeee; text-align: center;">등급(점수)</th>
										<th style="background-color: #eeeeee; text-align: center;">취득일</th>
										<th style="background-color: #eeeeee; text-align: center;">자격증번호(수험번호)</th>
										<th style="background-color: #eeeeee; text-align: center;">삭제</th>
									</tr>
								</thead>
								<tbody class="certificate_list">



								</tbody>
							</table>
						</td>


					</tr>



				</tbody>



			</table>

		</form>


		<!-- 인턴 교육 동아리 대외활동 정보 form -->
		<form method="post" id=activationForm>
			<div class="container">
				<strong>인턴, 교육, 동아리, 대외 활동 정보</strong>
			</div>

			<table border="1" class="table table-striped" height="100" style="text-align: center;">

				<colgroup>
					<col width="130px" />
					<col width="500px" />
					<col width="130px" />
					<col width="500px" />
				</colgroup>

				<tbody>

					<tr>
						<th align="center">활동명</th>
						<td><input name="activation_name" style="width: 100%" class="input_activation_name" type="text"></td>
						<th align="center">구분</th>
						<td><select class="select_activation_kind" style="width: 50%">

								<option value="인턴">인턴</option>
								<option value="교육">교육</option>
								<option value="동아리">동아리</option>
								<option value="대외활동">대외활동</option>
								<option value="기타">기타</option>
						</select></td>

					</tr>

					<tr>
						<th align="center">활동 내용</th>
						<td><input name="activation_content" style="width: 100%" class="input_activation_content" type="text"></td>
						<th style="width: 10%" align="center">역할</th>
						<td style="width: 30%"><input name="activation_role" class="input_activation_role" type="text"></td>
					</tr>


					<tr>
						<th align="center">활동 기간</th>
						<td><input name="activation_start_date" class="input_activation_start_date" type="month"> ~ <input name="activation_end_date" class="input_activation_end_date" type="month"></td>

						<th align="center">기관명</th>
						<td><input name="activation_organ" class="input_activation_organ" type="text"></td>
					</tr>
					<tr>
						<th align="center"><button type="button" class="btn btn-primary add_activation">내용 추가</button></th>

						<td colspan="4">

							<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
								<thead>
									<tr>

										<th style="background-color: #eeeeee; text-align: center;">활동명</th>
										<th style="background-color: #eeeeee; text-align: center;">기관명</th>
										<th style="background-color: #eeeeee; text-align: center;">구분</th>
										<th style="background-color: #eeeeee; text-align: center;">역할</th>
										<th style="background-color: #eeeeee; text-align: center;">활동기간</th>
										<th style="background-color: #eeeeee; text-align: center;">내용</th>
										<th style="background-color: #eeeeee; text-align: center;">삭제</th>
									</tr>
								</thead>
								<tbody class="activation_list">



								</tbody>
							</table>
						</td>


					</tr>



				</tbody>



			</table>

		</form>


		<!-- 경력 사항 -->
		<form method="post" id=careerForm>
			<div class="container">
				<strong>경력 사항(아르바이트 제외)</strong>
			</div>

			<table border="1" class="table table-striped" height="100" style="text-align: center;">

				<colgroup>
					<col width="130px" />
					<col width="500px" />
					<col width="130px" />
					<col width="500px" />
				</colgroup>

				<tbody>

					<tr>
						<th align="center">회사명</th>
						<td><input name="career_name" style="width: 50%" class="input_career_name" type="text"></td>
						<th align="center">계약형태</th>
						<td><select class="select_career_contract">
								<option value="정규직">정규직</option>
								<option value="계약직">계약직</option>
								<option value="기타">기타</option>
						</select></td>

					</tr>

					<tr>
						<th align="center">사업부</th>
						<td><input name="career_part" style="width: 50%" class="input_career_part" type="text"></td>
						<th align="center">직급</th>
						<td><input name="career_role" style="width: 50%" class="input_career_role" type="text"></td>

					</tr>
					<tr>
						<th align="center">근무 기간</th>
						<td><input name="career_start_date" class="input_career_start_date" type="month"> ~ <input name="career_end_date" class="input_career_end_date" type="month"></td>

						<th align="center">업무내용</th>
						<td><textarea name="career_content" class="input_career_content" cols="50%"></textarea></td>
					</tr>
					<tr>
						<th align="center"><button type="button" class="btn btn-primary add_career">경력 추가</button></th>

						<td colspan="4">

							<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
								<thead>
									<tr>

										<th style="background-color: #eeeeee; text-align: center;">회사명</th>
										<th style="background-color: #eeeeee; text-align: center;">계약</th>
										<th style="background-color: #eeeeee; text-align: center;">사업부</th>
										<th style="background-color: #eeeeee; text-align: center;">직급</th>
										<th style="background-color: #eeeeee; text-align: center;">근무기간</th>
										<th style="background-color: #eeeeee; text-align: center;">업무내용</th>
										<th style="background-color: #eeeeee; text-align: center;">삭제</th>
									</tr>
								</thead>
								<tbody class="career_list">



								</tbody>
							</table>
						</td>


					</tr>



				</tbody>



			</table>

		</form>


		<!-- 자기소개서 form -->
		<form>
			<div class="container">
				<strong>자기소개서</strong>
			</div>
			<table border="1" class="table table-striped">
				<tr>
					<th style="text-align: center; width: 15%">글자 수</th>
					<th>항목 1) 링크 컴퍼니에 3가지 인재상 중에 자신이 부합하다고 생각하는 인재상을 하나 선택하여<br> 그렇게 생각하는 이유를 본인의 가치관과 연계하여 교육사항, 경험 및 경력 등 구체적인 사례를 들어 기술하여 주십시오.(최대 700자)
					</th>

				</tr>
				<tr>
					
				
					<th style="text-align: center;">
					
						<span style="color:#aaa;" id="assay1_counter"></span>
					</th>
					<th><textarea class="input_assay1" rows="10" cols="100%" maxlength="700">${apdto.applicantAssay1 }</textarea></th>

				</tr>

			</table>

			<table border="1" class="table table-striped">
				<tr>
					<th style="text-align: center; width: 15%">글자 수</th>
					<th>항목 2) 다른 사람들과 함께 일을 했던 경험에 대해 설명하고, 목표를 달성하는 과정에서<br> 팀원들과 의견 차이를 보였던 사례와 갈등을 해결하기 위해 기울인 노력과 방법, 결과를 구체적으로 기술해 주십시오.(최대 700자)
					</th>

				</tr>
				<tr>
					<th style="text-align: center;">
					
						<span style="color:#aaa;" id="assay2_counter"></span>

					
					</th>
					<th><textarea class="input_assay2" rows="10" cols="100%" maxlength="700">${apdto.applicantAssay2 }</textarea></th>

				</tr>





			</table>

			<table border="1" class="table table-striped">
				<tr>
					<th style="text-align: center; width: 15%">글자 수</th>
					<th>항목 3) 지금까지 가장 큰 성취 및 실패에 대하여 기술해 주십시오. (최대 700자)</th>

				</tr>
				<tr>
					<th style="text-align: center;">
						<span style="color:#aaa;" id="assay3_counter"></span>
					</th>
					<th><textarea class="input_assay3" rows="10" cols="100%" maxlength="700">${apdto.applicantAssay3 }</textarea></th>

				</tr>





			</table>

		</form>




	
		<button style="margin: auto; width: 40%;" type="button" class="btn btn-primary save_temp">임시저장</button>
		
		 <c:if test="${apdto.finalApplyChecked == 0 }">
			<button style="margin: auto; width: 40%;" type="button" class="btn btn-danger finalApply" >최종제출</button>
	
		</c:if>
		
	
	
		<div class="row">

			<a href="/recruitnavigate/recruitnotice" class="btn btn-primary">목록</a>

		</div>


	</div>

	<footer class="my-3 text-center text-small">
		<%@ include file="../footer.jsp"%>
	</footer>


						<% Date now=  new Date(); 
						SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
						
						%>
					

							<fmt:parseDate var="now" value="<%= sf.format(now) %>" pattern="yyyy-MM-dd HH:mm:ss" />
							<fmt:parseDate var="recruitEndDateTime" value="${noticeInfo.recruitEndDateTime }" pattern="yyyy-MM-dd HH:mm:ss" />

							<%--  <c:if test= "${now > recruitEndDateTime}">
								마감시간이 지났습니다.
								
							</c:if>  --%>




	<script>

		//ready function 시작
		$(document).ready(function() {

			var now = '${now}';
			var recruitEndDateTime = '${recruitEndDateTime}'
				console.log(now);
			
			console.log(recruitEndDateTime);
			if(now > recruitEndDateTime ){
				alert("제출기한이 초과되었습니다. 메인화면으로 돌아갑니다.");
				window.location.href = "/";
				return false;
			}
			certificateList(); //시작되면 무조건 실행되는 메소드 리스트
			activationList();//시작되면 무조건 실행되는 메소드 리스트
			careerList();//시작되면 무조건 실행되는 메소드 리스트
			collegeList();//시작되면 무조건 실행되는 메소드 리스트
			
			//임시저장된 값으로 선택된다.
			$('.select_applyNo').val('${apdto.applyNo}').change();

			$(".select_veteran").val('${apdto.applicantVeteran}').change();
			$(".select_job_pro").val('${apdto.applicantJobProtect}').change();
			$(".select_applicant_millitary").val('${apdto.applicantMillitary}').change();
			
			$(".select_highschool_graduate").val('${apdto.applicantHighSchoolGraduateState}').change();
			$(".input_college_major2").prop("disabled", true);
			$(".select_college_double_majorKind").prop("disabled", true);
			$(".select_college_double_majorKind").val("단일전공");
			$('#assay1_counter').html("("+$('.input_assay1').val().length+" / <br>최대 700자)");
			$('#assay2_counter').html("("+$('.input_assay2').val().length+" / <br>최대 700자)");
			$('#assay3_counter').html("("+$('.input_assay3').val().length+" / <br>최대 700자)");
			
			
			//자기소개서 항목의 내용이 변할 때 발동되는 메소드
			$('.input_assay1').keyup(function (e){
			    var content = $(this).val();
			    $('#assay1_counter').html("("+content.length+" /<br> 최대 700자)");    //글자수 실시간 카운팅

			    if (content.length > 700){
			        alert("최대 700자까지 입력 가능합니다.");
			        $(this).val(content.substring(0, 700));
			        $('#assay1_counter').html("(700 / 최대 700자)");
			    }
			});

			
			//자기소개서 항목의 내용이 변할 때 발동되는 메소드
			$('.input_assay2').keyup(function (e){
			    var content = $(this).val();
			    $('#assay2_counter').html("("+content.length+" /<br> 최대 700자)");    //글자수 실시간 카운팅

			    if (content.length > 700){
			        alert("최대 700자까지 입력 가능합니다.");
			        $(this).val(content.substring(0, 700));
			        $('#assay2_counter').html("(700 / 최대 700자)");
			    }
			});
			
			//자기소개서 항목의 내용이 변할 때 발동되는 메소드
			$('.input_assay3').keyup(function (e){
			    var content = $(this).val();
			    $('#assay3_counter').html("("+content.length+" /<br> 최대 700자)");    //글자수 실시간 카운팅

			    if (content.length > 700){
			        alert("최대 700자까지 입력 가능합니다.");
			        $(this).val(content.substring(0, 700));
			        $('#assay3_counter').html("(700 / 최대 700자)");
			    }
			});

			
			//최종제출 버튼을 누르면 실행되는 메소드
			$(".finalApply").click(function(){
			
				
				var now = new Date;
				var yyyy= now.getFullYear();
				var MM = now.getMonth();
				var dd = now.getDate();
				var hh = now.getHours();
				var mm = now.getMinutes();
				var ss = now.getSeconds();
				console.log(yyyy);
				console.log(MM);
				console.log(dd);
				console.log(hh);
				console.log(mm);
				console.log(ss);
				nowFmt = yyyy+"-"+MM+"-"+dd+"- "+ hh+":"+mm + ":" + ss; 
				var recruitEndDateTime = '${recruitEndDateTime}'
					console.log(nowFmt);
				
				console.log(recruitEndDateTime);
				
				if(nowFmt > recruitEndDateTime ){
					alert("제출기한이 초과되었습니다. 메인화면으로 돌아갑니다.");
					window.location.href = "/";
					return false;
					
				}
				
				var applicantNo = '${apdto.applicantNo}';
				var applicantMillitary = $(".select_applicant_millitary option:selected").val();
				var applyNo = $(".select_applyNo option:selected").val();
				var applicantVeteran = $('.select_veteran option:selected').val();
				var applicantDisability = $(".select_disability option:selected").val();
				var applicantJobProtect = $('.select_job_pro option:selected').val();
				
				
				var applicantHighSchoolName = $(".input_highschool_name").val();
				var applicantHighSchoolGraduateYear = $(".input_highschool_year").val();
				var applicantHighSchoolGraduateState = $(".select_highschool_graduate option:selected").val();
				
				
				var applicantAssay1 = $('.input_assay1').val();
				var applicantAssay2 = $('.input_assay2').val();
				var applicantAssay3 = $('.input_assay3').val();
				console.log("보훈대상" + applicantVeteran);
				console.log("취업보호" + applicantJobProtect);

				console.log(applicantAssay1);
				console.log(applicantAssay2);
				console.log(applicantAssay3);
				

	        	if(applicantMillitary == ""){
	        		alert("병역사항을 입력해주세요.");
	        		return false;
	        		
	        	}else if(applyNo == ""){
	        		alert("직무를 선택해주세요.");
	        		return false;
	        		
	        	}else if(applicantVeteran == ""){
	        		alert("보훈 대상 여부를 체크해 주세요.");
	        		return false;
	        		
	        	
	        	}else if(applicantJobProtect ==""){
	        		alert("취업 보호 대상자 여부를 선택해주세요.");
	        		return false;
	        		
	        	}			
				
				
	        	var con_test = confirm("최종지원을 하시겠습니까?");
	        	

	        	if(con_test == true){
					//ajax 작성 12.03
					$.ajax({
						url : '/apply/finalApply.do',
						type : 'post',
						data : {
							"applicantNo" : applicantNo,
							"applicantMillitary" : applicantMillitary,
							"applyNo" : applyNo,
							"applicantVeteran" : applicantVeteran,
							"applicantDisability" : applicantDisability,
							"applicantJobProtect" : applicantJobProtect,
							

							"applicantHighSchoolName" : applicantHighSchoolName,
							"applicantHighSchoolGraduateYear" : applicantHighSchoolGraduateYear,
							"applicantHighSchoolGraduateState" : applicantHighSchoolGraduateState,
							
							
							"applicantAssay1" : applicantAssay1,
							"applicantAssay2" : applicantAssay2,
							"applicantAssay3" : applicantAssay3

						},
						success : function(result) {
							if (result == 'success') {
								alert("최종제출 되었습니다. 마감 시간 전까지 수정 및 삭제가 가능합니다.");
								window.location.href = "/apply/applyresult?applicantNo="+applicantNo;								
							} else {
								alert("최종제출 실패");
							}
						},
						error : function(result) {
							alert("문제가 발생하였습니다.");

						}
					}); //ajax종료
	        		
	        		
	        		
	        	}
	        	else{
	        	    return false;
	        	}

				
				
				
			});
			
			
			//임시저장 버튼을 누르면 실행되는 메소드
			$(".save_temp").click(function() {

				var applicantNo = '${apdto.applicantNo}';
				var applicantMillitary = $(".select_applicant_millitary option:selected").val();
				var applyNo = $(".select_applyNo option:selected").val();
				var applicantVeteran = $('.select_veteran option:selected').val();
				var applicantDisability = $(".select_disability option:selected").val();
				var applicantJobProtect = $('.select_job_pro option:selected').val();
				
				var applicantHighSchoolName = $(".input_highschool_name").val();
				var applicantHighSchoolGraduateYear = $(".input_highschool_year").val();
				var applicantHighSchoolGraduateState = $(".select_highschool_graduate option:selected").val();
				
				
				var applicantAssay1 = $('.input_assay1').val();
				var applicantAssay2 = $('.input_assay2').val();
				var applicantAssay3 = $('.input_assay3').val();
				console.log("보훈대상" + applicantVeteran);
				console.log("취업보호" + applicantJobProtect);

				console.log(applicantAssay1);
				console.log(applicantAssay2);
				console.log(applicantAssay3);

				alert("임시저장되었습니다. 수험번호" + applicantNo + "군필" + applicantMillitary + "지원번호 " + applyNo + "보훈여부" + applicantVeteran + "취업보호여부" + applicantJobProtect + "장애여부" + applicantDisability);
				alert("자소서1내용 = " + applicantAssay1 + "자소서2내용 = " + applicantAssay2 + "자소서3 = " + applicantAssay3);

				//ajax 작성 12.03
				$.ajax({
					url : '/apply/applicantSaveTemp.do',
					type : 'post',
					data : {
						"applicantNo" : applicantNo,
						"applicantMillitary" : applicantMillitary,
						"applyNo" : applyNo,
						"applicantVeteran" : applicantVeteran,
						"applicantDisability" : applicantDisability,
						"applicantJobProtect" : applicantJobProtect,
						
						"applicantHighSchoolName" : applicantHighSchoolName,
						"applicantHighSchoolGraduateYear" : applicantHighSchoolGraduateYear,
						"applicantHighSchoolGraduateState" : applicantHighSchoolGraduateState,
						
						"applicantAssay1" : applicantAssay1,
						"applicantAssay2" : applicantAssay2,
						"applicantAssay3" : applicantAssay3

					},
					success : function(result) {
						if (result == 'success') {
							alert("임시저장 되었습니다. 마감 기한 내에 반드시 최종제출 버튼은 눌러야 최종제출 됩니다.");
						} else {
							alert("임시저장 실패");
						}
					},
					error : function(result) {
						alert("문제가 발생하였습니다.");

					}
				});

			});

			$(".input_double_major").change(function() { //복수전공의 콤보박스가 변할 경우 발생하는 메소드
				var st = this.checked;
				if (st) {
					//alert("체크");
					$(".input_college_major2").val("");
					$(".input_college_major2").prop("disabled", true);
					$(".select_college_double_majorKind").val("단일전공");
					$(".select_college_double_majorKind").prop("disabled", true);

				} else {

					//alert("비체크");
					$(".input_college_major2").prop("disabled", false);
					$(".input_college_major2").css("background", "none");
					$(".select_college_double_majorKind").prop("disabled", false);

				}

			});

			//대학교 삭제 버튼 클릭시
			$(document).on("click", ".delete_college", function() {

				var collegeRegisterNo = $(this).attr("value")
				alert(collegeRegisterNo);
				$.ajax({
					url : '/college/collegeDelete.do',
					type : 'post',
					data : {
						"collegeRegisterNo" : collegeRegisterNo
					},
					success : function(result) {
						if (result == "success") {
							alert("삭제되었습니다.");
							collegeList();
						}
					},
					error : function(result) {
						alert("에러!");
					}
				});

			});

			function collegeList() { //대학교 리스트 구현 메소드
				var applicantNo = '${apdto.applicantNo}';

				$.ajax({
					url : '/college/collegeList.do',
					type : 'post',
					data : {

						"applicantNo" : applicantNo

					},
					success : function(data) {

						var outHtml = "";
						$(".college_list").append(outHtml);
						$.each(data, function(index, item) {

							console.log(data);
							outHtml += "<tr><td>" + data[index].collegeName + "</td>";
							outHtml += "<td>" + data[index].collegeLocation + "</td>";
							outHtml += "<td>" + data[index].collegeMajor1 + "</td>";
							outHtml += "<td>" + data[index].collegeMajor2 + "<br>" + data[index].collegeDoubleMajorKind + "</td>";
							outHtml += "<td>" + data[index].collegeScore + "/" + data[index].collegeScoreMax + "</td>";
							outHtml += "<td>" + data[index].collegeDegree + "</td>";
							outHtml += "<td>" + data[index].collegeEnter + "</td>";

							outHtml += "<td>" + data[index].collegeStartDate + " ~<br> " + data[index].collegeEndDate + "</td>";

							outHtml += "<td>" + data[index].collegeGraduate + "</td>";
							outHtml += "<td><button type = \"button\" value="+data[index].collegeRegisterNo+" class=\"btn-danger delete_college\">삭제</button></td></tr>";

						});

						$('.college_list').empty();
						$(".college_list").append(outHtml);

					},
					error : function(data) {
						alert("학교 갱신 오류");
					}
				});

			}

			$(".add_college").click(function() { //대학교 추가 버튼을 클릭하였을 때 발생하는 메소드
				var applicantNo = '${apdto.applicantNo}';

				var collegeName = $.trim($('.input_college_name').val()); //공백제거한 후 input class의 입력값을 받아온다.
				var collegeEnter = $.trim($('.select_college_enter option:selected').val());
				var collegeLocation = $.trim($('.select_college_location option:selected').val());
				var collegeDegree = $.trim($('.select_college_degree option:selected').val());
				var collegeMajor1 = $.trim($('.input_college_major1').val());
				var collegeMajor2 = $.trim($('.input_college_major2').val());
				var collegeDoubleMajorKind = $.trim($('.select_college_double_majorKind option:selected').val());
				var collegeScore = $.trim($('.input_college_score').val());
				var collegeScoreMax = $.trim($('.select_college_scoreMax option:selected').val());
				var collegeStartDate = $.trim($('.input_college_start_date').val());
				var collegeEndDate = $.trim($('.input_college_end_date').val());
				var collegeGraduate = $.trim($('.select_college_graduate option:selected').val());

				var scorePattern = /^\d*[.]\d{2}$/;
				//유효성 검사 추가
				if (collegeName == "") {
					alert("학교명을 입력해주세요.");
					return false;
				} else if (collegeMajor1 == "") {
					alert("주전공을 입력해주세요.");
					return false;
				} else if (collegeScore == "") {
					alert("학점을 입력해주세요.");
					return false;
				} else if (isNaN(collegeScore)) {
					alert("학점은 숫자만 입력해주세요.");
					return false;
				} else if (collegeScore > collegeScoreMax) {
					alert("만점보다 클 수 없습니다.");
					return false;
				} else if (!scorePattern.test(collegeScore)) {
					alert("소수점 둘쨰자리까지만 입력 가능합니다.");
					return false;
				} else if (collegeStartDate == "" || collegeEndDate == "") {
					alert("재학 기간을 입력해주세요.");
					return false;
				} else if (collegeStartDate > collegeEndDate) {
					alert("시작기간이 종료기간보다 큽니다.");
					return false;
				} else if (collegeDoubleMajorKind == "복수전공" || collegeDoubleMajorKind == "부전공") {
					if (collegeMajor2 == "") {
						alert("제2 전공을 입력해주세요.");
					}
				}

				$.ajax({
					url : '/college/addCollege.do',
					type : 'post',
					data : {

						"applicantNo" : applicantNo,
						"collegeName" : collegeName,
						"collegeLocation" : collegeLocation,
						"collegeEnter" : collegeEnter,
						"collegeDegree" : collegeDegree,
						"collegeMajor1" : collegeMajor1,
						"collegeMajor2" : collegeMajor2,
						"collegeDoubleMajorKind" : collegeDoubleMajorKind,
						"collegeScore" : collegeScore,
						"collegeScoreMax" : collegeScoreMax,
						"collegeStartDate" : collegeStartDate,
						"collegeEndDate" : collegeEndDate,
						"collegeGraduate" : collegeGraduate

					},
					success : function(result) {
						if (result == "success") {
							alert("추가되었습니다.");
							collegeList();
						} else {
							alert("삽입에 실패하였습니다.");
						}
					},
					error : function(result) {
						alert("에러 발생");
					}

				});

				return false;

			});

			//자격증 삭제 버튼 클릭시
			$(document).on("click", ".delete_certificate", function() {

				var certificateRegisterNo = $(this).attr("value")

				$.ajax({
					url : '/certificate/certificateDelete.do',
					type : 'post',
					data : {
						"certificateRegisterNo" : certificateRegisterNo
					},
					success : function(result) {
						if (result == "success") {
							alert("삭제되었습니다.");
							certificateList();
						}
					},
					error : function(result) {
						alert("에러!");
					}
				});

			});

			function certificateList() { //자격증 리스트 함수
				var applicantNo = '${apdto.applicantNo}';
				console.log(applicantNo);
				$.ajax({
					url : '/certificate/certificateList.do',
					type : 'post',
					data : {
						"applicantNo" : applicantNo

					},
					success : function(data) {
						var outHtml = "";
						$(".certificate_list").append(outHtml);
						$.each(data, function(index, item) {

							outHtml += "<tr><td>" + data[index].certificateName + "</td>";
							outHtml += "<td>" + data[index].certificateScore + "</td>";
							outHtml += "<td>" + data[index].certificateDate + "</td>";
							outHtml += "<td>" + data[index].certificateCode + "</td>";
							outHtml += "<td><button type = \"button\" value="+data[index].certificateRegisterNo+" class=\"btn-danger delete_certificate\">삭제</button></td></tr>";

						});

						$('.certificate_list').empty();
						$(".certificate_list").append(outHtml);

					},
					error : function(data) {
						alert("실패");
					}

				});

			}

			$(".add_certificate").click(
			//자격증 추가 버튼 클릭 시
			function() {
				
				var certificate_name = $.trim($('.input_certificate_name').val()); //공백제거한 후 input class의 입력값을 받아온다.
				var certificate_score = $.trim($('.input_certificate_score').val());
				var certificate_date = $.trim($('.input_certificate_date').val());
				var certificate_code = $.trim($('.input_certificate_code').val());

				var applicantNo = '${apdto.applicantNo}';

				var no = '${noticeInfo.recruitNo }';

				if (certificate_name == "") {
					alert("자격증명을 입력하세요.");
					return false;
				} else if (certificate_score == "") {
					alert("등급(점수)을 입력해주세요.");
					return false;
				} else if (certificate_date == "") {
					alert("취득일(응시일)을 입력해주세요.");
					return false;
				} else if (certificate_code == "") {
					alert("자격증 번호(수험번호)를 입력해주세요.");
					return false;
				}

				console.log(certificate_name + no);
				$.ajax({
					url : '/certificate/addCertificate.do',
					type : 'post',
					data : {
						"applicantNo" : applicantNo,
						"certificateName" : certificate_name,

						"certificateScore" : certificate_score,
						"certificateDate" : certificate_date,

						"certificateCode" : certificate_code

					},
					success : function(result) {
						if (result == "success") {

							$("#certificateForm")[0].reset();

							certificateList();
						} else {
							alert("삽입에러");
							console.log("삽입에러");
							return false;
						}

					},
					error : function() {
						alert("에러");
						return false;
					}

				});//add_certificate ajax종료

			}); // add_certificate 클릭 종료

			//활동 삭제버튼 클릭시
			$(document).on("click", ".delete_activation", function() {

				var activationRegisterNo = $(this).attr("value")
				alert(activationRegisterNo);
				$.ajax({
					url : '/activation/activationDelete.do',
					type : 'post',
					data : {
						"activationRegisterNo" : activationRegisterNo
					},
					success : function(result) {
						if (result == "success") {
							alert("삭제되었습니다.");
							activationList();
						}
					},
					error : function(result) {
						alert("에러!");
					}
				});

			});

			function activationList() { //활동내용 list
				var applicantNo = '${apdto.applicantNo}';
				$.ajax({
					url : '/activation/activationList.do',
					type : 'post',
					data : {
						"applicantNo" : applicantNo
					},
					success : function(data) {
						var outHtml = "";
						$(".activation_list").append(outHtml);
						$.each(data, function(index, item) {

							outHtml += "<tr><td>" + data[index].activationName + "</td>";
							outHtml += "<td>" + data[index].activationOrgan + "</td>";
							outHtml += "<td>" + data[index].activationKind + "</td>";
							outHtml += "<td>" + data[index].activationRole + "</td>";
							outHtml += "<td>" + data[index].activationStartDate + "<br>~<br>" + data[index].activationStartDate + "</td>";
							outHtml += "<td>" + data[index].activationContent + "</td>";

							outHtml += "<td><button type = \"button\" value="+data[index].activationRegisterNo+" class=\"btn-danger delete_activation\">삭제</button></td></tr>";

						});

						$('.activation_list').empty();
						$(".activation_list").append(outHtml);
					},
					error : function() {
						alert("에러");
					}
				});
			}

			$(".add_activation").click(function() { //활동추가 버튼 클릭시

				var activation_name = $.trim($(".input_activation_name").val()); //공백제거한 후 input class의 입력값을 받아온다.
				var activation_kind = $.trim($(".select_activation_kind option:selected").val()); //공백제거한 후 input class의 입력값을 받아온다.
				var activation_content = $.trim($(".input_activation_content").val()); //공백제거한 후 input class의 입력값을 받아온다.
				var activation_role = $.trim($(".input_activation_role").val()); //공백제거한 후 input class의 입력값을 받아온다.
				var activation_start_date = $.trim($(".input_activation_start_date").val()); //공백제거한 후 input class의 입력값을 받아온다.
				var activation_end_date = $.trim($(".input_activation_end_date").val()); //공백제거한 후 input class의 입력값을 받아온다.
				var activation_organ = $.trim($(".input_activation_organ").val());
				var applicantNo = '${apdto.applicantNo}';

				if (activation_name == "") {
					alert("활동명을 입력해주세요.");
					return false;

				} else if (activation_content == "") {
					alert("내용을 입력해주세요.");
					return false;
				} else if (activation_role == "") {
					alert("본인의 역할을 입력해주세요.");
					return false;
				} else if (activation_start_date == "" || activation_end_date == "") {
					alert("활동기간을 입력해주세요.");
					return false;
				} else if (activation_start_date > activation_end_date) {
					alert("시작기간이 종료기간보다 큽니다.");
					return false;
				} else if (activation_organ == "") {
					alert("기관명을 입력해주세요.");
					return false;
				}

				alert(activation_name + activation_kind + activation_content);
				$.ajax({

					url : '/activation/addActivation.do',
					type : 'post',
					data : {
						"applicantNo" : applicantNo,
						"activationName" : activation_name,
						"activationKind" : activation_kind,
						"activationContent" : activation_content,
						"activationRole" : activation_role,
						"activationStartDate" : activation_start_date,
						"activationEndDate" : activation_end_date,
						"activationOrgan" : activation_organ
					},
					success : function(result) {
						if (result == "success") {

							alert("추가성공");
							$("#activationForm")[0].reset();

							activationList();
						} else {
							alert("에러!");
							return false;
						}
					},
					error : function(result) {
						alert("활동내용 추가 에러");
						return false;
					}

				}); //ajax 종료

			}); //버튼 클릭 종료

			//경력 삭제버튼 클릭시
			$(document).on("click", ".delete_career", function() {

				var careerRegisterNo = $(this).attr("value")
				alert(careerRegisterNo);
				$.ajax({
					url : '/career/careerDelete.do',
					type : 'post',
					data : {
						"careerRegisterNo" : careerRegisterNo
					},
					success : function(result) {
						if (result == "success") {
							alert("삭제되었습니다.");
							careerList();
						}
					},
					error : function(result) {
						alert("에러!");
					}
				});

			});

			function careerList() { //경력내용 list
				var applicantNo = '${apdto.applicantNo}';
				$.ajax({
					url : '/career/careerList.do',
					type : 'post',
					data : {
						"applicantNo" : applicantNo
					},
					success : function(data) {
						var outHtml = "";
						$(".career_list").append(outHtml);
						$.each(data, function(index, item) {

							outHtml += "<tr><td>" + data[index].careerName + "</td>";
							outHtml += "<td>" + data[index].careerContract + "</td>";
							outHtml += "<td>" + data[index].careerPart + "</td>";
							outHtml += "<td>" + data[index].careerRole + "</td>";
							outHtml += "<td>" + data[index].careerStartDate + "<br>~<br>" + data[index].careerEndDate + "</td>";
							outHtml += "<td>" + data[index].careerContent + "</td>";

							outHtml += "<td><button type = \"button\" value="+data[index].careerRegisterNo+" class=\"btn-danger delete_career\">삭제</button></td></tr>";

						});

						$('.career_list').empty();
						$(".career_list").append(outHtml);
					},
					error : function() {
						alert("에러");
					}
				});
			}

			$(".add_career").click(function() { //경력 추가 버튼 클릭시

				var career_name = $.trim($(".input_career_name").val()); //공백제거한 후 input class의 입력값을 받아온다.
				var career_part = $.trim($(".input_career_part").val()); //공백제거한 후 input class의 입력값을 받아온다.
				var career_contract = $.trim($(".select_career_contract option:selected").val()); //공백제거한 후 select class의 입력값을 받아온다.

				var career_role = $.trim($(".input_career_role").val()); //공백제거한 후 input class의 입력값을 받아온다.
				var career_content = $.trim($(".input_career_content").val()); //공백제거한 후 input class의 입력값을 받아온다.

				var career_start_date = $.trim($(".input_career_start_date").val()); //공백제거한 후 input class의 입력값을 받아온다.
				var career_end_date = $.trim($(".input_career_end_date").val()); //공백제거한 후 input class의 입력값을 받아온다.

				var applicantNo = '${apdto.applicantNo}';

				if (career_name == "") {
					alert("회사명을 입력해주세요.");
					return false;
				} else if (career_role == "") {
					alert("직급을 입력해주세요.");
					return false;

				} else if (career_start_date == "" || career_end_date == "") {
					alert("재직 기간을 입력해주세요.");
					return false;
				} else if (career_start_date > career_end_date) {
					alert("시작기간이 종료기간보다 큽니다.");
					return false;
				} else if (career_content == "") {
					alert("업무 내용을 입력해주세요.");
				}

				$.ajax({

					url : '/career/addCareer.do',
					type : 'post',
					data : {
						"applicantNo" : applicantNo,
						"careerName" : career_name,
						"careerContract" : career_contract,
						"careerPart" : career_part,
						"careerRole" : career_role,
						"careerContent" : career_content,
						"careerStartDate" : career_start_date,
						"careerEndDate" : career_end_date,

					},
					success : function(result) {
						if (result == "success") {

							alert("추가성공");
							$("#careerForm")[0].reset();

							careerList();
						} else {
							alert("에러!");
							return false;
						}
					},
					error : function(result) {
						alert("경력내용 추가 에러");
						return false;
					}

				}); //ajax 종료

			}); //버튼 클릭 종료

		});//ready 종료
	</script>



</body>
</html>