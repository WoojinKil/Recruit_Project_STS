<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
<body>
	<header><%@ include file="../header.jsp"%></header>
	
<%-- 	<%
		String memberId = null;
		if (session.getAttribute("memberId") != null) {
			memberId = (String) session.getAttribute("memberId");
		}
	%> --%>
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
						
						<th style="background-color: #eeeeee; text-align: center;">진행상태</th>
						<th style="background-color: #eeeeee; text-align: center;">삭제/수정</th>
					</tr>
				</thead>
				<tbody>
				
					<c:forEach items ="${rdtos}" var="rdtos" varStatus="status">
					<tr>
						
						<td>${tdtos[status.index].typeName }</td>
						<td>${rdtos.recruitName } ==== ${adtos[status.index].recruitNo}
						</td>
						


						<td>
 							<c:if test="${adtos[status.index].finalApplyChecked ==0 }">미제출</c:if>
							<c:if test="${adtos[status.index].finalApplyChecked ==1 }">제출완료</c:if> 
						</td>
						<td>
							<button onclick = "deleteApply(${adtos[status.index].recruitNo})" class="btn-danger">삭제</button>
							<button onclick= "updateApplyForm(${adtos[status.index].recruitNo})"class="btn-secondary btn_update">수정</button>
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
/* 	
$(document).ready(function(){
			
			$('.btn_delete').on("click",function(){
				/* var no = '${adtos[0].recruitNo}'; 
				var no = $(this).attr('id').value;
				console.log(no);
	        	var con_test = confirm("지원중인 이력서를 삭제하시겠습니까?");
	        	if(con_test == true){
	        		window.location.href = "/myApply/deleteApply?recruitNo="+no;
	        	}
	        	else if(con_test == false){
	        	    return false;
	        	}
			});
			
		});
	
*/
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