<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<!-- Main Stylesheet -->
<link href="css/style.css" rel="stylesheet">
<link href="css/defaultStyle.css" rel="stylesheet">
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


<!-- Main Script -->
<script src="js/script.js"></script>

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
	<div id="banner-area">
		<img src="images/banner/banner1.jpg" alt="" />
		<div class="parallax-overlay"></div>
		<!-- Subpage title start -->
		<div class="banner-title-content">
			<div class="text-center">
				<h2>${requestScope.event.evName}</h2>
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb justify-content-center">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item text-white" aria-current="page">"${requestScope.event.evName}"</li>
					</ol>
				</nav>
			</div>
		</div>
		<!-- Subpage title end -->
	</div>
	<!-- Banner area end -->

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
							<% if ((boolean) request.getAttribute("isManager") == true) { %>
							<p>
								<a
									href="front?key=enterUpdateEvent&evNo=${requestScope.event.evNo}"
									class="project-btn btn btn-primary">수정하기</a>
							</p>
							<p>
								<a
									href="front?key=deleteEvent&chNo=${requestScope.event.channel.chNo}&evNo=${requestScope.event.evNo}"
									class="project-btn btn btn-primary">삭제하기</a>
							</p>
							<% } else if((boolean) request.getAttribute("isBook") == true) { %>
							<p>
								<a
									href="front?key=deleteBookController&evNo=${requestScope.event.evNo}"
									class="project-btn btn btn-primary">취소하기</a>
							</p>
							<% } else {%>
							<p>
								<a
									href="front?key=insertBookController&evNo=${requestScope.event.evNo}"
									class="project-btn btn btn-primary">신청하기</a>
							</p>
							<% } %>
						</div>
					</div>
				</div>
				<!-- sidebar end -->
				<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12" id="evInfo">
					<div class="col-lg-6 col-md-6 col-sm-8 col-xs-8 float-left">
						<p>접수</p>
						<p>${requestScope.event.evTime.evBookStartTime}</p>
						${
					requestScope.event.evTime.evBookEndTime}
						</p>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-4 col-xs-8 float-left">
						<p>행사</p>
						<p>${requestScope.event.evTime.evStartTime}</p>
						<p>${requestScope.event.evTime.evEndTime}</p>
					</div>
					<div class="row" style="border: 2px solid;">
						<img src="eventImage/${requestScope.event.evImgDetail}" alt="">
					</div>
					<div class="row" style="border: 2px solid; height: 800px;">
						<p>${requestScope.event.evDescription}</p>
					</div>
				</div>
				<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12" id="qnaBoard"
					style="border: 2px solid; height: 200px;">
					${requestScope.evAddr}</div>
			</div>
			<!-- Portfolio item row end -->
		</div>
		<!-- Container end -->
	</section>
	<!-- Portfolio item end -->

	<div class="gap-40"></div>

	<!-- Footer start -->
	<footer id="footer" class="footer">
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-sm-12 footer-widget">
					<h3 class="widget-title">Recent Posts</h3>
					<div class="latest-post-items media">
						<div class="latest-post-content media-body">
							<h4>
								<a href="#">Bulgaria claims to find Europe's 'oldest town'</a>
							</h4>
							<p class="post-meta">
								<span class="author">Posted by John Doe</span> <span
									class="post-meta-cat">in<a href="#"> Blog</a></span>
							</p>
						</div>
					</div>
					<!-- 1st Latest Post end -->

					<div class="latest-post-items media">
						<div class="latest-post-content media-body">
							<h4>
								<a href="#">Few Answers in Case of Murdered Law Professor</a>
							</h4>
							<p class="post-meta">
								<span class="date"><i class="icon icon-calendar"></i> Mar
									15, 2015</span> <span class="post-meta-comments"><i
									class="icon icon-bubbles4"></i> <a href="#">03</a></span>
							</p>
						</div>
					</div>
					<!-- 2nd Latest Post end -->

					<div class="latest-post-items media">
						<div class="latest-post-content media-body">
							<h4>
								<a href="#">Over the year we have lots of experience in our
									field</a>
							</h4>
							<p class="post-meta">
								<span class="date"><i class="icon icon-calendar"></i> Apr
									17, 2015</span> <span class="post-meta-comments"><i
									class="icon icon-bubbles4"></i> <a href="#">14</a></span>
							</p>
						</div>
					</div>
					<!-- 3rd Latest Post end -->

				</div>
				<!--/ End Recent Posts-->


				<div class="col-md-4 col-sm-12 footer-widget">
					<h3 class="widget-title">Flickr Photos</h3>

					<div class="img-gallery">
						<div class="img-container">
							<a class="thumb-holder" data-rel="prettyPhoto"
								href="images/gallery/1.jpg"> <img src="images/gallery/1.jpg"
								alt="">
							</a> <a class="thumb-holder" data-rel="prettyPhoto"
								href="images/gallery/2.jpg"> <img src="images/gallery/2.jpg"
								alt="">
							</a> <a class="thumb-holder" data-rel="prettyPhoto"
								href="images/gallery/3.jpg"> <img src="images/gallery/3.jpg"
								alt="">
							</a> <a class="thumb-holder" data-rel="prettyPhoto"
								href="images/gallery/4.jpg"> <img src="images/gallery/4.jpg"
								alt="">
							</a> <a class="thumb-holder" data-rel="prettyPhoto"
								href="images/gallery/5.jpg"> <img src="images/gallery/5.jpg"
								alt="">
							</a> <a class="thumb-holder" data-rel="prettyPhoto"
								href="images/gallery/6.jpg"> <img src="images/gallery/6.jpg"
								alt="">
							</a> <a class="thumb-holder" data-rel="prettyPhoto"
								href="images/gallery/6.jpg"> <img src="images/gallery/7.jpg"
								alt="">
							</a> <a class="thumb-holder" data-rel="prettyPhoto"
								href="images/gallery/6.jpg"> <img src="images/gallery/8.jpg"
								alt="">
							</a> <a class="thumb-holder" data-rel="prettyPhoto"
								href="images/gallery/6.jpg"> <img src="images/gallery/9.jpg"
								alt="">
							</a>
						</div>
					</div>
				</div>
				<!--/ end flickr -->

				<div class="col-md-3 col-sm-12 footer-widget footer-about-us">
					<h3 class="widget-title">About Craft</h3>
					<p>We are a awward winning multinational company. We believe in
						quality and standard worldwide.</p>
					<h4>Address</h4>
					<p>1102 Saint Marys, Junction City, KS</p>
					<div class="row">
						<div class="col-md-6">
							<h4>Email:</h4>
							<p>info@craftbd.com</p>
						</div>
						<div class="col-md-6">
							<h4>Phone No.</h4>
							<p>+(785) 238-4131</p>
						</div>
					</div>
					<form action="#" role="form">
						<div class="input-group subscribe">
							<input type="email" class="form-control"
								placeholder="Email Address" required=""> <span
								class="input-group-addon">
								<button class="btn" type="submit">
									<i class="fa fa-envelope-o"> </i>
								</button>
							</span>
						</div>
					</form>
				</div>
				<!--/ end about us -->

			</div>
			<!-- Row end -->
		</div>
		<!-- Container end -->
	</footer>
	<!-- Footer end -->


	<!-- Copyright start -->
	<section id="copyright" class="copyright angle">
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					<ul class="footer-social unstyled">
						<li><a title="Twitter" href="#"> <span
								class="icon-pentagon wow bounceIn"><i
									class="fa fa-twitter"></i></span>
						</a> <a title="Facebook" href="#"> <span
								class="icon-pentagon wow bounceIn"><i
									class="fa fa-facebook"></i></span>
						</a> <a title="Google+" href="#"> <span
								class="icon-pentagon wow bounceIn"><i
									class="fa fa-google-plus"></i></span>
						</a> <a title="linkedin" href="#"> <span
								class="icon-pentagon wow bounceIn"><i
									class="fa fa-linkedin"></i></span>
						</a> <a title="Pinterest" href="#"> <span
								class="icon-pentagon wow bounceIn"><i
									class="fa fa-pinterest"></i></span>
						</a> <a title="Skype" href="#"> <span
								class="icon-pentagon wow bounceIn"><i class="fa fa-skype"></i></span>
						</a> <a title="Dribble" href="#"> <span
								class="icon-pentagon wow bounceIn"><i
									class="fa fa-dribbble"></i></span>
						</a></li>
					</ul>
				</div>
			</div>
			<!--/ Row end -->
			<div class="row">
				<div class="col-md-12 text-center">
					<div class="copyright-info">
						&copy; Copyright 2019 Themefisher. <span>Designed by <a
							href="https://themefisher.com">Themefisher.com</a></span>
					</div>
				</div>
			</div>
			<!--/ Row end -->
			<div id="back-to-top" data-spy="affix" data-offset-top="10"
				class="back-to-top affix position-fixed">
				<button class="btn btn-primary" title="Back to Top">
					<i class="fa fa-angle-double-up"></i>
				</button>
			</div>
		</div>
		<!--/ Container end -->
	</section>
	<!--/ Copyright end -->

	</div>
	<!-- Body inner end -->
	<!-- footer -->
	<c:import url="footer.jsp"></c:import>
</body>

</html>