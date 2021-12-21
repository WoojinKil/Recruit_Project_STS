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

</style>
<body>
	<header><%@ include file="header.jsp"%></header>
	
        <section class="pt-4">
            <div class="container px-lg-5">
                <!-- Page Features-->
                <div class="row gx-lg-5">
            
                    
                    <div class="col-lg-6 col-xxl-4 mb-5">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0" >
                              
                                <h2 class="fs-4 fw-bold">채용공고</h2>
                                <p class="recruit_card">
                               		
                                
                                </p>
                            </div>
                        </div>
                    </div>
            		 <div class="col-lg-6 col-xxl-4 mb-5">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0" >
                              
                                <h2 class="fs-4 fw-bold">공지사항</h2>
                                <p class="bbs_card">
                                
                                </p>
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
						$.each(data,function(index, item){
							console.log(data[index].bbsNo);	
							
 							
							outHtml += "<li style='text-align: left'>";
							outHtml += "<a href=\"/bbs/bbsView?bbsNo="	+data[index].bbsNo+"\">" + data[index].bbsTitle + "</a>";
							outHtml += "</li>";

						});
						
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
						$.each(data,function(index, item){
							
							
								
							outHtml += "<li style=\"text-align: left\"><a href=\"/recruitnavigate/recruitnoticeview?recruitNo="
												+data[index].recruitNo+"\">" + data[index].recruitName + "</a></li>";

						});
						
						$('.recruit_card').empty();
						$('.recruit_card').append(outHtml);
						
						
					}
				});
				
			}
			
		});
	
	
	</script>
</html>
