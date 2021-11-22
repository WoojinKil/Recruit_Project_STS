<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">

$(function(){
	  $("#certEmail").click(function(){
	      var data = {
	          email : $("#inputEmail").val(),
	      };

	      $.ajax({
	          url : "/certifiedEmail",
	          type : "post",
	          data : data,
	          dataType : "json",
	          success: [function(rs){
	              console.log(rs);
	          }], error : function(rs){           
	          }
	     });
	  });
	});

</script>

<div class="form-floating mb-3">
  <input class="form-control" id="inputEmail" type="email" />
  <label for="inputEmail" th:text="#{email}"></label>
  <button class="btn btn-secondary btn-block" th:text="#{certified_email}"
  id="certEmail">
  </button>
</div>
</body>
</html>