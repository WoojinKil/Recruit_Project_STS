
		$(document).ready(function() {

			certificateList(); //시작되면 무조건 실행되는 메소드 리스트
			activationList();//시작되면 무조건 실행되는 메소드 리스트
			careerList();//시작되면 무조건 실행되는 메소드 리스트

			//자격증 삭제 버튼 클릭시
			$(document).on("click", ".delete_certificate", function() {

				var certificateRegisterNo = $(this).attr("value")
				alert(certificateRegisterNo);
				$.ajax({
					url : '/certificate/certificateDelete.do',
					type : 'post',
					data : {
						"certificateRegisterNo" : certificateRegisterNo
					},
					success : function(result) {
						if (result == "success") {
							alert("삭제되었습니다.");
							certificateList();
						}
					},
					error : function(result) {
						alert("에러!");
					}
				});

			});

			function certificateList() { //자격증 리스트 함수
				var applicantNo = '${apdto.applicantNo}';
				console.log(applicantNo);
				$.ajax({
					url : '/certificate/certificateList.do',
					type : 'post',
					data : {
						"applicantNo" : applicantNo

					},
					success : function(data) {
						var outHtml = "";
						$(".certificate_list").append(outHtml);
						$.each(data, function(index, item) {

							outHtml += "<tr><td>" + data[index].certificateName + "</td>";
							outHtml += "<td>" + data[index].certificateScore + "</td>";
							outHtml += "<td>" + data[index].certificateDate + "</td>";
							outHtml += "<td>" + data[index].certificateCode + "</td>";
							outHtml += "<td><button type = \"button\" value="+data[index].certificateRegisterNo+" class=\"btn-danger delete_certificate\">삭제</button></td></tr>";

						});

						$('.certificate_list').empty();
						$(".certificate_list").append(outHtml);

					},
					error : function(data) {
						alert("실패");
					}

				});

			}

			$(".add_certificate").click(
			//자격증 추가 버튼 클릭 시
			function() {
				var radioVal = $('input[name="select_veteran"]:checked').val();

				alert(radioVal);
				var certificate_name = $.trim($('.input_certificate_name').val());
				var certificate_score = $.trim($('.input_certificate_score').val());
				var certificate_date = $.trim($('.input_certificate_date').val());
				var certificate_code = $.trim($('.input_certificate_code').val());

				var applicantNo = '${apdto.applicantNo}';

				var no = '${noticeInfo.recruitNo }';

				alert(certificate_name + certificate_score + certificate_date + certificate_code + applicantNo);
				if (certificate_name == "") {
					alert("자격증명을 입력하세요.");
					return false;
				} else {
					if (certificate_score == "") {
						alert("등급(점수)을 입력해주세요.");
						return false;
					} else {
						if (certificate_date == "") {
							alert("취득일(응시일)을 입력해주세요.");
							return false;
						} else {
							if (certificate_code == "") {
								alert("자격증 번호(수험번호)를 입력해주세요.");
								return false;
							}
						}
					}

				}

				console.log(certificate_name + no);
				$.ajax({
					url : '/certificate/addCertificate.do',
					type : 'post',
					data : {
						"applicantNo" : applicantNo,
						"certificateName" : certificate_name,

						"certificateScore" : certificate_score,
						"certificateDate" : certificate_date,

						"certificateCode" : certificate_code

					},
					success : function(result) {
						if (result == 1) {

							$("#certificateForm")[0].reset();

							certificateList();
						} else {
							alert("삽입에러");
							console.log("삽입에러");
							return false;
						}

					},
					error : function() {
						alert("에러");
						return false;
					}

				});//add_certificate ajax종료

			}); // add_certificate 클릭 종료

			//활동 삭제버튼 클릭시
			$(document).on("click", ".delete_activation", function() {

				var activationRegisterNo = $(this).attr("value")
				alert(activationRegisterNo);
				$.ajax({
					url : '/activation/activationDelete.do',
					type : 'post',
					data : {
						"activationRegisterNo" : activationRegisterNo
					},
					success : function(result) {
						if (result == "success") {
							alert("삭제되었습니다.");
							activationList();
						}
					},
					error : function(result) {
						alert("에러!");
					}
				});

			});

			function activationList() { //활동내용 list
				var applicantNo = '${apdto.applicantNo}';
				$.ajax({
					url : '/activation/activationList.do',
					type : 'post',
					data : {
						"applicantNo" : applicantNo
					},
					success : function(data) {
						var outHtml = "";
						$(".activation_list").append(outHtml);
						$.each(data, function(index, item) {

							outHtml += "<tr><td>" + data[index].activationName + "</td>";
							outHtml += "<td>" + data[index].activationOrgan + "</td>";
							outHtml += "<td>" + data[index].activationKind + "</td>";
							outHtml += "<td>" + data[index].activationRole + "</td>";
							outHtml += "<td>" + data[index].activationStartDate + "<br>~<br>" + data[index].activationStartDate + "</td>";
							outHtml += "<td>" + data[index].activationContent + "</td>";

							outHtml += "<td><button type = \"button\" value="+data[index].activationRegisterNo+" class=\"btn-danger delete_activation\">삭제</button></td></tr>";

						});

						$('.activation_list').empty();
						$(".activation_list").append(outHtml);
					},
					error : function() {
						alert("에러");
					}
				});
			}

			$(".add_activation").click(function() { //활동추가 버튼 클릭시

				var activation_name = $.trim($(".input_activation_name").val()); //공백제거한 후 input class의 입력값을 받아온다.
				var activation_kind = $.trim($("#activation_kind option:selected").val()); //공백제거한 후 input class의 입력값을 받아온다.
				var activation_content = $.trim($(".input_activation_content").val()); //공백제거한 후 input class의 입력값을 받아온다.
				var activation_role = $.trim($(".input_activation_role").val()); //공백제거한 후 input class의 입력값을 받아온다.
				var activation_start_date = $.trim($(".input_activation_start_date").val()); //공백제거한 후 input class의 입력값을 받아온다.
				var activation_end_date = $.trim($(".input_activation_end_date").val()); //공백제거한 후 input class의 입력값을 받아온다.
				var activation_organ = $.trim($(".input_activation_organ").val());
				var applicantNo = '${apdto.applicantNo}';

				if (activation_name == "") {
					alert("활동명을 입력해주세요.");
					return false;

				} else {
					if (activation_content == "") {
						alert("내용을 입력해주세요.");
						return false;
					} else {
						if (activation_role == "") {
							alert("본인의 역할을 입력해주세요.");
							return false;
						} else {
							if (activation_start_date == "" || activation_end_date == "") {
								alert("활동기간을 입력해주세요.");
								return false;

							} else {
								if (activation_start_date > activation_end_date) {

									alert("시작기간이 종료기간보다 큽니다.");
									return false;
								} else {
									if (activation_organ == "") {
										alert("기관명을 입력해주세요.");
										return false;
									}
								}
							}
						}
					}
				}

				alert(activation_name + activation_kind + activation_content);
				$.ajax({

					url : '/activation/addActivation.do',
					type : 'post',
					data : {
						"applicantNo" : applicantNo,
						"activationName" : activation_name,
						"activationKind" : activation_kind,
						"activationContent" : activation_content,
						"activationRole" : activation_role,
						"activationStartDate" : activation_start_date,
						"activationEndDate" : activation_end_date,
						"activationOrgan" : activation_organ
					},
					success : function(result) {
						if (result == 1) {

							alert("추가성공");
							$("#activationForm")[0].reset();

							activationList();
						} else {
							alert("에러!");
							return false;
						}
					},
					error : function(result) {
						alert("활동내용 추가 에러");
						return false;
					}

				}); //ajax 종료

			}); //버튼 클릭 종료

			//경력 삭제버튼 클릭시
			$(document).on("click", ".delete_career", function() {

				var careerRegisterNo = $(this).attr("value")
				alert(careerRegisterNo);
				$.ajax({
					url : '/career/careerDelete.do',
					type : 'post',
					data : {
						"careerRegisterNo" : careerRegisterNo
					},
					success : function(result) {
						if (result == "success") {
							alert("삭제되었습니다.");
							careerList();
						}
					},
					error : function(result) {
						alert("에러!");
					}
				});

			});

			function careerList() { //경력내용 list
				var applicantNo = '${apdto.applicantNo}';
				$.ajax({
					url : '/career/careerList.do',
					type : 'post',
					data : {
						"applicantNo" : applicantNo
					},
					success : function(data) {
						var outHtml = "";
						$(".career_list").append(outHtml);
						$.each(data, function(index, item) {

							outHtml += "<tr><td>" + data[index].careerName + "</td>";
							outHtml += "<td>" + data[index].careerRole + "</td>";
							outHtml += "<td>" + data[index].careerStartDate + "<br>~<br>" + data[index].careerEndDate + "</td>";
							outHtml += "<td>" + data[index].careerContent + "</td>";

							outHtml += "<td><button type = \"button\" value="+data[index].careerRegisterNo+" class=\"btn-danger delete_career\">삭제</button></td></tr>";

						});

						$('.career_list').empty();
						$(".career_list").append(outHtml);
					},
					error : function() {
						alert("에러");
					}
				});
			}

			$(".add_career").click(function() { //경력 추가 버튼 클릭시

				var career_name = $.trim($(".input_career_name").val()); //공백제거한 후 input class의 입력값을 받아온다.
				var career_role = $.trim($(".input_career_role").val()); //공백제거한 후 input class의 입력값을 받아온다.
				var career_content = $.trim($(".input_career_content").val()); //공백제거한 후 input class의 입력값을 받아온다.

				var career_start_date = $.trim($(".input_career_start_date").val()); //공백제거한 후 input class의 입력값을 받아온다.
				var career_end_date = $.trim($(".input_career_end_date").val()); //공백제거한 후 input class의 입력값을 받아온다.

				var applicantNo = '${apdto.applicantNo}';

				alert(career_name

				+ career_content + career_start_date);
				$.ajax({

					url : '/career/addCareer.do',
					type : 'post',
					data : {
						"applicantNo" : applicantNo,
						"careerName" : career_name,
						"careerRole" : career_role,
						"careerContent" : career_content,
						"careerStartDate" : career_start_date,
						"careerEndDate" : career_end_date,

					},
					success : function(result) {
						if (result == 1) {

							alert("추가성공");
							$("#careerForm")[0].reset();

							careerList();
						} else {
							alert("에러!");
							return false;
						}
					},
					error : function(result) {
						alert("경력내용 추가 에러");
						return false;
					}

				}); //ajax 종료

			}); //버튼 클릭 종료

		});//ready 종료
		
