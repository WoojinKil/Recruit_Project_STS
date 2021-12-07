<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="com.example.demo.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채용공고 상세</title>
</head>
<body>
	<header><%@ include file="../header.jsp"%></header>

	<nav class="navbar navbar-default">
		<div class="navbar-header">

			<a class="navbar-brand">채용공고 상세</a>
		</div>

	</nav>
	<div class="container">
		<form id="view_form" method="post">
			<div class="row">
				<table border="1" class="table table-striped" style="text-align: center;">

					<colgroup>
						<col width="130px" />
						<col width="500px" />
						<col width="130px" />
						<col width="500px" />
					</colgroup>

					<tbody>
						<tr>
							<th align="center">공고번호</th>
							<td class="notice_no">${NoticeView.recruitNo}</td>
							<th align="center">조회수</th>
							<td>${NoticeView.recruitHit}</td>
						</tr>
						<tr>
							<th align="center">제목</th>
							<td colspan="3">${NoticeView.recruitName}</td>
						</tr>
						<tr>
							<th align="center">유형</th>
							<td>${NoticeView.typeNo }</td>
							<th align="center">게시 일자</th>
							<td>${NoticeView.recruitWriteDate }</td>
						</tr>
						<tr>
							<td colspan="4" height="200px">내용 or 이미지 <br> <img src="/resources/images/${NoticeView.recruitFileName}" style="width: 80%"><br>

								<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
									<thead>
										<tr>
											<th style="background-color: #eeeeee; text-align: center;">사업부</th>
											<th style="background-color: #eeeeee; text-align: center;">대상</th>
											<th style="background-color: #eeeeee; text-align: center;">직무</th>
											<th style="background-color: #eeeeee; text-align: center;">상세 내용</th>

										</tr>
									</thead>
									<tbody>

										<c:forEach var="adtos" items="${adtos }" varStatus="status">
											<tr>
												<td>${parts[status.index].partName }</td>
												<td>${odtos[status.index].objectName }</td>
												<td>${wdtos[status.index].workName }</td>
												<td style="text-align: left;">${adtos.applyContent}</td>
											</tr>


										</c:forEach>

									</tbody>
								</table> <%
 Date now = new Date();
 SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
 %> 
 
 									<fmt:parseDate var="now" value="<%=sf.format(now)%>" pattern="yyyy-MM-dd HH:mm:ss" />
  									<fmt:parseDate var="recruitEndDateTime" value="${NoticeView.recruitEndDateTime }" pattern="yyyy-MM-dd HH:mm:ss" />
  									<fmt:parseDate var="recruitStartDateTime" value="${NoticeView.recruitStartDateTime }" pattern="yyyy-MM-dd HH:mm:ss" />
  									 <c:if test="${member.memberIsAdmin != 1 && now < recruitEndDateTime && now >= recruitStartDateTime}">
  									 
										<input type="button" class="btn btn-primary goto_apply_button" value="지원하기" />
											<c:if test="${applyCheckedResult == 1 }">
												<div style="color: 'red'" class="apply_warn">지원 중인 이력서가 존재합니다.</div>
											</c:if>
					
									</c:if>
	
							</td>
						</tr>
					</tbody>
				</table>
				<a href="/recruitnavigate/recruitnotice" class="btn btn-primary">목록</a>

			</div>



		</form>

	</div>
	<footer class="my-3 text-center text-small">
		<%@ include file="../footer.jsp"%>
	</footer>
	<%
	String id = request.getParameter("NoticeView");
	%>


	<script>
		$(document).ready(function() {

			var no = $('.notice_no').text();

			console.log(no);
			$(".goto_apply_button").click(function() {

				if ('${member.memberId}' == '') {

					alert("로그인 하세요");

					window.location.href = "/member/loginform";
				} else {

					var applyCheckedResult = '${applyCheckedResult}';
					$("#view_form").attr("action", "/apply/applyForm?recruitNo=" + no);
					// $("#view_form").submit();

					if (applyCheckedResult == 1) {
						var con_test = confirm("이미 지원한 이력서가 존재합니다. 나의 지원 이력으로 돌아갑니다.");
						if (con_test == true) {
							window.location.href = "/myApply/myApplyList";
						} else if (con_test == false) {
							return false;
						}

					} else {
						var con_test = confirm("새 이력서를 작성합니다.");
						if (con_test == true) {
							window.location.href = "/apply/applyForm?recruitNo=" + no;
						} else if (con_test == false) {
							return false;
						}

					}

				}

			});
		});
	</script>

</body>
</html>