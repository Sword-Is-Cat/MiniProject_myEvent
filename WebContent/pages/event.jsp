<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/pages/plugins/bootstrap/bootstrap.min.css">
<!-- FontAwesome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/pages/plugins/fontawesome/font-awesome.min.css">
<!-- Animation -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/pages/plugins/animate.css">
<!-- Prettyphoto -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/pages/plugins/prettyPhoto.css">
<!-- Owl Carousel -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/pages/plugins/owl/owl.carousel.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/pages/plugins/owl/owl.theme.css">
<!-- Flexslider -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/pages/plugins/flex-slider/flexslider.css">
<!-- Flexslider -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/pages/plugins/cd-hero/cd-hero.css">
<!-- Style Swicther -->
<link id="style-switch"
	href="${pageContext.request.contextPath}/pages/css/presets/preset3.css"
	media="screen" rel="stylesheet" type="text/css">

<!-- Main Stylesheet -->
<link href="${pageContext.request.contextPath}/pages/css/style.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/pages/css/defaultStyle.css"
	rel="stylesheet">
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
<!-- jQuery -->
<script
	src="${pageContext.request.contextPath}/pages/plugins/jQuery/jquery.min.js"></script>
<!-- Bootstrap JS -->
<script
	src="${pageContext.request.contextPath}/pages/plugins/bootstrap/bootstrap.min.js"></script>
<!-- Style Switcher -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/plugins/style-switcher.js"></script>
<!-- Owl Carousel -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/plugins/owl/owl.carousel.js"></script>
<!-- PrettyPhoto -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/plugins/jquery.prettyPhoto.js"></script>
<!-- Bxslider -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/plugins/flex-slider/jquery.flexslider.js"></script>
<!-- CD Hero slider -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/plugins/cd-hero/cd-hero.js"></script>
<!-- Isotope -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/plugins/isotope.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/plugins/ini.isotope.js"></script>
<!-- Wow Animation -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/plugins/wow.min.js"></script>
<!-- Eeasing -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/plugins/jquery.easing.1.3.js"></script>
<!-- Counter -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/plugins/jquery.counterup.min.js"></script>
<!-- Waypoints -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/plugins/waypoints.min.js"></script>


<!-- Main Script -->
<script src="${pageContext.request.contextPath}/pages/js/script.js"></script>

<style>
#qnaBoard {
	margin-top: 1em;
}

#evInfo {
	margin-top: 1em;
}
</style>

</head>

<body>
	<!--subTopMenu-->
	<c:import url="headerTop.jsp" />
	<!--subTopMenu end-->

	<c:import url="header.jsp"></c:import>

	<!-- Portfolio item start -->
	<section id="portfolio-item">
		<div class="container">
			<!-- Portfolio item row start -->
			<div class="row">
				<!-- Portfolio item slider start -->
				<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
					<div class="portfolio-slider">
						<div class="flexportfolio flexslider">
							<img src="eventImage/${requestScope.event.evImg}" alt="">
						</div>
					</div>
				</div>
				<!-- Portfolio item slider end -->

				<!-- sidebar start -->
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12" id="sideBar">
					<div class="sidebar">
						<div class="portfolio-desc">
							<h3 class="widget-title">${requestScope.event.evName}</h3>
							<p>${requestScope.event.category.cateName}</p>
							<br />
							<h3 class="widget-title">${requestScope.event.channel.chName}</h3>
							<p>${requestScope.event.channel.chDescription}</p>
							<br />
							<%
								if ((boolean) request.getAttribute("isManager") == true) {
							%>
							<p>
								<a
									href="front?key=selectUserByBookedEvNo&evNo=${requestScope.event.evNo}"
									class="project-btn btn btn-primary">행사 참여자</a>
							</p>
							<p>
								<a
									href="front?key=enterUpdateEvent&evNo=${requestScope.event.evNo}"
									class="project-btn btn btn-primary">행사수정하기</a>
							</p>
							<p>
								<a
									href="front?key=deleteEvent&chNo=${requestScope.event.channel.chNo}&evNo=${requestScope.event.evNo}"
									class="project-btn btn btn-primary">행사삭제하기</a>
							</p>
							<%
								} else {
									if ((boolean) request.getAttribute("isBook") == true) {
							%>
							<p>
								<a
									href="front?key=deleteBookController&evNo=${requestScope.event.evNo}"
									class="project-btn btn btn-primary">행사신청취소</a>
							</p>
							<%
								} else {
							%>
							<p>
								<a
									href="front?key=insertBookController&evNo=${requestScope.event.evNo}"
									class="project-btn btn btn-primary">행사신청하기</a>
							</p>
							<%
								}
									if ((boolean) request.getAttribute("isFavor") == true) {
							%>
							<p>
								<a
									href="front?key=deleteFavoriteEvent&evNo=${requestScope.event.evNo}"
									class="project-btn btn btn-primary">관심행사취소</a>
							</p>
							<%
								} else {
							%>
							<p>
								<a
									href="front?key=favoriteEvent&evNo=${requestScope.event.evNo}"
									class="project-btn btn btn-primary">관심행사등록</a>
							</p>
							<%
								}
								}
							%>
						</div>
					</div>
				</div>
				<!-- sidebar end -->
				<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12" id="evInfo">
					<div class="col-lg-6 col-md-6 col-sm-8 col-xs-8 float-left">
						<p>접수 기간</p>
						<p>
							시작:
							<fmt:formatDate
								value="${requestScope.event.evTime.evBookStartTime}"
								pattern="yyyy/MM/dd hh:mm" />
						</p>
						<p>
							종료:
							<fmt:formatDate
								value="${requestScope.event.evTime.evBookEndTime}"
								pattern="yyyy/MM/dd hh:mm" />
						</p>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-4 col-xs-8 float-left">
						<p>행사 기간</p>
						<p>
							시작:
							<fmt:formatDate value="${requestScope.event.evTime.evStartTime}"
								pattern="yyyy/MM/dd hh:mm" />
						</p>
						<p>
							종료:
							<fmt:formatDate value="${requestScope.event.evTime.evEndTime}"
								pattern="yyyy/MM/dd hh:mm" />
						</p>
					</div>
					<div class="row">
						<img src="eventImage/${requestScope.event.evImgDetail}" alt="">
					</div>
					<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12" id="qnaBoard">
						<p>상세내용<br>${requestScope.event.evDescription}</p>
					</div>
					<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12" id="qnaBoard">
						주소: ${requestScope.evAddr}</div>
				</div>
			</div>
			<!-- Portfolio item row end -->
		</div>
		<!-- Container end -->
	</section>
	<!-- Portfolio item end -->

	<div class="gap-40"></div>
	<!-- Body inner end -->
	<!-- footer -->
	<c:import url="footer.jsp"></c:import>
</body>

</html>