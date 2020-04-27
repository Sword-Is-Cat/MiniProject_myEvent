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

<body>


	<div id="banner-area">
		<img src="images/banner/banner1.jpg" alt="" />
		<div class="parallax-overlay"></div>
		<!-- Subpage title start -->
		<div class="banner-title-content">
			<div class="text-center">
				<h2>행사 정보 변경</h2>
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb justify-content-center">
						<li class="breadcrumb-item"><a href="#"> 홈으로 </a></li>
						<li class="breadcrumb-item text-white" aria-current="page">
							행사 정보 변경</li>
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
						<form id="contact-form" action="/front?key=createEvent"
							method="post" role="form">
							<div class="row">
								<div class="col-md-8">
									<div class="form-group">
										<label> 행사명 </label> <input class="form-control"
											name="eventName" id="name" placeholder="" type="text"
											value="evName param" required>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label> 개설채널 </label> <input class="form-control"
											name="chName" id="channel" type="text" value="chName param"
											required readonly> <input name="chNo" id='chNo'
											type='hidden' value="chNo param">
									</div>
								</div>
							</div>
							<%List<Category> cateList = CategoryService.selectAll();%>
							<div class="row">
								<div class="col-md-8">
									<div class="form-group">
										<label> 카테고리 </label> <select class="form-control"
											name="cateNo" id="cateNo" required>
											<option>선택</option>
											<c:forEach items='<%=cateList%>'
												var='listCate'>
												<c:choose>
													<c:when test="${listCate.cateNo==param.cate.cateNo}">
														<option value="${listCate.cateNo}" selected>${listCate.cateName}</option>
													</c:when>
													<c:otherwise>
														<option value="${listCate.cateNo}">${listCate.cateName}</option>
													</c:otherwise>

												</c:choose>
											</c:forEach>
										</select>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label> 정원 </label> <input class="form-control"
											name="evBookMax" id="evBookMax" placeholder="" type="text"
											value="evBookMax param" required>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label> 행사 설명 </label>
								<textarea class="form-control" name="evDescription" id="message"
									placeholder="" rows="10" value="evDescription param" required></textarea>
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
								<div class="col-md-4">
									<div class="form-group">
										<label for="postalcode">주소</label> <input type="text"
											id="postcode" name="postalCode" placeholder="우편번호"> <input
											type="button" id="userAddrBtn" value="우편번호 찾기">
									</div>
								</div>
								<div class="col-md-3.5">
									<div class="form-group">
										<label> 도로명 주소</label><input
											class="col-lg-4 col-md-4 col-sm-8 col-xs-8" id="roadAddress"
											name="roadAddress" placeholder="도로명주소" type="text"> <input
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
											type="text" value="evPhone param" required>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label> 이메일 </label> <input class="form-control"
											name="evEmail" id="channel" type="text"
											placeholder="abcde@abcde.com" value="evEmail param" required>
									</div>
								</div>
							</div>

							<div class="text-right">
								<br>
								<button class="btn btn-primary solid blank" type="submit">
									행사 정보 변경</button>
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
								<li>이미지는 jpg, png, gif 파일만 등록할 수 있습니다 <br> 새 이미지를 첨부하지
									않으면 기존 이미지가 유지됩니다
								</li>
								<br>
								<li>채널 설명은 한글 250자까지 입력</li>
								<br>
								<li>접수, 행사일정 미입력 시 기존 일정이 유지됩니다</li>
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


</body>
</html>