<!doctype html>
<html lang="en">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<head>
<title>Welcome to Linkruit</title>

</head>
<style>
body {
        height: 100vh;
        background-image: url('/resources/images/bg.png');
        background-repeat : no-repeat;
        background-size : cover;
      }
li{
	text-overflow:elipsis;
	white-space:nowrap;
	overflow : hidden;
	max-width: 100%;

}
</style>
<body>
	<header><%@ include file="header.jsp"%></header>
	
	
	
	
	
	
	
        <section class="pt-4">
         <div class="container px-lg-5">
                <div class="p-4 p-lg-5 bg-light rounded-3 text-center">
                    <div class="m-4 m-lg-5">
                        <h1 class="display-5 fw-bold">Welcome To Linkruit</h1>
                        <p class="fs-4">
				
                        	본 사이트는 링크 컴패니의 전용 채용 사이트인 '링크루트'입니다.
                        	
                        </p>
                        
                    </div>
                </div>
            </div>
        </section>
        <section class="pt-4">
            <div class="container px-lg-5">
            
            
                <!-- Page Features-->
                <div class="row gx-lg-10">
            
                    
                    <div class="col-lg-6 col-xxl-4 mb-5">
                        <div class="card bg-light border-0 h-100">
                        
                            <div class="card-body p-4 p-lg-5 pt-0 pt-lg-0" >
                            
                              
                                <h2 class="fs-4 text-center fw-bold">채용공고</h2>
                                
                                   <p class="recruit_card">
                               		
                                
                                </p>
                               <span><a href="/recruitnavigate/recruitnotice">더보기</a></span>
								
                            </div>
                            
                        </div>
                        
                    </div>
            		
            		 <div class="col-lg-6 col-xxl-4 mb-5">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body p-4 p-lg-5 pt-0 pt-lg-0" >
                              
                                <h2 class="fs-4 text-center fw-bold">공지사항</h2>
                                <p class="bbs_card">
                                
                                </p>
                                <span><a href="/bbs/bbsList">더보기</a></span>
								
                            </div>
                        </div> 
                    </div>
                    
                </div>
                
                
                
                
            </div>
        </section>
        
        
        
	<footer class="my-3 text-center text-small">
		<%@ include file="footer.jsp"%>
	</footer>

</body>
	<script type="text/javascript">
	
		$(document).ready(function(){
			
			recruitNoticeList();
			bbsList();


			//공지사항 리스트를 뿌리는 메소드
			function bbsList(){
				
				$.ajax({
					url : '/bbs/bbsList.do',
					type : 'post',
					success : function(data){
						
						var outHtml = "";
						
						$(".bbs_card").append(outHtml);
						console.log(data);
						if(data.length>4){
							for(var i=0; i<4; i++){

								outHtml += "<li style='text-align: left'>";
								outHtml += "<a href=\"/bbs/bbsView?bbsNo="+data[i].bbsNo+"\">" + data[i].bbsTitle + "</a>";
								outHtml += "</li>";
								
							};
								
						}else{
							for(var i=0; i<data.length; i++){

								outHtml += "<li style='text-align: left'>";
								outHtml += "<a href=\"/bbs/bbsView?bbsNo="+data[i].bbsNo+"\">" + data[i].bbsTitle + "</a>";
								outHtml += "</li>";
								
							};
						}
												
						
						$('.bbs_card').empty();
						$('.bbs_card').append(outHtml);
						
						
					}
				});
				
			}
			//채용공고 리스트를 뿌리는 메소드
			function recruitNoticeList(){
				
				$.ajax({
					url : '/recruitnavigate/recruitNotice.do',
					type : 'post',
					success : function(data){
						
						var outHtml = "";
						$(".recruit_card").append(outHtml);
						for(var i=0; i<4; i++){
							
							
								
							outHtml += "<li style=\"text-align: left\"><a href=\"/recruitnavigate/recruitnoticeview?recruitNo="
												+data[i].recruitNo+"\">" + data[i].recruitName + "</a></li>";

						}
						
						$('.recruit_card').empty();
						$('.recruit_card').append(outHtml);
						
						
					}
				});
				
			}
			
		});
	
	
	</script>
</html>
