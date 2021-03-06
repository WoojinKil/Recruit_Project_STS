
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale"="1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<title>나의 지원 내역</title>
</head>
<script type="text/javascript">
	

	 window.history.forward();
	 function noBack(){window.history.forward();}
</script>
<body>
	<header><%@ include file="../header.jsp"%></header>
	

	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<a class="navbar-brand" href="/myApply/myApplyList">나의 지원 내역</a>
		</div>

	</nav>
	<div class="container">
		<div class="row">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						
						<th style="background-color: #eeeeee; text-align: center;">채용유형</th>
						<th style="background-color: #eeeeee; text-align: center;">공고명</th>
						<th style="background-color: #eeeeee; text-align: center;">마감시간</th>
						<th style="background-color: #eeeeee; text-align: center;">지원시간</th>
						
						<th style="background-color: #eeeeee; text-align: center;">진행상태</th>
						<th style="background-color: #eeeeee; text-align: center;">삭제/수정</th>
					</tr>
				</thead>
				<tbody>
				
					<c:forEach items ="${rdtos}" var="rdtos" varStatus="status">
					<tr>
						
						<td>${rdtos.typeName }</td>
						<td style="text-align: left">${rdtos.recruitName }
						</td>
						
						<td>
						<% Date now=  new Date(); 
						SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
						
						%>
					

							<fmt:parseDate var="now" value="<%= sf.format(now) %>" pattern="yyyy-MM-dd HH:mm:ss" />
							<fmt:parseDate var="recruitEndDateTime" value="${rdtos.recruitEndDateTime }" pattern="yyyy-MM-dd HH:mm:ss" />

							 <c:if test= "${now > recruitEndDateTime}">
								마감시간이 지났습니다.
								
							</c:if> 
							 <c:if test= "${now < recruitEndDateTime}">
								${rdtos.recruitEndDateTime}
								
							</c:if> 
						</td>
						<td>
						

							<c:if test="${adtos[status.index].finalApplyChecked ==1 }">${adtos[status.index].applyDate}</c:if>								
					
 							
						</td>
						<td>
						
							 <c:if test= "${now > recruitEndDateTime}">
								<c:if test="${adtos[status.index].finalApplyChecked ==0 }">미제출</c:if>
								<c:if test="${adtos[status.index].finalApplyChecked ==1 }">심사 중</c:if>								
								
								
							</c:if> 
							
							<c:if test= "${now < recruitEndDateTime}">
								<c:if test="${adtos[status.index].finalApplyChecked ==0 }">미제출</c:if>
								<c:if test="${adtos[status.index].finalApplyChecked ==1 }">제출완료<br>
								지원번호 :${adtos[status.index].applicantNo }
								</c:if>
							 
							</c:if> 
							
 							
						</td>
						<td>
						
							<c:if test= "${now < recruitEndDateTime}">
								<button onclick = "deleteApply(${adtos[status.index].recruitNo})" class="btn-danger">삭제</button>
								<button onclick= "updateApplyForm(${adtos[status.index].recruitNo})"class="btn-secondary btn_update">수정</button>
							</c:if> 
							 <c:if test= "${now > recruitEndDateTime}">
								
								수정/삭제 불가
								
							</c:if> 
						</td>
					</tr>
					
					
					</c:forEach>

				
				</tbody>
			</table>
			

			
		</div>
	</div>
	<footer class="my-3 text-center text-small">
		<%@ include file="../footer.jsp"%>
	</footer>
	<script>


function deleteApply(recruitNo){
    var answer=confirm("지원중인 이력서를 삭제하시겠습니까?"+recruitNo);
    
        if(answer){
        	
        	$.ajax({
        		url : '/myApply/myDeleteApply.do',
				type : 'post',
				data :{
					"recruitNo" : recruitNo
				},
				success : function(result){
					if(result == "success"){

						alert("삭제되었습니다.");
						window.location.href="/myApply/myApplyList";
					}else{
						alert("에러발생!!");
					}
				},
				error : function(result){
					alert("에러발생");
				}
				
				
				
				
        	});
        	//location.href="/myApply/myDeleteApply?recruitNo="+recruitNo;
        }  
    }

function updateApplyForm(recruitNo){
	window.location.href="/apply/updateApplyForm?recruitNo="+recruitNo;
	
}
	</script>
	
	
</body>
</html>