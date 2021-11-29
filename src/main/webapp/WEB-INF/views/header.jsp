<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>


<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<nav class="navbar navbar-expand  navbar-dark bg-primary">
	<div class="container">
		
		<div class="navbar-header">
	
			<a class="navbar-brand" href="/">HOME</a>
			<a class="navbar-brand" href="/">지원 안내</a>
			<c:if test = "${member ==null}">
				<a class="navbar-brand" href="/member/loginform">로그인</a>
			</c:if>
			<c:if test = "${member !=null}">
				<a class="navbar-brand" href="/">입사지원</a>
				<a class="navbar-brand" href="/member/logout.do">로그아웃</a>
				<a class="navbar-brand" href="/myApply/myApplyList">지원 내역</a>

				&nbsp;
				&nbsp;
				&nbsp;
				
				<span class="navbar-brand">${member.memberName}님 반갑습니다.</span>
				
			</c:if>
		</div>

			
			
	
	</div>
</nav>
