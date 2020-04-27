<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%> 

<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="utf-8">
<title>BizCraft - Responsive Html5 Template</title>

<!-- mobile responsive meta -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

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
<link id="style-switch" href="css/presets/preset3.css" media="screen"
	rel="stylesheet" type="text/css">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
<!--[if lt IE 9]>
      <script src="plugins/html5shiv.js"></script>
      <script src="plugins/respond.min.js"></script>
    <![endif]-->

<!-- Main Stylesheet -->
<link href="css/style.css" rel="stylesheet">

<!--Favicon-->
<link rel="icon" href="img/favicon/favicon-32x32.png"
	type="image/x-icon" />
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="img/favicon/favicon-144x144.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="img/favicon/favicon-72x72.png">
<link rel="apple-touch-icon-precomposed"
	href="img/favicon/favicon-54x54.png">

</head>

<body>


	<div id="banner-area">
		<img src="images/banner/banner1.jpg" alt="" />
		<div class="parallax-overlay"></div>
		<!-- Subpage title start -->
		<div class="banner-title-content">
			<div class="text-center">
				<h2>채널 생성</h2>
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb justify-content-center">
						<li class="breadcrumb-item"><a href="#"> 홈으로 </a></li>
						<li class="breadcrumb-item text-white" aria-current="page">
							채널 생성</li>
					</ol>
				</nav>
			</div>
		</div>
		<!-- Subpage title end -->
	</div>
	<!-- Banner area end -->


	<div class="body-inner">



		<!-- Main container start -->
		<section id="main-container">
			<div class="container">

				<div class="gap-40"></div>

				<div class="row">
					<div class="col-md-7">
						<form id="contact-form" action="../front?key=createChannel" method="post"
							role="form" enctype="multipart/form-data">
							<div class="row">
								<div class="col-md-8">
									<div class="form-group">
										<label> 채널명 </label> <input class="form-control" name="chName"
											id="name" placeholder="" type="text" required>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label> 개설자 </label> <input class="form-control" name="userNo"
											type="text" required="required" value='${userNo}' readonly/>
											
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-4">
									<div class="form-group">
										<label> 채널 이미지 </label> <input type="file" name="chImg"
											id="file" accept="image/gif, image/jpeg, image/png">
									</div>
								</div>
							</div>
							<div class="form-group">
								<label> 채널 설명 </label>
								<textarea class="form-control" name="chDescription" id="chDescription"
									placeholder="" rows="10" required></textarea>
							</div>
							<div class="text-right">
								<br>
								<button class="btn btn-primary solid blank" type="submit">
									채널 생성 신청</button>
							</div>
						</form>
					</div>

					<div class="col-md-5">
						<div class="contact-info">
							<h2><br>주의 사항<br><br></h2>
							<p>
							<ul>
								<li>채널명은 한글 15자까지 입력</li><br>
								<li>이미지는 *** Mb 까지 업로드</li><br>
								<li>이미지는 jpg, png, gif 파일만 등록할 수 있습니다</li><br>
								<li>채널 설명은 한글 250자까지 입력</li><br>
								<li>할말이 더 있던가요</li>
							</ul>
							</p>

						</div>
					</div>
				</div>
			</div>
			<!--/ container end -->
		</section>
		<!--/ Main container end -->




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