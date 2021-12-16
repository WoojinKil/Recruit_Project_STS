<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${bbs.bbsTitle }</title>
</head>
<body>
	<header><%@ include file="../header.jsp"%></header>
	<div class="container">
	

	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<a class="navbar-brand" href="/bbs/bbsList">공지사항</a>
		</div>
	</nav>
	<div class="container">
		<div class="row">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">번호</th>
						<th style="background-color: #eeeeee; text-align: center;">공지사항 제목</th>
						
						<th style="background-color: #eeeeee; text-align: center;">작성일자</th>
						<th style="background-color: #eeeeee; text-align: center;">조회수</th>
					</tr>
				</thead>
				<tbody>
				
					
					<tr>
						<td>${bbs.bbsNo}</td>
						
						<td  style="text-align: left">${bbs.bbsTitle }</td>
						<td>${bbs.bbsWriteDate }</td>
						<td>${bbs.bbsHit}</td>
					</tr>
					<tr style="height:500px">
					
						<td colspan ="4"  style="text-align: left"><div><textarea style="resize:none;width:100%; border:none" rows="20" cols="100%" readonly="readonly">${bbs.bbsContent }</textarea></div></td>
					</tr>
					
					
				
				</tbody>
			</table>
			<a href="bbsList" class="btn btn-primary">목록</a>
			
			<c:if test= "${member.memberIsAdmin == 1}">
			
			<a href="write.jsp" class="btn btn-primary pull-right">글쓰기</a>
			</c:if>
			
		</div>
	</div>		
	
	
	
	
	</div>




	<footer><%@ include file="../footer.jsp"%></footer>
</body>
</html>