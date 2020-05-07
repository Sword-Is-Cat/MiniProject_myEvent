<%@page import="kosta.mvc.vo.Event"%>
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
<link rel="icon"
	href="${pageContext.request.contextPath}/pages/images/favicon/32.png"
	type="image/x-icon" />
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="${pageContext.request.contextPath}/pages/images/favicon/144.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="${pageContext.request.contextPath}/pages/images/favicon/72.png">
<link rel="apple-touch-icon-precomposed"
	href="${pageContext.request.contextPath}/pages/images/favicon/54.png">
<!-- webFont -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/pages/css/style.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/pages/css/defaultStyle.css"
	rel="stylesheet">
<style>
hr {
	margin-left: 15%;
	width: 70%;
	border: solid 2px #5c3fbf;
}

img.chImg {
	width: 593px;
	height: 400px;
}

#ahead {
	background-color: rgb(240, 237, 250);
}
</style>
</head>

<body>
	<!--subTopMenu-->
	<c:import url="headerTop.jsp" />
	<!-- mainMenu -->
	<c:import url="header.jsp" />

	<section>
		<div class="container">
			<div class="row justify-content-around">
				<div class="col-md-6">
					<img src="channelImg/${requestScope.channel.chImg}" alt=""
						width="100%" height="300px">
				</div>
				<div class="col-md-4">
					<h4>Channel</h4>
					<h5>${channel.chName}</h5>
					<br>
					<h4>개설자</h4>
					<h5>${channel.user.userName}</h5>
					<br>
					<br>
					<br>
					<br> <a style=""
						href="pages/createChBoard.jsp?chNo=${channel.chNo}"
						class="project-btn btn btn-primary review">리뷰 등록</a>
				</div>
			</div>
		</div>
	</section>
	<section id="portfolio" class="portfolio">
		<div class="container">
			<div class="row">
				<div class="col-md-12 heading">
					<h2 class="title">진행/모집중인 행사 목록</h2>

				</div>
			</div>
			<!-- Title row end -->
			<!-- img start-->
			<div class="row">
				<c:forEach items="${requestScope.newList}" var="recentEv"
					varStatus="status">
					<div class="col-sm-3 portfolio-static-item wow fadeInUp"
						data-wow-delay="${status.count * 0.27}s">
						<div class="grid">
							<figure class="m-0 effect-oscar">
								<img
									src="${pageContext.request.contextPath}/eventImage/${recentEv.evImg}"
									alt="${recentEv.evImg}" width="255" height="170.14">
								<figcaption>
									<a class="link icon-pentagon"
										href="./front?key=selectEvent&evNo=${recentEv.evNo}"><i
										class="fa fa-link"></i></a> <a class="view icon-pentagon"
										style="cursor: pointer;"
										onclick="toggleFavoriteEvent(${recentEv.evNo})"><i
										class="favEventIcon${recentEv.evNo}"></i></a>
								</figcaption>
							</figure>
							<div class="portfolio-static-desc">
								<h3>${recentEv.evName}</h3>
								<span><a href="#"></a></span>
							</div>
						</div>
						<!--/ grid end -->
					</div>
				</c:forEach>
			</div>
			<!--/ items end -->
		</div>
		<!--/ Container end -->
	</section>
	<!--/ Counter end -->

	<!-- Feature box start -->
	<section id="feature" class="feature">
		<div class="container">
			<div class="row">
				<div class="container">
					<div class="row">
						<div class="col-md-12 heading">
							<h2 class="title">종료된 행사 목록</h2>

						</div>
					</div>
					<!-- Title row end -->
					<!-- img start-->
					<div class="row">
						<c:forEach items="${requestScope.endList}" var="recentEv"
							varStatus="status">
							<div class="col-sm-3 portfolio-static-item wow fadeInUp"
								data-wow-delay="${status.count * 0.27}s">
								<div class="grid">
									<figure class="m-0 effect-oscar">
										<img
											src="${pageContext.request.contextPath}/eventImage/${recentEv.evImg}"
											alt="${recentEv.evImg}" width="255" height="170.14">
										<figcaption>
											<a class="link icon-pentagon"
												href="./front?key=selectEvent&evNo=${recentEv.evNo}"><i
												class="fa fa-link"></i></a> <a class="view icon-pentagon"
												style="cursor: pointer;"
												onclick="toggleFavoriteEvent(${recentEv.evNo})"><i
												class="favEventIcon${recentEv.evNo}"></i></a>
										</figcaption>
									</figure>
									<div class="portfolio-static-desc">
										<h3>${recentEv.evName}</h3>
										<span><a href="#"></a></span>
									</div>
								</div>
								<!--/ grid end -->
							</div>
						</c:forEach>
						<!--/ items end -->
					</div>
					<!--/ Container end -->
				</div>
				<!-- Content row end -->

			</div>
		</div>
		<!--/ Container end -->
		<div class="container" style="margin-top:100px;">
			<div class="accordion" id="accordion">
				<c:forEach items="${chBoard}" var="chBoard">
					<div class="card border rounded mb-2">
						<div class="card-header p-0">
							<a id="ahead"
								class="h4 mb-0 font-weight-bold text-uppercase d-block p-2 pl-5"
								data-toggle="collapse" data-target="#collapseOne"
								aria-expanded="true" aria-controls="collapseOne">

								${chBoard.user.userName} | <fmt:formatDate
									value="${chBoard.chBoardTime }" pattern="yyyy-MM-dd" /> |
								평점:${chBoard.chBoardStar}
							</a>
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
	</section>
	<!--/ Feature box end -->


	<%-- <div class="body-inner">
		<!-- Portfolio item start -->
		<section id="portfolio-item">
			<div class="container">

				<!-- Portfolio item row start -->
				<div class="row">
					<!-- Portfolio item slider start -->
					<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
						<div class="portfolio-slider">
							<div class="flexportfolio flexslider">
								<img src="channelImg/${requestScope.channel.chImg}" alt="">
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
								<p>${channel.user.userName}</p>
								<p>
									<a href="pages/channelList.jsp"
										class="project-btn btn btn-primary">채널 목록</a>
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

		<!-- 여기에 진행중 / 종료된 이벤트 목록 삽입 -->
		<h4 style="margin-left: 15%">진행중 이벤트</h4>
		<hr id="line" color="#5c3fbf" />
		<!-- Portfolio start -->
		<section id="main-container" class="portfolio-static">
			<div class="container">
				<div class="row">
					<c:forEach items="${requestScope.newList}" var="event"
						varStatus="state">
						<!-- item 1 start -->
						<div class="col-sm-4 portfolio-static-item">
							<div class="grid">
								<figure class="m-0 effect-oscar">
									<img class="chImg" src="eventImage/${event.evImg}" alt="">
									<figcaption>
										<a class="link icon-pentagon" href="portfolio-item.html"><i
											class="fa fa-link"></i></a> <a class="view icon-pentagon"
											data-rel="prettyPhoto"
											href="images/portfolio/portfolio-bg1.jpg"><i
											class="fa fa-search"></i></a>
									</figcaption>
								</figure>
								<div class="portfolio-static-desc">
									<table>
										<tr>
											<td><a href="front?key=selectEvent&evNo=${event.evNo}">
											<h3 id="eTitle" class="eTitle">${event.evName}</h3></a></td>
										</tr>
										<tr>
											<td>${event.category.cateName}</td>
										</tr>
									</table>

								</div>
							</div>
							<!--/ grid end -->
						</div>
						<!--/ item 1 end -->
					</c:forEach>
				</div>
				<!-- Content row end -->
			</div>
			<!-- Container end -->
		</section>
		<!-- Portfolio end -->
		<h4 style="margin-left: 15%">종료된 이벤트</h4>
		<hr id="line" color="#5c3fbf" />
		<!-- Portfolio start -->
		<section id="main-container" class="portfolio-static">
			<div class="container">
				<div class="row">
					<c:forEach items="${requestScope.endList}" var="event"
						varStatus="state">
						<!-- item 1 start -->
						<div class="col-sm-4 portfolio-static-item">
							<div class="grid">
								<figure class="m-0 effect-oscar">
									<img class="chImg" src="eventImage/${event.evImg}" alt="">
									<figcaption>
										<a class="link icon-pentagon" href="portfolio-item.html"><i
											class="fa fa-link"></i></a> <a class="view icon-pentagon"
											data-rel="prettyPhoto"
											href="images/portfolio/portfolio-bg1.jpg"><i
											class="fa fa-search"></i></a>
									</figcaption>
								</figure>
								<div class="portfolio-static-desc">
									<table>
										<tr>
											<td><a href="front?key=selectEvent&evNo=${event.evNo}">
											<h3 id="eTitle" class="eTitle">${event.evName}</h3></a></td>
										</tr>
										<tr>
											<td>${event.category.cateName}</td>
										</tr>
									</table>

								</div>
							</div>
							<!--/ grid end -->
						</div>
						<!--/ item 1 end -->
					</c:forEach>
				</div>
				<!-- Content row end -->
			</div>
			<!-- Container end -->
		</section>
		<!-- Portfolio end -->

		<div class="row">
			<!-- 		<br><br> -->
			<h2 style="margin-left: 15%" class="widget-title">채널 리뷰</h2>
		</div>
		<a style="margin-left: 15%"
			href="pages/createChBoard.jsp?chNo=${channel.chNo}"
			class="project-btn btn btn-primary review">리뷰 등록</a><Br>
		<c:import url="/front?key=selectChBoard&chNo=${channel.chNo}" />
	</div>
 --%>
	<!-- Body inner end -->

	<c:import url="footer.jsp"></c:import>
</body>


</html>