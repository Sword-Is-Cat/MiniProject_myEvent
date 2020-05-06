<%@page import="kosta.mvc.service.ChBoardService"%>
<%@page import="kosta.mvc.vo.ChBoard"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"
	scope="application" />
<!DOCTYPE html>
<html>
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
<!-- 지혜 css -->
<style>

#ahead{
	background-color: rgb(240, 237, 250);
}
</style>
</head>
<body>
<!-- 지혜 채널리뷰 부분 -->
	
	<br>
	<div class="container">

		<div class="accordion" id="accordion">
			<div class="card-header p-0">
				<h4 style="font-weight: bold">리뷰 번호 | 작성 날짜 | 작성자 이름 | 별점</h4>
			</div>
			<c:forEach items="${chB}" var="chBoard">
				<div class="card border rounded mb-2">
					<div class="card-header p-0">
						<a id="ahead"
							class="h4 mb-0 font-weight-bold text-uppercase d-block p-2 pl-5"
							data-toggle="collapse" data-target="#collapseOne"
							aria-expanded="true" aria-controls="collapseOne">
							
							${chBoard.chBoardNo}번 | ${chBoard.user.userName} | <fmt:formatDate value="${chBoard.chBoardTime }" pattern="yyyy-MM-dd"/> |
							${chBoard.chBoardStar}점</a>
					</div>
					<div id="collapseOne" class="collapse show"
						data-parent="#accordion">
						<div class="card-body">
							<p>${chBoard.chBoardContent }</p>
						</div>
					</div>
				</div>
				<!--/ Panel 1 end-->
			</c:forEach>
			<!--/ Accordion end -->
		</div>

	</div>
	<!-- Container end -->
	
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
	
	<script src="${pageContext.request.contextPath}/pages/plugins/google-map/gmap.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/pages/plugins/waypoints.min.js"></script>

	<!-- Main Script -->
	<script src="${pageContext.request.contextPath}/pages/js/script.js"></script>
</body>
</html>