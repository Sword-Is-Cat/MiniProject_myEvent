<%@page import="kosta.mvc.vo.User"%>
<%@page import="kosta.mvc.vo.Channel"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
  <title>My Event :: 행사와 함께 하는 모든 순간</title>

   <!-- mobile responsive meta -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  
   <!-- ** Plugins Needed for the Project ** -->
  <!-- Bootstrap -->
  <link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.css">
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
	<link id="style-switch" href="css/presets/preset3.css" media="screen" rel="stylesheet" type="text/css">

  <!-- Main Stylesheet -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/defaultStyle.css" rel="stylesheet">
  <!--Favicon-->
	<link rel="icon" href="./images/favicon/32.png" type="image/x-icon" />
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="./images/favicon/144.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="./images/favicon/72.png">
	<link rel="apple-touch-icon-precomposed" href="./images/favicon/54.png">
 <!-- webFont -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

</head>

<body>
<!--subTopMenu-->
<c:import url="headerTop.jsp"/>
<!-- mainMenu -->
<c:import url="header.jsp"/>
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
								<img src="images/portfolio/portfolio-bg1.jpg" alt="">
							</div>
						</div>
					</div>
					<!-- Portfolio item slider end -->

					<!-- sidebar start -->
					<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
						<div class="sidebar">
							<div class="portfolio-desc">
								<h3 class="widget-title">${channel.chName}</h3>
								<p>
									${channel.chDescription }
								</p>
								<br />

								<h3 class="widget-title">개설자</h3>
								<p>${user.userNo}</p>
								<p>${channel.user.userId}</p>
								<p><%=request.getParameter("userId")%></p>
								<p>
									<a href="#" class="project-btn btn btn-primary">채널 관리</a>
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

		<!-- Portfolio start -->
		<section id="main-container" class="portfolio-static">
			<div class="container">
				<div class="row">
					<h2 class="widget-title">진행중인 행사</h2>
				</div>
				<div class="row">
					<div class="col-sm-3 portfolio-static-item">
						<div class="grid">
							<figure class="m-0 effect-oscar">
								<img src="images/portfolio/portfolio1.jpg" alt="">
								<figcaption>
									<a class="link icon-pentagon" href="portfolio-item.html"><i
										class="fa fa-search"></i></a> <a class="view icon-pentagon"
										data-rel="prettyPhoto"
										href="images/portfolio/portfolio-bg1.jpg"><i
										class="fa fa-heart"></i></a>
								</figcaption>
							</figure>
							<div class="portfolio-static-desc">
								<h3>evName param</h3>
								<span><a href="#">cateName param</a></span>
							</div>
						</div>
						<!--/ grid end -->
					</div>
					<!--/ item 1 end -->

					<div class="col-sm-3 portfolio-static-item">
						<div class="grid">
							<figure class="m-0 effect-oscar">
								<img src="images/portfolio/portfolio2.jpg" alt="">
								<figcaption>
									<a class="link icon-pentagon" href="portfolio-item.html"><i
										class="fa fa-search"></i></a> <a class="view icon-pentagon"
										data-rel="prettyPhoto"
										href="images/portfolio/portfolio-bg2.jpg"><i
										class="fa fa-heart"></i></a>
								</figcaption>
							</figure>
							<div class="portfolio-static-desc">
								<h3>evName param</h3>
								<span><a href="#">cateName param</a></span>
							</div>
						</div>
						<!--/ grid end -->
					</div>
					<!--/ item 2 end -->

					<div class="col-sm-3 portfolio-static-item">
						<div class="grid">
							<figure class="m-0 effect-oscar">
								<img src="images/portfolio/portfolio3.jpg" alt="">
								<figcaption>
									<a class="link icon-pentagon" href="portfolio-item.html"><i
										class="fa fa-search"></i></a> <a class="view icon-pentagon"
										data-rel="prettyPhoto"
										href="images/portfolio/portfolio-bg3.jpg"><i
										class="fa fa-heart"></i></a>
								</figcaption>
							</figure>
							<div class="portfolio-static-desc">
								<h3>evName param</h3>
								<span><a href="#">cateName param</a></span>
							</div>
						</div>
						<!--/ grid end -->
					</div>
					<!--/ item 3 end -->

					<div class="col-sm-3 portfolio-static-item">
						<div class="grid">
							<figure class="m-0 effect-oscar">
								<img src="images/portfolio/portfolio4.jpg" alt="">
								<figcaption>
									<a class="link icon-pentagon" href="portfolio-item.html"><i
										class="fa fa-search"></i></a> <a class="view icon-pentagon"
										data-rel="prettyPhoto"
										href="images/portfolio/portfolio-bg1.jpg"><i
										class="fa fa-heart"></i></a>
								</figcaption>
							</figure>
							<div class="portfolio-static-desc">
								<h3>evName param</h3>
								<span><a href="#">cateName param</a></span>
							</div>
						</div>
						<!--/ grid end -->
					</div>
					<!--/ item 4 end -->

				</div>
				<!-- Content row end -->
			</div>
			<!-- Container end -->
		
			<div class="container">
				<div class="row">
					<h2 class="widget-title">종료된 행사</h2>
				</div>
				<div class="row">
					<div class="col-sm-3 portfolio-static-item">
						<div class="grid">
							<figure class="m-0 effect-oscar">
								<img src="images/portfolio/portfolio5.jpg" alt="">
								<figcaption>
									<a class="view icon-pentagon"
										data-rel="prettyPhoto"
										href="images/portfolio/portfolio-bg2.jpg"><i
										class="fa fa-search"></i></a>
								</figcaption>
							</figure>
							<div class="portfolio-static-desc">
								<h3>evName param</h3>
								<span><a href="#">cateName param</a></span>
							</div>
						</div>
						<!--/ grid end -->
					</div>
					<!--/ item 5 end -->

					<div class="col-sm-3 portfolio-static-item">
						<div class="grid">
							<figure class="m-0 effect-oscar">
								<img src="images/portfolio/portfolio6.jpg" alt="">
								<figcaption>
									 <a class="view icon-pentagon"
										data-rel="prettyPhoto"
										href="images/portfolio/portfolio-bg3.jpg"><i
										class="fa fa-search"></i></a>
								</figcaption>
							</figure>
							<div class="portfolio-static-desc">
								<h3>evName param</h3>
								<span><a href="#">cateName param</a></span>
							</div>
						</div>
						<!--/ grid end -->
					</div>
					<!--/ item 6 end -->

					<div class="col-sm-3 portfolio-static-item">
						<div class="grid">
							<figure class="m-0 effect-oscar">
								<img src="images/portfolio/portfolio7.jpg" alt="">
								<figcaption>
									<a class="view icon-pentagon"
										data-rel="prettyPhoto"
										href="images/portfolio/portfolio-bg1.jpg"><i
										class="fa fa-search"></i></a>
								</figcaption>
							</figure>
							<div class="portfolio-static-desc">
								<h3>evName param</h3>
								<span><a href="#">cateName param</a></span>
							</div>
						</div>
						<!--/ grid end -->
					</div>
					<!--/ item 7 end -->

					<div class="col-sm-3 portfolio-static-item">
						<div class="grid">
							<figure class="m-0 effect-oscar">
								<img src="images/portfolio/portfolio8.jpg" alt="">
								<figcaption>
									<a class="view icon-pentagon"
										data-rel="prettyPhoto"
										href="images/portfolio/portfolio-bg2.jpg"><i
										class="fa fa-search"></i></a>
								</figcaption>
							</figure>
							<div class="portfolio-static-desc">
								<h3>evName param</h3>
								<span><a href="#">cateName param</a></span>
							</div>
						</div>
						<!--/ grid end -->
					</div>
					<!--/ item 8 end -->

				</div>
				<!-- Content row end -->
			</div>
			<!-- Container end -->
		</section>
		<!-- Portfolio end -->


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