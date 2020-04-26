<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
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
  <!-- webFont -->
  	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<style>
	@import "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.css";
	* {
		font-family: 'Noto Sans KR', sans-serif !important;
	}
	.navbar-nav .nav-link {
		color :#000;  
		padding: 15px 15px 10px !important;
		font-weight:400;
	}
	.navbar-nav .nav-link .subMenu {
		font-size: 12px!important;
	}
	.searchForm {margin: 0 auto;}
	img.mainLogo {padding-top:10px;}
	.dropdown-item {border:none!important;}
</style>
</head>

<body>

	<div class="body-inner">

<!-- Header start -->
<header id="header" class="header" role="banner">
	<a class="navbar-brand navbar-bg" href="index.html"><img class="img-fluid float-right mainLogo" src="images/mainLogo2.jpg" width="50%" alt="logo"></a>
	<div class="container">
		<nav class="navbar navbar-expand-lg">
			<div class="collapse navbar-collapse text-center" id="subNavigation">
				<ul class="navbar-nav ml-auto subMenu">
					<li class="nav-item active"><a class="nav-link" href="#" role="button" href="#">로그인</a></li>
					<li class="nav-item active"><a class="nav-link" href="#" role="button" href="#">로그아웃</a></li>
					<li class="nav-item active"><a class="nav-link" href="#" role="button"  href="#">회원가입</a></li>
					<li class="nav-item dropdown active">
						<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false">
							마이페이지
						</a>
						<div class="dropdown-menu" style="border: 1.5px solid #222;
    border-radius: 10px;">
							<a class="dropdown-item" href="index.html">전체 신청내역</a>
							<a class="dropdown-item" href="index-2.html">관심 행사 목록</a>
							<a class="dropdown-item" href="index-3.html">내가 쓴 글</a>
							<a class="dropdown-item" href="index-4.html">회원 정보 수정</a>
						</div>
					</li>
				</ul>
			</div>
		</nav>
		<nav class="navbar navbar-expand-lg mainMenu">
			<button class="navbar-toggler ml-auto border-0 rounded-0 text-white" type="button" data-toggle="collapse"
				data-target="#navigation" aria-controls="navigation" aria-expanded="false" aria-label="Toggle navigation">
				<span class="fa fa-bars"></span>
			</button>

			<div class="collapse navbar-collapse text-center" id="navigation">
				
				<form class="form-inline my-2 my-lg-2 navbar-right searchForm">
      				<input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      				<button class="btn btn-outline-primary my-2 my-sm-0" type="submit"><span class="glyphicon glyphicon-search" aria-hidden="true"></span>검색</button>
    			</form>

				<ul class="nav navbar-nav navbar-right ml-auto">
					<li class="nav-item active">
						<a class="nav-link" href="#" role="button" >
							행사검색
						</a>
					</li>
					<li class="nav-item active">
						<a class="nav-link" href="#" role="button">
							회사소개
						</a>
					</li>
					<li class="nav-item active">
						<a class="nav-link" href="#" role="button">
							신청내역확인
						</a>
					</li>
					<li class="nav-item active">
						<a class="nav-link" href="#" role="button">
							행사개설
						</a>
					</li>
					
				</ul>
			</div>
		</nav>
	</div><!--container end-->
</header>
<!--/ Header end -->
</div><!--/ innerbody end -->
</body>
</html>