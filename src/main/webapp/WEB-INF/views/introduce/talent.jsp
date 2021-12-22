<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인재상 페이지</title>
</head>

		<style>
			div { text-align: center; }
		</style>

<body>
	<header><%@ include file="../header.jsp"%></header>



	<div>
		<img src="/resources/images/인재상.png" alt="인재상">
		
	</div>
	        <header class="py-5">
            <div class="container px-lg-5">
                <div class="p-4 p-lg-5 bg-light rounded-3 text-center">
                    <div class="m-4 m-lg-5">
                        <h1 class="display-5 fw-bold">강하고 상냥하고 아름다운 인재를 원합니다!</h1>
                        <p class="fs-4">
                        	<ul>
                        	<li style="text-align:left">뛰어난 분석력으로 언제나 포기하지 않고 도전하는 강한 마음</li> 
                        	<li style="text-align:left">팀워크를 소중히 하고, 서로와 소통하며 최고를 바라는 상냥함</li>
                        	<li style="text-align:left">자신을 소중히 하고 타인을 배려하는 아름다운 마음을 가진 인재를 바라보고 있습니다.</li>
                        	</ul>
                        </p>
                        <a class="btn btn-primary btn-lg" href="/recruitnavigate/recruitnotice">지원하기!</a>
                    </div>
                </div>
            </div>
        </header>

	<footer class="my-3 text-center text-small">
		<%@ include file="../footer.jsp"%>
	</footer>
</body>
</html>