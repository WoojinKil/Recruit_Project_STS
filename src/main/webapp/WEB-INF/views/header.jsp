<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>

<head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    
         <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script> 
 </head> 
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<nav class="navbar navbar-expand  navbar-dark bg-primary">

	<div class="container">

		<div class="navbar-header">
			
			<a class="navbar-brand" href="/">HOME</a>
			
	

			<div class="btn-group">
				<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">회사소개</button>
				<div class="dropdown-menu">
					
					<a class="dropdown-item" href="/talent">인재상</a> 
					<a class="dropdown-item" href="/process">인사제도</a> 
				
				</div>
			</div>
			
			
			
			<div class="btn-group">
				<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">지원 안내</button>
				<div class="dropdown-menu">
					
					<a class="dropdown-item" href="/recruitnavigate/recruitnotice">입사지원</a> 
					<a class="dropdown-item" href="/bbs/bbsList">공지사항</a> 
				
				</div>
			</div>
			

			<!-- 만약 세션이 존재하면, 로그인이 되어있으면 나타나는 태그 -->
			<c:if test="${member != null }">
				
				
				
				<c:if test="${member.memberIsAdmin == 0 }">
					<div class="btn-group">
						<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">my apply</button>
					<div class="dropdown-menu">
					
						<a class="dropdown-item" href="/myApply/myApplyList">나의 지원 이력</a> 
						<button class="dropdown-item btn-secondary logout_btn">로그아웃</button> 
						<button class="dropdown-item btn-danger withdraw_btn" onclick="/member/withdrawform">회원탈퇴</button> 
						
				
					</div>
					</div>
				
					
				</c:if>
				<c:if test="${member.memberIsAdmin == 1 }">
					<div class="btn-group">
						<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">admin</button>
					<div class="dropdown-menu">
					
						<a class="dropdown-item" href="http://localhost:8081/pandora3/bo">관리자페이지</a> 
						<button class="dropdown-item btn logout_btn" >로그아웃</button>	
				
					</div>
					</div>
				
				
				
				</c:if>
				


				&nbsp;
				&nbsp;
				&nbsp;
				
				<span class="navbar-brand">${member.memberName}님 반갑습니다.</span>

			</c:if>




			<!-- 세션이 없으면 로그인 버튼이 나온다. -->

		<c:if test="${member == null }">
			<a class="navbar-brand" href="/member/loginform">로그인</a>
			<a class="navbar-brand" href="/member/joinform">회원가입</a>
		</c:if>
		







		</div>




	</div>
</nav>
<script type="text/javascript">
	var now = new Date;
	
	 window.history.forward();
	 function noBack(){window.history.forward();}
	 
	 
	$(document).ready(function(){
		recruitNoticeList();
		var now = new Date;
		var nowyyyy= now.getFullYear();
		var nowMM = now.getMonth()+1;
		var nowdd = now.getDate();
		var nowhh = now.getHours();
		var nowmm = now.getMinutes();
		var nowss = now.getSeconds();
	
		
		nowFmt = nowyyyy+"-"+nowMM+"-"+nowdd+" "+ nowhh+":"+nowmm + ":" + nowss; 
		function deleteApplicantNotFinalApply(recruitNo){
			$.ajax({
				url : '/applicant/deleteApplicantNotFinalApply.do',
				type : 'post',
				data : {"recruitNo" : recruitNo},
				success : function(result) {

				},
				error : function(result){
					alert("지원자 삭제 중 오류 발행");
				}
			
			});	
			
		}
		function recruitNoticeList(){
			
			$.ajax({
				url : '/recruitnavigate/recruitNotice.do',
				type : 'post',
				success : function(data){
					$.each(data, function(index, item) {

						//마감시간이 지난 공고인 경우 미제출한 지원자 전부 삭제
						if(nowFmt > data[index].recruitEndDateTime){
							console.log(data[index].recruitNo+"번 공고 마감");
							deleteApplicantNotFinalApply( data[index].recruitNo);
						}
						
					});
					
				},
				error : function(data){
					alert("에러");
				}
			});
		}
		
		$(".logout_btn").click(function(){
			
		
			
			var con_test = confirm("임시저장 하지 않은 정보들은 지워질 수 있습니다. 로그아웃 하시겠습니까?");
			if(con_test == true){
				location.href = document.referrer;
			    
				window.location.href = "/member/logout";
				 
				alert("로그아웃 되었습니다. 메인화면으로 돌아갑니다.");
				
				$( 'body' ).attr( 'onload', 'noBack();' );
			     $( 'body' ).attr( 'onpageshow', 'if(event.persisted) noBack();' );
			     $( 'body' ).attr( 'onunload', '' );
			}else{
				return false;
			}
			

		}) ;
		$(".withdraw_btn").click(function(){
			
			var con_test = confirm("회원탈퇴를 하시게 되면 진행 중인 전형에 불합격 되며 채용 도중인 경우 불이익을 받을 수 있습니다.");
			if(con_test == true){
				alert("탈퇴 페이지 화면으로 돌아갑니다.");
				window.location.href = "/member/withdrawform";
			}else{
				return false;
			}
			
		});
	});
</script>
