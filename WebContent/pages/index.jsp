<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
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

<!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
<!--[if lt IE 9]>
      <script src="plugins/html5shiv.js"></script>
      <script src="plugins/respond.min.js"></script>
    <![endif]-->

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

</head>

<body>
	<c:import url="headerTop.jsp" />
	<div class="body-inner">


		<c:import url="header.jsp" />

		<!-- Slider start -->
		<section id="home" class="p-0">
			<div id="carouselExampleIndicators" class="carousel slide"
				data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#carouselExampleIndicators" data-slide-to="0"
						class="active"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="6"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="7"></li>
				</ol>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img class="d-block w-100" src="images/mainSlider/01.jpg"
							alt="First slide">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100" src="images/mainSlider/02.png"
							alt="Second slide">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100" src="images/mainSlider/03.jpg"
							alt="Third slide">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100" src="images/mainSlider/04.jpg"
							alt="Third slide">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100" src="images/mainSlider/05.jpg"
							alt="Third slide">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100" src="images/mainSlider/06.jpg"
							alt="Third slide">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100" src="images/mainSlider/07.jpg"
							alt="Third slide">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100" src="images/mainSlider/08.jpg"
							alt="Third slide">
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleIndicators"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>

			<!--/ Main slider end -->
		</section>
		<!--/ Slider end -->
		<!-- Service box start -->
		<section id="service" class="">
			<div class="container">
				<div class="row">
					<div class="col-md-12 heading">
						</span>
						<h2 class="title">
							가장 인기있는 카테고리 <span class="title-desc">관심지수가 가장 높은 인기 카테고리는
								여기서 찾아보세요!</span>
						</h2>
					</div>
				</div>
				<!-- Title row end -->

				<div class="row ">
					<!-- category row -->
					<div class="col s12 mt-3 mt-xl-5"
						style="width: 100%; left: auto; right: auto;">
						<div class="d-flex   justify-content-between category-main">
							<div class="part1 justify-content-between"
								style="width: 47%; display: flex; justify-content: space-between;">
								<div class="wow fadeInDown" data-wow-delay=".5s"
									style="width: 70px">
									<div class="service-content text-center">
										<a href="#"> <img
											src="images/category/category-business-hover2.svg"></span>
											<h3>사업/창업</h3>
										</a>
									</div>
								</div>
								<!--/ End first service -->

								<div class="wow fadeInDown" data-wow-delay=".5s"
									style="width: 70px">
									<div class="service-content text-center">
										<a href="#"> <img
											src="images/category/category-culture-hover2.svg"></span>
											<h3>문화/예술</h3>
										</a>

									</div>
								</div>
								<!--/ End Second service -->

								<div class="wow fadeInDown" data-wow-delay=".5s"
									style="width: 70px">
									<div class="service-content text-center">
										<a href="#"> <img
											src="images/category/category-marketing-hover2.svg"></span>
											<h3>마케팅/홍보</h3>
										</a>

									</div>
								</div>
								<!--/ End Third service -->

								<div class="wow fadeInDown" data-wow-delay=".5s"
									style="width: 70px">
									<div class="service-content text-center">
										<a href="#"> <img
											src="images/category/category-tech-hover2.svg"></span>
											<h3>과학/기술</h3>
										</a>

									</div>
								</div>
							</div>
							<!---part1-->
							<div class="part2 justify-content-between "
								style="width: 47%; display: flex; justify-content: space-between;">

								<div class=" wow fadeInDown" data-wow-delay=".5s"
									style="width: 70px">
									<div class="service-content text-center">
										<a href="#"> <img
											src="images/category/category-communite-hover2.svg"></span>
											<h3>커뮤니티</h3>
										</a>

									</div>
								</div>
								<!--/ End first service -->

								<div class="wow fadeInDown" data-wow-delay=".5s"
									style="width: 70px">
									<div class="service-content text-center">
										<a href="#"> <img
											src="images/category/category-social-hover2.svg"></span>
											<h3>비영리/소셜</h3>
										</a>

									</div>
								</div>
								<!--/ End Second service -->

								<div class=" wow fadeInDown" data-wow-delay=".5s"
									style="width: 70px">
									<div class="service-content text-center">
										<a href="#"> <img
											src="images/category/category-youth-hover2.svg"></span>
											<h3>청춘/청년</h3>
										</a>
									</div>
								</div>
								<!--/ End Third service -->

								<div class="wow fadeInDown" data-wow-delay=".5s"
									style="width: 70px">
									<div class="service-content text-center" style="width: 70px;">
										<a href="#"> <img
											src="images/category/category-it-hover2.svg"></span>
											<h3>IT/개발</h3>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--category row end-->
			</div>
			<!-- Content row end -->
	</div>
	<!--/ Container end -->
	</section>
	<!--/ Service box end -->

	<!-- Portfolio start -->
	<section id="portfolio" class="portfolio">
		<div class="container">
			<div class="row">
				<div class="col-md-12 heading">
					<h2 class="title">
						오늘 이 행사 어때요? <span class="title-desc">지금 가장 인기 있는 행사들만
							모았습니다 </span>
					</h2>

				</div>
			</div>
			<!-- Title row end -->
			<!-- img start-->
			<div class="row">
				<div class="col-sm-3 portfolio-static-item wow fadeInUp"
					data-wow-delay=".5s">
					<div class="grid">
						<figure class="m-0 effect-oscar">
							<img src="images/thumnail/01.jpg" alt="">
							<figcaption>
								<a class="link icon-pentagon" href="portfolio-item.html"><i
									class="fa fa-link"></i></a> <a class="view icon-pentagon"
									data-rel="prettyPhoto" href="images/thumnail/01.jpg"><i
									class="fa fa-search"></i></a>
							</figcaption>
						</figure>
						<div class="portfolio-static-desc">
							<h3>이벤터스 웨비나, 하루만에 뽀개기!</h3>
							<span><a href="#"></a></span>
						</div>
					</div>
					<!--/ grid end -->
				</div>
				<!--/ item 1 end -->

				<div class="col-sm-3 portfolio-static-item  wow fadeInUp"
					data-wow-delay="1s">
					<div class="grid">
						<figure class="m-0 effect-oscar">
							<img src="images/thumnail/02.jpg" alt="">
							<figcaption>
								<a class="link icon-pentagon" href="portfolio-item.html"><i
									class="fa fa-link"></i></a> <a class="view icon-pentagon"
									data-rel="prettyPhoto" href="images/thumnail/02.jpg"><i
									class="fa fa-search"></i></a>
							</figcaption>
						</figure>
						<div class="portfolio-static-desc">
							<h3>[플리토] 외국계 취업 컨설턴트 '마차카피'의 합격하는 레쥬메 & 커버레터</h3>
							<span><a href="#"></a></span>
						</div>
					</div>
					<!--/ grid end -->
				</div>
				<!--/ item 2 end -->

				<div class="col-sm-3 portfolio-static-item wow fadeInUp"
					data-wow-delay="1.4s">
					<div class="grid">
						<figure class="m-0 effect-oscar">
							<img src="images/thumnail/03.jpg" alt="">
							<figcaption>
								<a class="link icon-pentagon" href="portfolio-item.html"><i
									class="fa fa-link"></i></a> <a class="view icon-pentagon"
									data-rel="prettyPhoto" href="images/thumnail/03.jpg"><i
									class="fa fa-search"></i></a>
							</figcaption>
						</figure>
						<div class="portfolio-static-desc">
							<h3>[드림플러스 월간 IT 트렌드] 언택트, 뉴 노멀의 시대</h3>
							<span><a href="#"> </a></span>
						</div>
					</div>
					<!--/ grid end -->
				</div>
				<!--/ item 3 end -->

				<div class="col-sm-3 portfolio-static-item  wow fadeInUp"
					data-wow-delay="1.6s">
					<div class="grid">
						<figure class="m-0 effect-oscar">
							<img src="images/thumnail/04.jpg" alt="">
							<figcaption>
								<a class="link icon-pentagon" href="portfolio-item.html"><i
									class="fa fa-link"></i></a> <a class="view icon-pentagon"
									data-rel="prettyPhoto" href="images/thumnail/04.jpg"><i
									class="fa fa-search"></i></a>
							</figcaption>
						</figure>
						<div class="portfolio-static-desc">
							<h3>렉처시리즈#1(작은 팀으로 큰 일을 한다는 것)</h3>
							<span><a href="#"> </a></span>
						</div>
					</div>
					<!--/ grid end -->
				</div>
				<!--/ item 4 end -->

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
							<h2 class="title">
								AI 추천 <span class="title-desc">회원가입 후에 더욱 정교한 추천을 만나보세요!
								</span>
							</h2>

						</div>
					</div>
					<!-- Title row end -->
					<!-- img start-->
					<div class="row">
						<div class="col-sm-3 portfolio-static-item  wow fadeInUp"
							data-wow-delay=".5s">
							<div class="grid">
								<figure class="m-0 effect-oscar">
									<img src="images/thumnail/01.jpg" alt="">
									<figcaption>
										<a class="link icon-pentagon" href="portfolio-item.html"><i
											class="fa fa-link"></i></a> <a class="view icon-pentagon"
											data-rel="prettyPhoto" href="images/thumnail/01.jpg"><i
											class="fa fa-search"></i></a>
									</figcaption>
								</figure>
								<div class="portfolio-static-desc">
									<h3>이벤터스 웨비나, 하루만에 뽀개기!</h3>
									<span><a href="#"></a></span>
								</div>
							</div>
							<!--/ grid end -->
						</div>
						<!--/ item 1 end -->

						<div class="col-sm-3 portfolio-static-item  wow fadeInUp"
							data-wow-delay="1s">
							<div class="grid">
								<figure class="m-0 effect-oscar">
									<img src="images/thumnail/02.jpg" alt="">
									<figcaption>
										<a class="link icon-pentagon" href="portfolio-item.html"><i
											class="fa fa-link"></i></a> <a class="view icon-pentagon"
											data-rel="prettyPhoto" href="images/thumnail/02.jpg"><i
											class="fa fa-search"></i></a>
									</figcaption>
								</figure>
								<div class="portfolio-static-desc">
									<h3>[플리토] 외국계 취업 컨설턴트 '마차카피'의 합격하는 레쥬메 & 커버레터</h3>
									<span><a href="#"></a></span>
								</div>
							</div>
							<!--/ grid end -->
						</div>
						<!--/ item 2 end -->

						<div class="col-sm-3 portfolio-static-item  wow fadeInUp"
							data-wow-delay="1.4s">
							<div class="grid">
								<figure class="m-0 effect-oscar">
									<img src="images/thumnail/03.jpg" alt="">
									<figcaption>
										<a class="link icon-pentagon" href="portfolio-item.html"><i
											class="fa fa-link"></i></a> <a class="view icon-pentagon"
											data-rel="prettyPhoto" href="images/thumnail/03.jpg"><i
											class="fa fa-search"></i></a>
									</figcaption>
								</figure>
								<div class="portfolio-static-desc">
									<h3>[드림플러스 월간 IT 트렌드] 언택트, 뉴 노멀의 시대</h3>
									<span><a href="#"></a></span>
								</div>
							</div>
							<!--/ grid end -->
						</div>
						<!--/ item 3 end -->

						<div class="col-sm-3 portfolio-static-item  wow fadeInUp"
							data-wow-delay="1.6s">
							<div class="grid">
								<figure class="m-0 effect-oscar">
									<img src="images/thumnail/04.jpg" alt="">
									<figcaption>
										<a class="link icon-pentagon" href="portfolio-item.html"><i
											class="fa fa-link"></i></a> <a class="view icon-pentagon"
											data-rel="prettyPhoto" href="images/thumnail/04.jpg"><i
											class="fa fa-search"></i></a>
									</figcaption>
								</figure>
								<div class="portfolio-static-desc">
									<h3>렉처시리즈#1(작은 팀으로 큰 일을 한다는 것)</h3>
									<span><a href="#"></a></span>
								</div>
							</div>
							<!--/ grid end -->
						</div>
						<!--/ item 4 end -->

					</div>
					<!--/ Container end -->
				</div>
				<!-- Content row end -->

			</div>
			<!--/ Container end -->
	</section>
	<!--/ Feature box end -->

	<section id="image-block" class="my-xl-6 my-5">
		<div class="container">

			<div class="row">
				<div class="col s12 m6 l6 wow slideInLeft">
					<a href="/Account/Login?ReturnUrl=CreateEvent" target="_blank">
						<img class="py-1" src="images/footer_banner_eventcreate01.png"
						width="100%" alt="행사개설! 이벤터스로 간편하게 행사 모집을 시작하세요!"
						style="max-height: 205px; height: 100%" />
					</a>
				</div>
				<div class="col s12 m6 l6 wow slideInRight">
					<a href="/l/NewsLetter" target="_blank"> <img class="py-1"
						src="images/footer_banner_newletter01.png" width="100%"
						alt="뉴스레터 신청하기! 관심분야의 행사 소식을 가장 먼저 접하세요!"
						style="max-height: 205px; height: 100%" />
					</a>
				</div>
			</div>
		</div>
	</section>
	<!--/ Image block end -->
	<!--공지사항 start-->
	<div class="footer-copyright white hide-on-small-only"
		style="padding: 15px 0; border-top: 1px solid #e5e5e5; border-bottom: 1px solid #e5e5e5">
		<div class="container main-container">
			<div class="row">
				<div class="col s12 col l7 ">
					<div class="no-text-overflow" style="line-height: 45px">
						<span class="txt-14 font-weight-500"> <a
							class="eventus-purple-text" href="#">공지사항</a> <span
							class="px-3 black-text">|</span> <a class="black-text"
							href="/Notice/62"> 메일 발송 지연 복구 안내 </a>
						</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--공지사항end-->

	<!-- footer -->
	<c:import url="footer.jsp"></c:import>



</body>
</html>