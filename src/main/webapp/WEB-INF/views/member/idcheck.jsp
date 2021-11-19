
<script type="text/javascript">
	var idCheck = false;
	var pwCheck = false;
	var pwConfirmCheck = false;
	var nameCheck = false;
	var birth = false;

	$(document).ready(function() {

		$(".join_button").click(function(){
			//$안에 class명을 입력
			var idCheck = $('.input_memberId').val();
			var pwCheck = $('.input_memberPw').val();
			var pwConfirmCheck = $('.input_memberPwConfirm').val();
			var nameCheck = $('.input_memberName').val();
			var birth = $('.input_memberBirth').val();
		});
	});
</script>
