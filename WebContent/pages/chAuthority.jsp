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


<!-- Main Stylesheet -->
<link href="${pageContext.request.contextPath}/pages/css/style.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/pages/css/defaultStyle.css" rel="stylesheet">
<!--Favicon-->
<link rel="icon" href="./images/favicon/32.png" type="image/x-icon" />
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="./images/favicon/144.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="./images/favicon/72.png">
<link rel="apple-touch-icon-precomposed" href="./images/favicon/54.png">
<!-- webFont -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<script src="${pageContext.request.contextPath}/pages/plugins/jQuery/jquery.min.js"></script>
</head>

<body>

	<!--subTopMenu-->
	<c:import url="headerTop.jsp" />
	<!-- mainMenu -->
	<c:import url="header.jsp" />
	<!-- 상단 메뉴 -->
		
	<div id="banner-area">
		<div class="parallax-overlay"></div>
		<!-- Subpage title start -->
		<div class="banner-title-content">
			<div class="text-center">
				<h2 style="color:black">권한 부여</h2>
			</div>
		</div>
		<!-- Subpage title end -->
	</div>
		<!-- Main container start -->
		<main align=center>

			<div class="conainter-fluid">
				<form action="/App/UserAuthAdd?subdomain=Justice" data-ajax="true"
					data-ajax-method="POST" data-ajax-success="Success" id="form0"
					method="post">
					<div class="card" style="overflow: visible">
						<div class="card-content">
							<div class="conainter-fluid">

								<div class="col s12">
									<div>권한을 할당 받을 계정 ID를 입력하세요.</div>
									<input id="id" name="id" placeholder="id 입력">
								</div>
								<br>

								<div class="col s12 mt3c">
									<div>추가하려는 권한의 범위를 선택하세요.</div>
									
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
						</div>
						<div class="card-action">
							<button class="waves-effect waves-light btn blue darken-4"
								type="submit">추가</button>
						</div>
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