<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html lang="zxx">

<head>
  <meta charset="utf-8">
  <title>행사 검색</title>
  	<!--졔가 만든 style -->
  <style>
  	.option{
  		color: "navy";
  		
  	}
  	.select{
  		margin-left: 55%;
  	}
  	eTitle.hover {
  		text-decoration: none;
  		color: inherit;
	}
	img{
		width: 200px;
		height: 180px;
	}
	eTitle{
		display: block; 
		white-space: nowrap; 
		overflow: hidden; 
		text-overflow: ellipsis;
	}
	.eTitle:hover {
  		text-decoration: none;
  		color: inherit;
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


<!-- event top -->
		<div class="row">
			<div class="col-md-12 heading text-center">
				<h2 class="title2" style="font-weight: bold">행사 목록<span class="title-desc"></span></h2>
				<select id="select" class="select">
					<option id="option" class="option" selected="selected">행사 분야&nbsp;&nbsp;</option>
				</select>
			</div>
			
		</div><!-- Title row end -->
<br>

<h4 style="margin-left:15%">총 n개의 검색 결과가 있습니다.</h4>
<!-- Portfolio start -->
<section id="main-container" class="portfolio-static">
	<div class="container">
		<div class="row">
			<div class="col-sm-4 portfolio-static-item">
				<div class="grid">
					<figure class="m-0 effect-oscar">
						<img src="https://eventusstorage.blob.core.windows.net/evs/Image/event/16764/ProjectInfo/Cover/e3f492fb160d420ca4483e56964b710d.jpg?fixed" alt="">
						<figcaption>
							<a class="link icon-pentagon" href="portfolio-item.html"><i class="fa fa-link"></i></a>
							<a class="view icon-pentagon" data-rel="prettyPhoto" href="images/portfolio/portfolio-bg1.jpg"><i
									class="fa fa-search"></i></a>
						</figcaption>
					</figure>
					<div class="portfolio-static-desc">
					<table>
						<tr><td><a href="#"><h3 id="eTitle" class="eTitle">[EVENT-US] 이벤터스 웨비나, 하루만에 뽀개기!</h3></a></td></tr>
						<tr><td><a href="#">행사기간</a></td></tr>
						<tr><td><a href="#">유/무료</a></td></tr>
					</table>
						
					</div>
				</div>
				<!--/ grid end -->
			</div>
			<!--/ item 1 end -->

			<div class="col-sm-4 portfolio-static-item">
				<div class="grid">
					<figure class="m-0 effect-oscar">
						<img src="https://eventusstorage.blob.core.windows.net/evs/Image/tentuplay/16716/ProjectInfo/Cover/a447a98ed1c142359cf6444ace7908ac.jpg?fixed" alt="">
						<figcaption>
							<a class="link icon-pentagon" href="portfolio-item.html"><i class="fa fa-link"></i></a>
							<a class="view icon-pentagon" data-rel="prettyPhoto" href="images/portfolio/portfolio-bg2.jpg"><i
									class="fa fa-search"></i></a>
						</figcaption>
					</figure>
					<div class="portfolio-static-desc">
					<table>
						<tr><td><a href="#"><h3 id="eTitle" class="eTitle">[DREAMPLUS Insight Night(인싸 나잇)] 인싸 스타트업 대표님들의 인사이트 강연(키튼플래닛, 홈핏)</h3></a></td></tr>
						<tr><td><a href="#">행사기간</a></td></tr>
						<tr><td><a href="#">유/무료</a></td></tr>
					</table>
					</div>
				</div>
				<!--/ grid end -->
			</div>
			<!--/ item 2 end -->

			<div class="col-sm-4 portfolio-static-item">
				<div class="grid">
					<figure class="m-0 effect-oscar">
						<img src="https://eventusstorage.blob.core.windows.net/evs/Image/dreamplusgangnam/16372/ProjectInfo/Cover/489df4119075489c986f6ea646545124.jpg?fixed" alt="">
						<figcaption>
							<a class="link icon-pentagon" href="portfolio-item.html"><i class="fa fa-link"></i></a>
							<a class="view icon-pentagon" data-rel="prettyPhoto" href="images/portfolio/portfolio-bg3.jpg"><i
									class="fa fa-search"></i></a>
						</figcaption>
					</figure>
					<div class="portfolio-static-desc">
						<h3>Your Business</h3>
						<span><a href="#">Ui Elements</a></span>
					</div>
				</div>
				<!--/ grid end -->
			</div>
			<!--/ item 3 end -->

			<div class="col-sm-4 portfolio-static-item">
				<div class="grid">
					<figure class="m-0 effect-oscar">
						<img src="images/portfolio/portfolio4.jpg" alt="">
						<figcaption>
							<a class="link icon-pentagon" href="portfolio-item.html"><i class="fa fa-link"></i></a>
							<a class="view icon-pentagon" data-rel="prettyPhoto" href="images/portfolio/portfolio-bg1.jpg"><i
									class="fa fa-search"></i></a>
						</figcaption>
					</figure>
					<div class="portfolio-static-desc">
						<h3>Prego Match</h3>
						<span><a href="#">Media Elements</a></span>
					</div>
				</div>
				<!--/ grid end -->
			</div>
			<!--/ item 4 end -->

			<div class="col-sm-4 portfolio-static-item">
				<div class="grid">
					<figure class="m-0 effect-oscar">
						<img src="images/portfolio/portfolio5.jpg" alt="">
						<figcaption>
							<a class="link icon-pentagon" href="portfolio-item.html"><i class="fa fa-link"></i></a>
							<a class="view icon-pentagon" data-rel="prettyPhoto" href="images/portfolio/portfolio-bg2.jpg"><i
									class="fa fa-search"></i></a>
						</figcaption>
					</figure>
					<div class="portfolio-static-desc">
						<h3>Fashion Brand</h3>
						<span><a href="#">Graphics Media</a></span>
					</div>
				</div>
				<!--/ grid end -->
			</div>
			<!--/ item 5 end -->

			<div class="col-sm-4 portfolio-static-item">
				<div class="grid">
					<figure class="m-0 effect-oscar">
						<img src="images/portfolio/portfolio6.jpg" alt="">
						<figcaption>
							<a class="link icon-pentagon" href="portfolio-item.html"><i class="fa fa-link"></i></a>
							<a class="view icon-pentagon" data-rel="prettyPhoto" href="images/portfolio/portfolio-bg3.jpg"><i
									class="fa fa-search"></i></a>
						</figcaption>
					</figure>
					<div class="portfolio-static-desc">
						<h3>The Insidage</h3>
						<span><a href="#">Material Design</a></span>
					</div>
				</div>
				<!--/ grid end -->
			</div>
			<!--/ item 6 end -->

			<div class="col-sm-4 portfolio-static-item">
				<div class="grid">
					<figure class="m-0 effect-oscar">
						<img src="images/portfolio/portfolio7.jpg" alt="">
						<figcaption>
							<a class="link icon-pentagon" href="portfolio-item.html"><i class="fa fa-link"></i></a>
							<a class="view icon-pentagon" data-rel="prettyPhoto" href="images/portfolio/portfolio-bg1.jpg"><i
									class="fa fa-search"></i></a>
						</figcaption>
					</figure>
					<div class="portfolio-static-desc">
						<h3>Light Carpet</h3>
						<span><a href="#">Mockup</a></span>
					</div>
				</div>
				<!--/ grid end -->
			</div>
			<!--/ item 7 end -->

			<div class="col-sm-4 portfolio-static-item">
				<div class="grid">
					<figure class="m-0 effect-oscar">
						<img src="images/portfolio/portfolio8.jpg" alt="">
						<figcaption>
							<a class="link icon-pentagon" href="portfolio-item.html"><i class="fa fa-link"></i></a>
							<a class="view icon-pentagon" data-rel="prettyPhoto" href="images/portfolio/portfolio-bg2.jpg"><i
									class="fa fa-search"></i></a>
						</figcaption>
					</figure>
					<div class="portfolio-static-desc">
						<h3>Amazing Keyboard</h3>
						<span><a href="#">Photography</a></span>
					</div>
				</div>
				<!--/ grid end -->
			</div>
			<!--/ item 8 end -->

		</div><!-- Content row end -->
	</div><!-- Container end -->
</section><!-- Portfolio end -->

<div class="gap-40"></div>
</div><!-- Body inner end -->

<!-- jQuery -->
<script src="plugins/jQuery/jquery.min.js"></script>
<!-- Bootstrap JS -->
<script src="plugins/bootstrap/bootstrap.min.js"></script>
<!-- Style Switcher -->
<script type="text/javascript" src="plugins/style-switcher.js"></script>
<!-- PrettyPhoto -->
<script type="text/javascript" src="plugins/jquery.prettyPhoto.js"></script>
<!-- Bxslider -->
<script type="text/javascript" src="plugins/flex-slider/jquery.flexslider.js"></script>
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