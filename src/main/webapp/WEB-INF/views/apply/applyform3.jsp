<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
							<td class="notice_no">${applicant.memberName}</td>
							<th align="center">생년월일</th>
							<td>${applicant.memberBirth}</td>
						</tr>
						<tr>
							<th align="center">공고명</th>
							<td colspan="3">${noticeInfo.recruitName}</td>
						</tr>
						<tr>
							<th align="center">유형</th>
							<td>${type.typeName }</td>
							<th align="center">사업부 선택</th>
							<td colspan="3">
								<div>
  									<select name="part_name" class="select_part">
  										<c:forEach items ="${ parts}" var="parts">
  											<option class="part_no" value="${ parts.partNo}">${ parts.partName}</option>
  											
  										
  										</c:forEach>
 										
  									</select>
								</div>
							<div id="output">
							</div>
							</td>
						</tr>
						<tr>
							<td colspan="4" height="200px">
								내용 or 이미지 <br>




								
								
								<c:if test="${member.memberIsAdmin != 1 }">
									<input type="button" class="btn btn-primary press_ex" value="지원하기">
								</c:if>
									
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


			//var source = $("select[name=userListname]").val();
			$(".press_ex").click(function(){
				
					
				 alert($(".select_part").val()); 
		
			});
			
			//사업부의 내용이 바뀔때마다 선택할수 있는 채용유형이 바뀌어야 한다.
			$('.select_part').on(
				"propertychange change keyup paste input", function(){

				console.log($(".select_part").val());	
				var partNo = $(".select_part").val()
				var data = {
						//recruitNo : recruitNo
						//partNo : 
				}
 			/* 	$.ajax({
					type : "post",
					url : "/apply/workView?partNo="+partNo,
					data : data,
					async : false,
					success : function(result){
						
					}
					 */
				
				
			
				}); 
				
				});
			
			
			
			
		});
			
			
	</script>



</body>
</html>