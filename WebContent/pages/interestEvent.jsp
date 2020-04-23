<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="zxx">

<head>
  <meta charset="utf-8">
  <title>관심행사</title>
  <style>
  	#listImg{
		width: 100%;
		height: 270px;
	}
	.sidebar{
		min-height:270px;
		width:100%;
		background-color: #f6f6f6;
		padding-left:10px;
	}
  </style>
  <!-- mobile responsive meta -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  
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
	<link id="style-switch" href="css/presets/preset3.css" media="screen" rel="stylesheet" type="text/css">

	<!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
    <!--[if lt IE 9]>
      <script src="plugins/html5shiv.js"></script>
      <script src="plugins/respond.min.js"></script>
    <![endif]-->

  <!-- Main Stylesheet -->
  <link href="css/style.css" rel="stylesheet">
  
  <!--Favicon-->
	<link rel="icon" href="img/favicon/favicon-32x32.png" type="image/x-icon" />
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="img/favicon/favicon-144x144.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/favicon/favicon-72x72.png">
	<link rel="apple-touch-icon-precomposed" href="img/favicon/favicon-54x54.png">

</head>

<body>

	<!-- Style switcher start -->
	<div class="style-switch-wrapper">
		<div class="style-switch-button">
			<i class="fa fa-sliders"></i>
		</div>
		<h3>Style Options</h3>
		<button id="preset1" class="btn btn-sm btn-primary"></button>
		<button id="preset2" class="btn btn-sm btn-primary"></button>
		<button id="preset3" class="btn btn-sm btn-primary"></button>
		<button id="preset4" class="btn btn-sm btn-primary"></button>
		<button id="preset5" class="btn btn-sm btn-primary"></button>
		<button id="preset6" class="btn btn-sm btn-primary"></button>
		<br/><br/>
		<a class="btn btn-sm btn-primary close-styler float-right">Close X</a>
	</div>
	<!-- Style switcher end -->

	<div class="body-inner">

<!-- interestEvent item start -->
<section id="portfolio-item">
<!-- interest event top -->
		<div class="row">
			<div class="col-md-12 heading text-center">
				<h2 class="title2" style="text-align: center; font-weight: bold;">관심 행사
				<span class="title-desc"></span>
				</h2>
			</div>
		</div><!-- Title row end -->
	<div class="container">
		<!-- interestEvent item row start -->
		<div class="row">
			<!-- interestEvent item img start -->
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="portfolio-slider">
					<div class="flexportfolio flexslider">
						<ul class="slides">
							<li><a href=""><img id="listImg" src="https://eventusstorage.blob.core.windows.net/evs/Image/fintechkisa/16666/ProjectInfo/Cover/b3448c29214445e2a3a7033ab6242ef7.jpg?fixed" alt=""></a></li>
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
						<h4 class="widget-title">행사이름</h4>
						<h5 class="widget-title">채널이름</h5>
						<p>기간</p>
						<p>유/무료</p>
						<p><a href="#" class="project-btn btn btn-primary">참가신청</a>
							<a href="#" class="project-btn btn btn-primary">삭제</a></p>
					</div>
				</div>
			</div>
			<!-- sidebar end -->
		</div><!-- interestEvent item row end -->
	</div><!-- Container end -->
	<br>
	<div class="container">
		<!-- interestEvent item row start -->
		<div class="row">
			<!-- interestEvent item img start -->
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="portfolio-slider">
					<div class="flexportfolio flexslider">
						<ul class="slides">
							<li><a href=""><img id="listImg" src="https://eventusstorage.blob.core.windows.net/evs/Image/wisdom2korea/15201/ProjectInfo/Cover/88481d0ea4d1417cabe87f1a63a2a3b5.jpg?fixed" alt=""></a></li>
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
						<h4 class="widget-title">행사이름</h4>
						<h5 class="widget-title">채널이름</h5>
						<p>기간</p>
						<p>유/무료</p>
						<p><a href="#" class="project-btn btn btn-primary">참가신청</a>
							<a href="#" class="project-btn btn btn-primary">삭제</a></p>
					</div>
				</div>
			</div>
			<!-- sidebar end -->
		</div><!-- interestEvent item row end -->
	</div><!-- Container end -->
</section><!-- interestEvent item end -->

<div class="gap-40"></div>

	

</div><!-- Body inner end -->

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
<script type="text/javascript" src="plugins/flex-slider/jquery.flexslider.js"></script>
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
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU&libraries=places"></script>
<script src="plugins/google-map/gmap.js"></script>

<!-- Main Script -->
<script src="js/script.js"></script>

</body>

</html>