<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header><%@ include file="../header.jsp"%></header>

	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<a class="navbar-brand">입사 지원</a>
		</div>

	</nav>

	<div class="container">
		<form id="apply_form" action="apply" method="post">
			<div class="container">
			인적사항
			</div>
			<table border="1" class="table table-striped"
				style="text-align: center;">

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
						<td>${applicant.memberBirth}</td>
					</tr>
					<tr>
						<th align="center">공고명</th>
						<td colspan="3"><a class="notice_no">${noticeInfo.recruitNo }</a>/${noticeInfo.recruitName}</td>
					</tr>
					<tr>
						<th align="center">유형</th>
						<td>${type.typeName }</td>
						<th align="center">사업부 선택</th>
						<td colspan="3">
							<div>


								<select class="select_part" style="width: 100%">

									<c:forEach var="adtos" items="${adtos }" varStatus="status">
										<option value="${adtos.applyNo }">${parts[status.index].partName }
											- ${wdtos[status.index].workName } -
											${odtos[status.index].objectName }</option>

									</c:forEach>

								</select>
							</div>

						</td>
					</tr>
					<tr>
						<th align="center">학력사항</th>

					</tr>

					<tr>
						<th align="center">고등학교 졸업 정보 입력</th>
						<td colspan="3">고등학교 검색</td>
					</tr>





				</tbody>



			</table>
			<div class="container">
			자격증, 어학 정보
			</div>
			<table border="1" class="table table-striped"
				style="text-align: center;">

				<colgroup>
					<col width="130px" />
					<col width="500px" />
					<col width="130px" />
					<col width="500px" />
				</colgroup>


				<tbody>
				
					<tr>
						<th align="center">자격증 이름</th>
						<td><input name="certificate_name" class="input_certificate_name" style="width: 100%" type="text" placeholder="ex) 정보처리기사-> 정보처리"></td>
						<th align="center">등급(점수)</th>
						<td><input name="certificate_score" class="input_certificate_score" style="width: 100%" type="text" placeholder="ex) 기사, 산업기사, 1급, 765점"></td>
					</tr>

					<tr>
						<th align="center">취득일</th>
						<td><input name="certificate_date" class="input_certificate_date" style="width: 50%"  type="date"></td>
						<th align="center">자격증 번호(수험번호)</th>
						<td colspan="3">
							

								<input name="certificate_code" class="input_certificate_code" style="width: 100%" type="text" placeholder="최종 면접에 확인할 예정이니 정확히 입력 바랍니다.">

						</td>
					</tr>
					<tr>
						<th align="center"><button class="btn btn-primary add_certificate">자격증 추가</button></th>

						<td colspan="3">
						
									<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						
						<th style="background-color: #eeeeee; text-align: center;">자격증명</th>
						<th style="background-color: #eeeeee; text-align: center;">등급(점수)</th>
						<th style="background-color: #eeeeee; text-align: center;">취득일</th>
						<th style="background-color: #eeeeee; text-align: center;">자격증 번호(수험번호)</th>
						<th style="background-color: #eeeeee; text-align: center;">삭제/수정</th>
					</tr>
				</thead>
				<tbody>
				
					
					<tr>
						
						<td>#</td>
						<td>#</td>
						<td>#</td>
						<td>#</td>

						<td>
							<button class="btn-danger">삭제</button>
							<button class="btn-secondary btn_update">수정</button>
						</td>
					
					</tr>
					
					
			

				
				</tbody>
			</table>
						</td>					
					
					
					</tr>
					
					

				</tbody>



			</table>
			<div class="row">

				<a href="/recruitnavigate/recruitnotice" class="btn btn-primary">목록</a>

			</div>



		</form>

	</div>

	<footer class="my-3 text-center text-small">
		<%@ include file="../footer.jsp"%>
	</footer>


	<script>

		$(document).ready(function(){

			//var recruitNo = $(".notice_no").text();
			//var source = $("select[name=userListname]").val();
			
			$(".add_certificate").click(function(){
				var certificate_name = $('.input_certificate_name').val();	
				var no = '${noticeInfo.recruitNo }';
				alert(certificate_name+no);	
				console.log(certificate_name+ no);
/* 				$.ajax({
					url: '/apply/addCertificate',
					type: 'post',
					data: {
						certificate_name : certificate_name,
					}
					sucess: function(data){
						console.log("성공");
					}
				
					
					
				}); */
			});
			

			
			
			 
			
		});
			
			
	</script>



</body>
</html>