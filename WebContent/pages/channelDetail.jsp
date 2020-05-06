<%@page import="java.util.List"%>
<%@page import="kosta.mvc.vo.User"%>
<%@page import="kosta.mvc.vo.Channel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>My Event :: 행사와 함께하는 모든 순간</title>

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
<style>
	hr{
		margin-left: 15%;
		width:70%;
		border: solid 2px #5c3fbf;
	}
 	img.chImg{
		width: 593px;
		height: 400px;
	} 
</style>
</head>

<body>
	
	<div id="banner-area">
		<img src="images/banner/banner1.jpg" alt="" />
		<div class="parallax-overlay"></div>
		<!-- Subpage title start -->
		<div class="banner-title-content">
			<div class="text-center">
				<h2>${channel.chName}</h2>
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb justify-content-center">
						<li class="breadcrumb-item"><a href="#"> 홈으로 </a></li>
						<li class="breadcrumb-item text-white" aria-current="page">
							${channel.chNo}</li>
					</ol>
				</nav>
			</div>
		</div>
		<!-- Subpage title end -->
	</div>
	<!-- Banner area end -->


	<div class="body-inner">
		<!-- Portfolio item start -->
		<section id="portfolio-item">
			<div class="container">

				<!-- Portfolio item row start -->
				<div class="row">
					<!-- Portfolio item slider start -->
					<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
						<div class="portfolio-slider">
							<div class="flexportfolio flexslider">
								<img class="chImg" src="channelImg/${requestScope.channel.chImg}" alt="">
							</div>
						</div>
					</div>
					<!-- Portfolio item slider end -->

					<!-- sidebar start -->
					<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
						<div class="sidebar">
							<div class="portfolio-desc">
								<h3 class="widget-title">${channel.chName}</h3>
								<p>${channel.chDescription }</p>
								<br />

								<h3 class="widget-title">개설자</h3>
								<p>${channel.user.userNo}</p>
								<p>${channel.user.userName }</p>
								<p>
									<a href="pages/channelList.jsp" class="project-btn btn btn-primary">채널 목록</a>
								</p>
							</div>
						</div>
					</div>
					<!-- sidebar end -->
				</div>
				<!-- Portfolio item row end -->
			</div>
			<!-- Container end -->
		</section>
		<!-- Portfolio item end -->
		<hr id="line" />
		<div class="row">
<!-- 		<br><br> -->
			<h2 style="margin-left: 15%" class="widget-title">채널 리뷰</h2>
		</div>
		<a  style="margin-left: 15%" href="pages/createChBoard.jsp?chNo=${channel.chNo}"
			class="project-btn btn btn-primary review">리뷰 등록</a><Br>
 		<c:import url="/front?key=selectChBoard&chNo=${channel.chNo}" />
	</div>
	
	<!-- Body inner end -->
	
	<!-- jQuery -->
	<script src="${pageContext.request.contextPath}/pages/plugins/jQuery/jquery.min.js"></script>
	<!-- Bootstrap JS -->
	<script src="${pageContext.request.contextPath}/pages/plugins/bootstrap/bootstrap.min.js"></script>
	<!-- Style Switcher -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/pages/plugins/style-switcher.js"></script>
	<!-- Owl Carousel -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/pages/plugins/owl/owl.carousel.js"></script>
	<!-- PrettyPhoto -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/pages/plugins/jquery.prettyPhoto.js"></script>
	<!-- Bxslider -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/pages/plugins/flex-slider/jquery.flexslider.js"></script>
	<!-- CD Hero slider -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/pages/plugins/cd-hero/cd-hero.js"></script>
	<!-- Isotope -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/pages/plugins/isotope.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/pages/plugins/ini.isotope.js"></script>
	<!-- Wow Animation -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/pages/plugins/wow.min.js"></script>
	<!-- Eeasing -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/pages/plugins/jquery.easing.1.3.js"></script>
	<!-- Counter -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/pages/plugins/jquery.counterup.min.js"></script>
	<!-- Waypoints -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/pages/plugins/waypoints.min.js"></script>
	<!-- google map -->
	<script
		src="${pageContext.request.contextPath}/pages/https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU&libraries=places"></script>
	<script src="${pageContext.request.contextPath}/pages/plugins/google-map/gmap.js"></script>
	
	<!-- Main Script -->
	<script src="${pageContext.request.contextPath}/pages/js/script.js"></script>
	<br><br>
	<!--subTopMenu-->
	<c:import url="headerTop.jsp" />
	<!-- mainMenu -->
	<c:import url="header.jsp" />
</body>
	
<c:import url="footer.jsp"></c:import>
</html>