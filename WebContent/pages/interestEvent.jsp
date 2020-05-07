<%@page import="kosta.mvc.vo.Event"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

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

<style>
#listImg {
	width: 100%;
	height: 270px;
}


</style>

</head>

<body>

	<!--subTopMenu-->
	<c:import url="headerTop.jsp" />
	<!--subTopMenu end-->

	<c:import url="header.jsp" />

	<!-- 상단 메뉴 -->
	<c:import url="subMenu.jsp" />
	<!-- subnav start -->
	<div class="menuSubnav__section mt-xl-4">
		<div class="container">
			<div class="row">
				<div class="col s12">
					<div class="menuSubnav d-flex flex-row align-items-start">

						<div class="menuSubnav__tab--active">
							<a href="interestEvent.jsp"> 관심 행사 목록 </a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- subnav end -->


	<!-- interestEvent item start -->
	<section id="portfolio-item">
		<c:forEach items="${eventList}" var="event">
		<div class="container mainContainer">
			<!-- interestEvent item row start -->
			<div class="row">
				<!-- interestEvent item img start -->
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="portfolio-slider">
						<div class="flexportfolio flexslider">
							<ul class="slides">
								<li><a href="./front?key=selectEvent&evNo=${event.evNo}"><img id="listImg"
										src="${pageContext.request.contextPath}/eventImage/${event.evImg}?fixed"
										alt=""></a></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- interestEvent item img end-->

				<!-- sidebar start -->
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="sidebar">
						<div class="portfolio-desc">
							<br>
							<h4 class="widget-title">행사 : ${event.evName}</h4>
							<h5 class="widget-title">채널 : ${event.channel.chName}</h5>
							<p>기간 : <fmt:formatDate value="${event.evTime.evStartTime}" type="both"/> ~ <fmt:formatDate value="${event.evTime.evEndTime}" type="both"/></p>
							<p>장소 : ${event.evAddr}</p>
							<div style="text-align:center;">
								<a href="${pageContext.request.contextPath}/front?key=insertBookController&evNo=${event.evNo}" class="project-btn btn btn-primary">참가</a>&emsp;&emsp;&emsp; <a
									href="${pageContext.request.contextPath}/front?key=deleteFavoriteEvent&evNo=${event.evNo}" class="project-btn btn btn-primary">삭제</a>
							</div>
						</div>
					</div>
				</div>
				<!-- sidebar end -->
			</div>
			<!-- interestEvent item row end -->
		</div>
		</c:forEach>
		<!-- Container end -->
	</section>
	<!-- interestEvent item end -->

	<!-- footer -->
	<c:import url="footer.jsp"></c:import>

</body>

</html>