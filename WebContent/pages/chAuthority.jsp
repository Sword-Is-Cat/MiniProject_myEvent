<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="utf-8">
<title>My Event :: 행사와 함께 하는 모든 순간</title>

<!-- mobile responsive meta -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- ** Plugins Needed for the Project ** -->
<!-- Bootstrap -->
<link rel="stylesheet"
	href="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/pages/plugins/bootstrap/bootstrap.min.css">
<!-- FontAwesome -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/pages/plugins/fontawesome/font-awesome.min.css">
<!-- Animation -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/pages/plugins/animate.css">
<!-- Prettyphoto -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/pages/plugins/prettyPhoto.css">
<!-- Owl Carousel -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/pages/plugins/owl/owl.carousel.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/pages/plugins/owl/owl.theme.css">
<!-- Flexslider -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/pages/plugins/flex-slider/flexslider.css">
<!-- Flexslider -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/pages/plugins/cd-hero/cd-hero.css">
<!-- Style Swicther -->
<link id="style-switch" href="${pageContext.request.contextPath}/pages/css/presets/preset3.css" media="screen"
	rel="stylesheet" type="text/css">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
<!--[if lt IE 9]>
      <script src="plugins/html5shiv.js"></script>
      <script src="plugins/respond.min.js"></script>
    <![endif]-->

<!-- Main Stylesheet -->
<link href="${pageContext.request.contextPath}/pages/css/style.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/pages/css/defaultStyle.css" rel="stylesheet">
<!--Favicon-->
<link rel="icon" href="${pageContext.request.contextPath}/pages/images/favicon/32.png" type="image/x-icon" />
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="${pageContext.request.contextPath}/pages/images/favicon/144.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="${pageContext.request.contextPath}/pages/images/favicon/72.png">
<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/pages/images/favicon/54.png">
<!-- webFont -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<script src="${pageContext.request.contextPath}/pages/plugins/jQuery/jquery.min.js"></script>

<script>
$(function(){
	//아이디 중복체크
	$('#idChk').click(function(){
		if($('#userId').val() == null || $('#userId').val() == ""){
			alert('아이디를 입력해주세요');
			return false;
		}
		
		let params = "key=idChk&userId="+$('#userId').val();
		
		$.ajax({
			dataType : "text",
			url : "${pageContext.request.contextPath}/front?"+params,
			success : function(result){
				console.log('in jxax');
				if(result==1){
					$("#submit").removeAttr("disabled");
					$("#submit").html("등록");
					alert("등록 가능한 아이디입니다.");					
				}else{
					alert("없는 사용자입니다.");
				}
			}
		});
	});
	
	$('#userId').on("change", function(){
		$("#submit").attr("disabled", true);
		$("#submit").html("아이디 체크를 해주세요");
	});
});
</script>


</head>
<style>
#chAuthority{
	color: #5c3fbf;
	font-weight: bold;
	margin-left: 15%;
	border-bottom: 5px solid #5c3fbf;
}
#chAuthorityList{
	font-weight: bold;
	margin-left: 10%;
}
hr{
	margin-left: 15%;
	width:70%
}
</style>
<body>

	<!--subTopMenu-->
	<c:import url="headerTop.jsp" />
	<!-- mainMenu -->
	<c:import url="header.jsp" />
	<!-- 상단 메뉴 -->
	<br>
		<h3 id="tab">
		<a id="chAuthority" href="${pageContext.request.contextPath}/pages/chAuthority.jsp?chNo=${param.chNo}">권한 할당</a>
		<a id="chAuthorityList" href="${pageContext.request.contextPath}/front?key=selectChAuthority&chNo=${param.chNo}">권한 사용자 목록</a>
		</h3>
		<br>	
	
		<!-- Main container start -->
		<main align=center>

			<div class="conainter-fluid">
				<form action="${pageContext.request.contextPath}/front?key=empower" data-ajax="true"
					data-ajax-method="POST" data-ajax-success="Success" id="form0"
					method="post">
					<div class="card" style="overflow: visible">
						<div class="card-content">
							<div class="conainter-fluid">
								<br><br>
								<div class="col s12">
									<div><h4>권한을 할당 받을 계정 ID를 입력하세요.</h4></div><br>
									<input id="userId" name="userId" placeholder="id 입력">
									<button id="idChk" type="button">중복 확인</button>
								</div>
								<br>

								<div class="col s12 mt3c">
									<div><h4>추가하려는 권한의 범위를 선택하세요.</h4></div>
									
										<div class="card-content">
											<input type="radio" id="newProject" name="setAuth"
												value="Project"> <label class="black-text"
												for="newProject">채널 관리 : 채널과 채널에 신규 개설되는 행사의 관리 권한을
												공유.</label>
										</div>
										<div class="card-content">
											<input type="radio" id="existingProject" name="setAuth"
												value="Project_Manager"> <label class="black-text"
												for="existingProject">행사 관리 : 특정 행사의 관리 권한을 공유.</label>
										</div>
									
								</div>
								<div class="col s12">
									<input id="projectid" name="projectid"
										placeholder="행사코드 입력(행사페이지 도메인의 마지막 숫자)" hidden="">
								</div>

							</div>
							<input type="hidden" name="chNo" value="${param.chNo}">
						</div>
						<br>
						<div class="card-action">
							<button id="submit" class="project-btn btn btn-primary"
								type="submit" disabled>ID확인을 해주세요</button>
						</div>
						<br><br>
					</div>
				</form>		
			</div>

			<script src="/Scripts/jquery.unobtrusive-ajax.js"></script>
			<!-- 수정 -->

			<script>
				$('input:radio').click(function(e) {
					//true => 새로운 프로젝트에 권한 할당
					//false => 기존 프로젝트에 권한 할당
					var radio = e.target.value;
					if (radio == "Project") {
						$('#projectid').attr('hidden', 'hidden');
					} else {
						$('#projectid').removeAttr('hidden');
					}

				});
				function Success(Result) {
					var title = "";
					var type = "";
					if (Result.success) {
						title = "성공";
						type = "success";
					} else {
						title = "실패";
						type = "error";
					}
					swal({
						title : title,
						text : Result.msg,
						type : type
					}, function() {
						location.reload();
					});
				}

				//
				function deluser(userId, auth) {
					//userId => 선택된 유저 아이디
					//auth => 선택된 유저의 권한
					swal(
							{
								title : "삭제하시겠습니까?",
								type : "warning",
								showCancelButton : true,
								confirmButtonColor : "#DD6B55",
								confirmButtonText : "확인",
								cancelButtonText : "취소",
								closeOnConfirm : false
							},
							function() {
								$
										.ajax({
											type : "POST",
											url : "/App/UserAuthDelete",
											data : {
												__RequestVerificationToken : $(
														"input[name='__RequestVerificationToken']")
														.val(),
												subdomain : "Justice",
												auth : auth,
												userId : userId
											},
											success : function(result) {
												if (result.success) {
													swal({
														title : "삭제되었습니다!",
														type : "success"
													}, function() {
														location.reload();
													});
												}
											}
										});
							});
				}
			</script>

			<!-- END MAIN -->

		</main>

		<!--/ container end -->
		
		<!--/ Main container end -->

		

	

	<!-- Body inner end -->

<!-- footer -->
<c:import url="footer.jsp"></c:import>

</body>

</html>