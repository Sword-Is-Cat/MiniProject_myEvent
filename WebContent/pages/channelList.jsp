<%@page import="kosta.mvc.service.ChannelService"%>
<%@page import="java.util.List"%>
<%@page import="kosta.mvc.model.dao.ChannelDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kosta.mvc.vo.Channel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"
	scope="application" />

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
<!--졔가 만든 style -->
<style>
.option {
	color: "navy";
}

.select {
	margin-left: 55%;
}

.eTitle:hover {
	text-decoration: none;
	color: inherit;
}

img.chImg {
	width: 200px;
	height: 180px;
}

.desc {
	width: 350px;
	text-overflow: ellipsis;
	-o-text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
	word-wrap: normal !important;
	display: block;
}
#eventTab{
	font-weight: bold;
	margin-left: 15%;
}
#channelTab{
	color: #5c3fbf;
	font-weight: bold;
	margin-left: 10%;
	border-bottom: 5px solid #5c3fbf;
}
hr{
	margin-left: 15%;
	width:70%
}
</style>
</head>

<body>
	<!--subTopMenu-->
	<c:import url="headerTop.jsp" />
	<div class="body-inner">
		<!-- mainMenu -->
		<c:import url="header.jsp" />
		<br>
		<h3 id="tab">
		<a id="eventTab" href="${pageContext.request.contextPath}/front?key=searchRecentEvent">행사</a>
		<a id="channelTab" href="${pageContext.request.contextPath}/pages/channelList.jsp">채널</a>
		</h3>
		<br>
		<h4 style="margin-left: 15%">총 n개의 검색 결과가 있습니다.</h4>
		<hr id="line" color="#5c3fbf"/>
		<!-- channalList start -->
		<%
			List<Channel> chList = ChannelService.selectAll();
		%>

		<section id="main-container" class="portfolio-static">
			<div class="container">
				<div class="row">
					<c:forEach items="<%=chList%>" var="channel">
						<div class="col-sm-4 portfolio-static-item">
							<div class="grid">
								<figure class="m-0 effect-oscar">
									<img class="chImg"
										src="${pageContext.request.contextPath}/channelImg/${channel.chImg}"
										alt="">
									<figcaption>
										<a class="link icon-pentagon" href="${pageContext.request.contextPath}/front?key=channelDetail&chNo=${channel.chNo}"><i
													class="fa fa-link"></i></a>
									</figcaption>
								</figure>
								<div class="portfolio-static-desc">
									<a
										href="${pageContext.request.contextPath}/front?key=channelDetail&chNo=${channel.chNo}"><h3
											id="eTitle" class="eTitle">${channel.chName}</h3></a> <a
										href="${pageContext.request.contextPath}/front?key=channelDetail&chNo=${channel.chNo}"
										class="desc">${channel.chDescription}</a>
								</div>
							</div>
							<!--/ grid end -->
						</div>
					</c:forEach>
					<!--/ item 1 end -->
				</div>
				<!-- Content row end -->
			</div>
			<!-- Container end -->

		</section>
		<!-- Portfolio end -->

		<div class="gap-40"></div>
	</div>
	<!-- Body inner end -->
	<!-- footer -->
	<c:import url="footer.jsp"></c:import>

</body>

</html>