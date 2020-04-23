<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

 

<!DOCTYPE html>

<html lang="zxx">

 

<head>

  <meta charset="utf-8">

  <title>채널관리</title>

  <style>

  	#btn{

  		margin-right: 400px;

  	}

  	#chDesc{

  		background-color: #f6f6f6;

  		min-height: 350px;

  		padding-top: 30px; 

  		padding-left: 20px;

  		text-align: left;

  	}

  	#p{

  		float:left;

  		margin-left: 10px;

  	}

  	#makeEv{

  		margin: 0px;
  	}
  	.btnOpen {float: right;
    padding-right: 50px;
    position: relative;
    top: -30px; }

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

 

<!-- Main container start -->

<section id="main-container">

 

		<!-- channel manage top -->

		<div class="row">

			<div class="col-md-12 heading text-center">

				<h2 class="title2" style="text-align: center; font-weight: bold">채널 관리

				<span class="title-desc"></span>

				</h2>

			</div>

		</div><!-- Title row end -->

		<!--Isotope filter start -->

		<div class="row text-right">

			<div class="col-12">

				<div class="isotope-nav" data-isotope-nav="isotope">

					<ul>

						<li><a href="#" data-filter=".make-channel" id="btn">채널 개설</a></li>

					</ul>

				</div>

			</div>

		</div><!-- Isotope filter end -->

	<div class="container">

		<div class="row">

			<div class="col-md-12 heading">

				<span class="title-icon classic float-left"><i class="fa fa-users"></i></span>

				<h4 class="title classic">채널이름</h4>

			</div>

		</div>

		<div class="row text-center">

			<div class="col-md-3 col-sm-6">

				<div class="team wow slideInLeft">

					<div class="img-hexagon">

						<img src="images/team/team1.jpg" alt="">

						<span class="img-top"></span>

						<span class="img-bottom"></span>

					</div>

					<div class="team-content">

						<h3>개설자 이름</h3>

						<p>개설자 email</p>

						<div class="team-social">

							<a class="fb" href="#"><i class="fa fa-facebook"></i></a>

							<a class="twt" href="#"><i class="fa fa-twitter"></i></a>

							<a class="gplus" href="#"><i class="fa fa-google-plus"></i></a>

							<a class="linkdin" href="#"><i class="fa fa-linkedin"></i></a>

							<a class="dribble" href="#"><i class="fa fa-dribbble"></i></a>

						</div>

					</div>

				</div>

			</div>

			<!--/ Team 1 end -->

			<div class="col-md-9 col-sm-6">

			<div id="chDesc" class="team team-list wow slideInRight">

				<h4>개설행사: n개</h4>
				<div class="cd-full-width btnOpen">

					<a href="#0" id="makeEv" class="btn btn-primary solid cd-btn">행사개설</a>

				</div> <!-- .cd-full-width -->	

				<a href=""><p id="p"><i class="fa fa-users"></i>&nbsp;&nbsp;채널설정</p></a>

				<p id="p">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>

				<a href=""><p id="p"><i class="fa fa-users"></i>&nbsp;&nbsp;권한설정</p></a>

				<p id="p">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>

				<a href=""><p id="p"><i class="fa fa-users"></i>&nbsp;&nbsp;채널삭제</p></a><br>

				<div class="col-sm-5 portfolio-static-item">
				<div class="grid">
					<figure class="m-0 effect-oscar">
						<img src="images/thumnail/03.jpg" alt="">
						<figcaption>
							<a class="link icon-pentagon" href="portfolio-item.html"><i class="fa fa-link"></i></a>
							<a class="view icon-pentagon" data-rel="prettyPhoto" href="images/thumnail/03.jpg"><i
									class="fa fa-search"></i></a>
						</figcaption>
					</figure>
					<div class="portfolio-static-desc">
						<h3>[드림플러스 월간 IT 트렌드] 언택트, 뉴 노멀의 시대</h3>
						<span><a href="#">Ui Elements</a></span>
					</div>
				</div>
				<!--/ grid end -->
			</div>
			<!--/ item 3 end -->

			<div class="col-sm-5 portfolio-static-item">
				<div class="grid">
					<figure class="m-0 effect-oscar">
						<img src="images/thumnail/04.jpg" alt="">
						<figcaption>
							<a class="link icon-pentagon" href="portfolio-item.html"><i class="fa fa-link"></i></a>
							<a class="view icon-pentagon" data-rel="prettyPhoto" href="images/thumnail/04.jpg"><i
									class="fa fa-search"></i></a>
						</figcaption>
					</figure>
					<div class="portfolio-static-desc">
						<h3>렉처시리즈#1(작은 팀으로 큰 일을 한다는 것)</h3>
						<span><a href="#">Media Elements</a></span>
					</div>
				</div>
				<!--/ grid end -->
			</div>

				<!-- <button><a href=""></a>행사 개설</button> -->

			</div>

			<!--/ team team-list wow slideInRight end -->

			</div>

			<!--/ Team 2 end -->

		</div>

		<!--/ Content row end -->

 

 

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