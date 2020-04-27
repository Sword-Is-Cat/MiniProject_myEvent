<%@page import="kosta.mvc.service.CategoryService"%>
<%@page import="kosta.mvc.vo.Category"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>BizCraft - Responsive Html5 Template</title>

<!-- mobile responsive meta -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- ** Plugins Needed for the Project ** -->
<!-- Bootstrap -->
<link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css">
<!-- FontAwesome -->
<link rel="stylesheet" href="plugins/fontawesome/font-awesome.min.css">
<!-- Animation -->
<link rel="stylesheet" href="plugins/animate.css">
<!-- Prettyphoto -->
<link rel="stylesheet" href="plugins/prettyPhoto.css">
<!-- Owl Carousel -->
<link rel="stylesheet" href="plugins/owl/owl.carousel.css">
<link rel="stylesheet" href="plugins/owl/owl.theme.css">
<!-- Flexslider -->
<link rel="stylesheet" href="plugins/flex-slider/flexslider.css">
<!-- Flexslider -->
<link rel="stylesheet" href="plugins/cd-hero/cd-hero.css">
<!-- Style Swicther -->
<link id="style-switch" href="css/presets/preset3.css" media="screen"
	rel="stylesheet" type="text/css">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
<!--[if lt IE 9]>
      <script src="plugins/html5shiv.js"></script>
      <script src="plugins/respond.min.js"></script>
    <![endif]-->

<!-- Main Stylesheet -->
<link href="css/style.css" rel="stylesheet">

<!--Favicon-->
<link rel="icon" href="img/favicon/favicon-32x32.png"
	type="image/x-icon" />
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="img/favicon/favicon-144x144.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="img/favicon/favicon-72x72.png">
<link rel="apple-touch-icon-precomposed"
	href="img/favicon/favicon-54x54.png">

</head>

<script>
	$(function() {
		$("#userAddrBtn")
				.click(
						//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
						function() {
							new daum.Postcode(
									{
										oncomplete : function(data) {
											// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

											// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
											// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
											var roadAddr = data.roadAddress; // 도로명 주소 변수
											var extraRoadAddr = ''; // 참고 항목 변수

											// 법정동명이 있을 경우 추가한다. (법정리는 제외)
											// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
											if (data.bname !== ''
													&& /[동|로|가]$/g
															.test(data.bname)) {
												extraRoadAddr += data.bname;
											}
											// 건물명이 있고, 공동주택일 경우 추가한다.
											if (data.buildingName !== ''
													&& data.apartment === 'Y') {
												extraRoadAddr += (extraRoadAddr !== '' ? ', '
														+ data.buildingName
														: data.buildingName);
											}
											// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
											if (extraRoadAddr !== '') {
												extraRoadAddr = ' ('
														+ extraRoadAddr + ')';
											}

											// 우편번호와 주소 정보를 해당 필드에 넣는다.
											document.getElementById('postcode').value = data.zonecode;
											document
													.getElementById("roadAddress").value = roadAddr;
											document
													.getElementById("jibunAddress").value = data.jibunAddress;

											// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
											if (roadAddr !== '') {
												document
														.getElementById("extraAddress").value = extraRoadAddr;
											} else {
												document
														.getElementById("extraAddress").value = '';
											}

											var guideTextBox = document
													.getElementById("guide");
											// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
											if (data.autoRoadAddress) {
												var expRoadAddr = data.autoRoadAddress
														+ extraRoadAddr;
												guideTextBox.innerHTML = '(예상 도로명 주소 : '
														+ expRoadAddr + ')';
												guideTextBox.style.display = 'block';

											} else if (data.autoJibunAddress) {
												var expJibunAddr = data.autoJibunAddress;
												guideTextBox.innerHTML = '(예상 지번 주소 : '
														+ expJibunAddr + ')';
												guideTextBox.style.display = 'block';
											} else {
												guideTextBox.innerHTML = '';
												guideTextBox.style.display = 'none';
											}
										}
									}).open();
						});
	});
</script>

<body>


	<div id="banner-area">
		<img src="images/banner/banner1.jpg" alt="" />
		<div class="parallax-overlay"></div>
		<!-- Subpage title start -->
		<div class="banner-title-content">
			<div class="text-center">
				<h2>행사 개설</h2>
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb justify-content-center">
						<li class="breadcrumb-item"><a href="#"> 홈으로 </a></li>
						<li class="breadcrumb-item text-white" aria-current="page">
							행사 개설</li>
					</ol>
				</nav>
			</div>
		</div>
		<!-- Subpage title end -->
	</div>
	<!-- Banner area end -->


	<div class="body-inner">



		<!-- Main container start -->
		<section id="main-container">
			<div class="container">

				<div class="gap-40"></div>

				<div class="row">
					<div class="col-md-7">
						<form id="contact-form" action="../front?key=createEvent"
							method="post" role="form">
							<div class="row">
								<div class="col-md-8">
									<div class="form-group">
										<label> 행사명 </label> <input class="form-control"
											name="eventName" id="name" placeholder="" type="text"
											required>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label> 개설채널 </label> <input class="form-control"
											name="chName" id="channel" type="text"
											value="${param.chName}" required readonly> <input
											name="chNo" id='chNo' type='hidden' value="${param.chNo}">
									</div>
								</div>
							</div>
							<%
								List<Category> cateList = CategoryService.selectAll();
							%>
							<div class="row">
								<div class="col-md-8">
									<div class="form-group">
										<label> 카테고리 </label> <select class="form-control"
											name="cateNo" id="cateNo" required>
											<option>선택</option>
											<c:forEach items='<%=cateList%>' var='listCate'>
												<option value="${listCate.cateNo}">${listCate.cateName}</option>
											</c:forEach>
										</select>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label> 정원 </label> <input class="form-control"
											name="evBookMax" id="evBookMax" type="text"
											placeholder="evBookMax param" required>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label> 행사 설명 </label>
								<textarea class="form-control" name="description" id="message"
									placeholder="" rows="10" required></textarea>
							</div>

							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label> 행사 이미지 </label> <input type="file" name="evImage"
											id="file" accept="image/gif, image/jpeg, image/png">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label> 행사 상세 이미지 </label> <input type="file"
											name="evImageDetail" id="file"
											accept="image/gif, image/jpeg, image/png">
									</div>
								</div>
							</div>

							<h3>행사 접수 기간</h3>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label> 접수 시작 </label> <input class="form-control"
											name="evBookStart" id="evBookStartTime" type="datetime-local">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label> 접수 종료 </label> <input class="form-control"
											name="evBookEnd" id="evBookEndTime" type="datetime-local">
									</div>
								</div>
							</div>
							<h3>행사 진행 기간</h3>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label> 행사 시작 </label> <input class="form-control"
											name="evStart" id="evBookStartTime" type="datetime-local"
											required>
									</div>
								</div>

								<div class="col-md-6">
									<div class="form-group">
										<label> 행사 종료 </label> <input class="form-control"
											name="evEnd" id="evBookEndTime" type="datetime-local"
											required>
									</div>
								</div>
							</div>
							<div class="row">

								<div class="col-md-3.5">
									<div class="form-group">
										<label for="postalcode">주소</label><br> <input type="text"
											id="postcode" name="postalCode" placeholder="우편번호"> <input
											type="button" id="userAddrBtn" value="우편번호 찾기"><br>
										<input class="col-lg-4 col-md-4 col-sm-8 col-xs-8"
											id="roadAddress" name="reaodAddress" placeholder="도로명주소"
											type="text"> <input
											class="col-lg-4 col-md-4 col-sm-8 col-xs-8" id="jibunAddress"
											name="jibunAddress" placeholder="지번주소" type="text"> <span
											id="guide" style="color: #999; display: none"></span> <input
											class="col-lg-6 col-md-6 col-sm-10 col-xs-10"
											id="detailAddress" name="detailAddress" placeholder="상세주소"
											type="text"> <input
											class="col-lg-4 col-md-4 col-sm-8 col-xs-8" id="extraAddress"
											name="extraAddress" type="text"><br> <br>
									</div>
								</div>
							</div>
							<h3>행사 담당자 연락처</h3>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label> 휴대폰 </label> <input class="form-control"
											name="evPhone" id="name" placeholder="010-0000-0000"
											type="text" required>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label> 이메일 </label> <input class="form-control"
											name="evEmail" id="channel" type="text"
											placeholder="abcde@abcde.com" required>
									</div>
								</div>
							</div>

							<div class="text-right">
								<br>
								<button class="btn btn-primary solid blank" type="submit">
									행사 개설 신청</button>
							</div>
						</form>
					</div>

					<div class="col-md-5">
						<div class="contact-info">
							<h2>
								<br>주의 사항<br> <br>
							</h2>
							<p>
							<ul>
								<li>행사명은 한글 15자까지 입력</li>
								<br>
								<li>이미지는 *** Mb 까지 업로드</li>
								<br>
								<li>상세 이미지는 *** Mb 까지 업로드</li>
								<br>
								<li>이미지는 jpg, png, gif 파일만 등록할 수 있습니다</li>
								<br>
								<li>채널 설명은 한글 250자까지 입력</li>
								<br>
								<li>접수기간 미입력 시 게시일 ~ 행사전일 로 설정됩니다</li>
								<br>
								<li>할말이 더 있던가요</li>
							</ul>
							</p>

						</div>
					</div>
				</div>
			</div>
			<!--/ container end -->
		</section>
		<!--/ Main container end -->




	</div>
	<!-- Body inner end -->

	<!-- jQuery -->
	<script src="plugins/jQuery/jquery.min.js"></script>
	<!-- Bootstrap JS -->
	<script src="plugins/bootstrap/bootstrap.min.js"></script>
	<!-- Style Switcher -->
	<script type="text/javascript" src="plugins/style-switcher.js"></script>
	<!-- Owl Carousel -->
	<script type="text/javascript" src="plugins/owl/owl.carousel.js"></script>
	<!-- PrettyPhoto -->
	<script type="text/javascript" src="plugins/jquery.prettyPhoto.js"></script>
	<!-- Bxslider -->
	<script type="text/javascript"
		src="plugins/flex-slider/jquery.flexslider.js"></script>
	<!-- CD Hero slider -->
	<script type="text/javascript" src="plugins/cd-hero/cd-hero.js"></script>
	<!-- Isotope -->
	<script type="text/javascript" src="plugins/isotope.js"></script>
	<script type="text/javascript" src="plugins/ini.isotope.js"></script>
	<!-- Wow Animation -->
	<script type="text/javascript" src="plugins/wow.min.js"></script>
	<!-- Eeasing -->
	<script type="text/javascript" src="plugins/jquery.easing.1.3.js"></script>
	<!-- Counter -->
	<script type="text/javascript" src="plugins/jquery.counterup.min.js"></script>
	<!-- Waypoints -->
	<script type="text/javascript" src="plugins/waypoints.min.js"></script>
	<!-- google map -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU&libraries=places"></script>
	<script src="plugins/google-map/gmap.js"></script>

	<!-- Main Script -->
	<script src="js/script.js"></script>

</body>

</html>