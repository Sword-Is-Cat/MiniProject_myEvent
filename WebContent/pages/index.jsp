<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
	figure.effect-oscar figcaption,.grid figure figcaption { padding:0!important; }
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

<!-- Slider start -->
<section id="home" class="p-0">
	<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
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
      <img class="d-block w-100" src="images/mainSlider/01.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/mainSlider/02.png" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/mainSlider/03.jpg" alt="Third slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/mainSlider/04.jpg" alt="Third slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/mainSlider/05.jpg" alt="Third slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/mainSlider/06.jpg" alt="Third slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/mainSlider/07.jpg" alt="Third slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/mainSlider/08.jpg" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
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
				<h2 class="title">가장 인기있는 카테고리 <span class="title-desc">관심지수가 가장 높은 인기 카테고리는 여기서 찾아보세요!</span></h2>
			</div>
		</div><!-- Title row end -->

		<div class="row "><!--category row-->
			<div class="col-md-12">
			<div class="category-1 cols-6" style=" display: flex;justify-content: space-between;">
			 	<div class="col-sm wow fadeInDown" data-wow-delay=".5s">
					<div class="service-content text-center">
						<img src="images/category/category-business-hover2.svg"></span>
						<h3>사업/창업</h3>

					</div>
				</div>
				<!--/ End first service -->

				<div class="col-sm wow fadeInDown" data-wow-delay=".5s">
					<div class="service-content text-center">
						<img src="images/category/category-business-hover2.svg"></span>
						<h3>사업/창업</h3>

					</div>
				</div>
				<!--/ End Second service -->

				<div class="col-sm wow fadeInDown" data-wow-delay=".5s">
					<div class="service-content text-center">
						<img src="images/category/category-business-hover2.svg"></span>
						<h3>사업/창업</h3>

					</div>
				</div>
				<!--/ End Third service -->

				<div class="col-sm wow fadeInDown" data-wow-delay=".5s">
					<div class="service-content text-center">
						<img src="images/category/category-business-hover2.svg"></span>
						<h3>사업/창업</h3>

					</div>
				</div>

			 </div><!--category1 end-->
			<div class="category-2  cols-6" style=" justify-content: space-between; display:flex;"> 
			 	<div class="col-sm wow fadeInDown" data-wow-delay=".5s">
					<div class="service-content text-center">
						<img src="images/category/category-business-hover2.svg"></span>
						<h3>사업/창업</h3>

					</div>
				</div>
				<!--/ End first service -->

				<div class="col-sm wow fadeInDown" data-wow-delay=".5s">
					<div class="service-content text-center">
						<img src="images/category/category-business-hover2.svg"></span>
						<h3>사업/창업</h3>

					</div>
				</div>
				<!--/ End Second service -->

				<div class="col-sm wow fadeInDown" data-wow-delay=".5s">
					<div class="service-content text-center">
						<img src="images/category/category-business-hover2.svg"></span>
						<h3>사업/창업</h3>

					</div>
				</div>
				<!--/ End Third service -->

				<div class="col-sm wow fadeInDown" data-wow-delay=".5s">
					<div class="service-content text-center">
						<img src="images/category/category-business-hover2.svg"></span>
						<h3>사업/창업</h3>

					</div>
				</div>

			 </div><!--category-2 end-->
			</div>
		</div><!--category row end-->

		
		</div><!-- Content row end -->
	</div>
	<!--/ Container end -->
</section>
<!--/ Service box end -->

<!-- Portfolio start -->
<section id="portfolio" class="portfolio">
	<div class="container">
		<div class="row">
			<div class="col-md-12 heading">
				<h2 class="title">오늘 이 행사 어때요? <span class="title-desc">지금 가장 인기 있는 행사들만 모았습니다
</span></h2>
				
			</div>
		</div> <!-- Title row end -->
		<!-- img start-->
		<div class="row">
			<div class="col-sm-3 portfolio-static-item">
				<div class="grid">
					<figure class="m-0 effect-oscar">
						<img src="images/thumnail/01.jpg" alt="">
						<figcaption>
							<a class="link icon-pentagon" href="portfolio-item.html"><i class="fa fa-link"></i></a>
							<a class="view icon-pentagon" data-rel="prettyPhoto" href="images/thumnail/01.jpg"><i
									class="fa fa-search"></i></a>
						</figcaption>
					</figure>
					<div class="portfolio-static-desc">
						<h3>이벤터스 웨비나, 하루만에 뽀개기!</h3>
						<span><a href="#">Illustrations</a></span>
					</div>
				</div>
				<!--/ grid end -->
			</div>
			<!--/ item 1 end -->

			<div class="col-sm-3 portfolio-static-item">
				<div class="grid">
					<figure class="m-0 effect-oscar">
						<img src="images/thumnail/02.jpg" alt="">
						<figcaption>
							<a class="link icon-pentagon" href="portfolio-item.html"><i class="fa fa-link"></i></a>
							<a class="view icon-pentagon" data-rel="prettyPhoto" href="images/thumnail/02.jpg"><i
									class="fa fa-search"></i></a>
						</figcaption>
					</figure>
					<div class="portfolio-static-desc">
						<h3>[플리토] 외국계 취업 컨설턴트 '마차카피'의 합격하는 레쥬메 & 커버레터</h3>
						<span><a href="#">Webdesign</a></span>
					</div>
				</div>
				<!--/ grid end -->
			</div>
			<!--/ item 2 end -->

			<div class="col-sm-3 portfolio-static-item">
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

			<div class="col-sm-3 portfolio-static-item">
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
			<!--/ item 4 end -->

	</div>	<!--/ Container end -->
</section>
<!--/ Counter end -->

<!-- Feature box start -->
<section id="feature" class="feature">
	<div class="container">
		<div class="row">
			<div class="container">
		<div class="row">
			<div class="col-md-12 heading">
				<h2 class="title">AI 추천 <span class="title-desc">회원가입 후에 더욱 정교한 추천을 만나보세요!
</span></h2>
				
			</div>
		</div> <!-- Title row end -->
		<!-- img start-->
		<div class="row">
			<div class="col-sm-3 portfolio-static-item">
				<div class="grid">
					<figure class="m-0 effect-oscar">
						<img src="images/thumnail/01.jpg" alt="">
						<figcaption>
							<a class="link icon-pentagon" href="portfolio-item.html"><i class="fa fa-link"></i></a>
							<a class="view icon-pentagon" data-rel="prettyPhoto" href="images/thumnail/01.jpg"><i
									class="fa fa-search"></i></a>
						</figcaption>
					</figure>
					<div class="portfolio-static-desc">
						<h3>이벤터스 웨비나, 하루만에 뽀개기!</h3>
						<span><a href="#">Illustrations</a></span>
					</div>
				</div>
				<!--/ grid end -->
			</div>
			<!--/ item 1 end -->

			<div class="col-sm-3 portfolio-static-item">
				<div class="grid">
					<figure class="m-0 effect-oscar">
						<img src="images/thumnail/02.jpg" alt="">
						<figcaption>
							<a class="link icon-pentagon" href="portfolio-item.html"><i class="fa fa-link"></i></a>
							<a class="view icon-pentagon" data-rel="prettyPhoto" href="images/thumnail/02.jpg"><i
									class="fa fa-search"></i></a>
						</figcaption>
					</figure>
					<div class="portfolio-static-desc">
						<h3>[플리토] 외국계 취업 컨설턴트 '마차카피'의 합격하는 레쥬메 & 커버레터</h3>
						<span><a href="#">Webdesign</a></span>
					</div>
				</div>
				<!--/ grid end -->
			</div>
			<!--/ item 2 end -->

			<div class="col-sm-3 portfolio-static-item">
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

			<div class="col-sm-3 portfolio-static-item">
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
			<!--/ item 4 end -->

	</div>	<!--/ Container end -->
		</div><!-- Content row end -->

	</div>
	<!--/ Container end -->
</section>
<!--/ Feature box end -->


<section id="image-block" class="my-xl-6 my-5">
            <div class="container">

                <div class="row">
                    <div class="col s12 m6 l6 wow slideInLeft">
                        <a href="/Account/Login?ReturnUrl=CreateEvent" target="_blank">
                            <img class="py-1" src="images/footer_banner_eventcreate01.png" width="100%" alt="행사개설! 이벤터스로 간편하게 행사 모집을 시작하세요!" style="max-height:205px;height:100%" />
                        </a>
                    </div>
                    <div class="col s12 m6 l6 wow slideInRight">
                        <a href="/l/NewsLetter" target="_blank">
                            <img class="py-1" src="images/footer_banner_newletter01.png" width="100%" alt="뉴스레터 신청하기! 관심분야의 행사 소식을 가장 먼저 접하세요!" style="max-height:205px;height:100%" />
                        </a>
                    </div>
                </div>
            </div>
        </section>
<!--/ Image block end -->


<!-- footer start -->
<footer>
	<!--공지사항 start-->
    <div class="footer-copyright white hide-on-small-only" style="padding:15px 0;border-top: 1px solid #e5e5e5;border-bottom: 1px solid #e5e5e5">
        <div class="container main-container">
            <div class="row">
                <div class="col s12 col l7 ">
                    <div class="no-text-overflow" style="line-height:45px">
                        <span class="txt-14 font-weight-500">
                            <a class="eventus-purple-text" href="#">공지사항</a>
                            <span class="px-3 black-text">|</span>
                            <a class="black-text" href="/Notice/62">
                                메일 발송 지연 복구 안내
                            </a>
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div><!--공지사항end-->
    <footer id="footer" class="footer">
	  <div class="container">
	    <div class="row">
	      <div class="col-md-4 col-sm-12 footer-widget">
	        <h3 class="widget-title">My Event</h3>
	        <div class="latest-post-items media">
	          <div class="latest-post-content media-body">
	            <h4><a href="#">회사소개</a></h4>
	          </div>
	        </div><!-- 1st Latest Post end -->

	        <div class="latest-post-items media">
	          <div class="latest-post-content media-body">
	            <h4><a href="#">서비스소개</a></h4>
	           
	          </div>
	        </div><!-- 2nd Latest Post end -->

	        <div class="latest-post-items media">
	          <div class="latest-post-content media-body">
	            <h4><a href="#">호스트센터</a></h4>
	          </div>
	        </div><!-- 3rd Latest Post end -->
	        <div class="latest-post-items media">
	          <div class="latest-post-content media-body">
	            <h4><a href="#">공지사항</a></h4>
	          </div>
	        </div><!-- 3rd Latest Post end -->
	        <div class="latest-post-items media">
	          <div class="latest-post-content media-body">
	            <h4><a href="#">자주묻는질문</a></h4>
	          </div>
	        </div><!-- 3rd Latest Post end -->

	      </div>
	      <!--/ End Recent Posts-->


	      <div class="col-md-4 col-sm-12 footer-widget">
	        <h3 class="widget-title">contact us</h3>

	        <div class="img-gallery">
	           <div>
                        <span class="d-inline-block font-weight-500" style="width:105px;">
                            고객센터
                        </span>
                        <span>
                            평일 10~17시
                        </span>
                        <a class="ml-2 font-weight-500 black-text" style="text-decoration:underline" href="https://event-us.channel.io/" target="_blank">
                            1:1 문의하기
                        </a>
                    </div>
                    <div class="my-1">
                        <span class="d-inline-block  font-weight-500" style="width:105px;">
                            서비스문의
                        </span>
                        <span>
                            contact@myevent.com
                        </span>
                    </div>
                    <div>
                        <span class="d-inline-block  font-weight-500" style="width:105px;">
                            사업/제휴문의
                        </span>
                        <span>
                            business@myevent.com
                        </span>
                    </div>

	        </div>
	      </div>
	      <!--/ end flickr -->

	      <div class="col-md-3 col-sm-12 footer-widget footer-about-us">
	        <h3 class="widget-title">About Us</h3>
	        <p>마이이벤트는 통신판매중개자이며 행사에 대한 당사자 및 주최자가 아닙니다. 따라서 마이이벤트는 등록된 행사에 대해 책임지지 않습니다.</p>
	        <h4>Address</h4>
	        <p>경기도 성남시 분당구 삼평동 대왕판교로 670길 (삼평동 682번지) 유스페이스2 B동 8층</p>
	        <div class="row">
	          <div class="col-md-6">
	            <h4>Phone No.</h4>
	            <p>031-606-9337</p>
	          </div>
	        </div>
	      
	      </div>
		 <div class="row">
	       <div class="col s12">
                    <div class="d-flex justify-content-between align-items-center">
                        <div class="footerLinks">
                            <a href="/Legal/Service">
                                서비스 이용 약관
                            </a>
                            <span class="px-2">|</span>
                            <a class="font-weight-bold" href="/Legal/Privacy">
                                개인정보처리방침
                            </a>
                            <span class="px-2">|</span>
                            <a href="/Legal/E_Banking">
                                전자금융거래 이용약관
                            </a>
                            <span class="px-2">|</span>
                            <a href="/Legal/Refund">
                                취소 및 환불 약관
                            </a>
                            <span class="px-2">|</span>
                            <a href="/Legal/Email">
                                이메일 주소 무단수집 거부
                            </a>
                        </div>
                    </div>
                </div>
            </div><!--row end-->
	      <!--/ end about us -->

	    </div><!-- Row end -->

	  </div><!-- Container end -->

	</footer><!-- Footer end -->

<!--footer end-->


	<!-- Copyright start -->
	<section id="copyright" class="">
	  <div class="container">
	    <div class="row">
	      <div class="col-md-12 text-center">
	        <ul class="footer-social unstyled">
	          <li>
	            <a title="Twitter" href="#">
	              <span class="icon-pentagon wow bounceIn"><i class="fa fa-twitter"></i></span>
	            </a>
	            <a title="Facebook" href="#">
	              <span class="icon-pentagon wow bounceIn"><i class="fa fa-facebook"></i></span>
	            </a>
	            <a title="Google+" href="#">
	              <span class="icon-pentagon wow bounceIn"><i class="fa fa-google-plus"></i></span>
	            </a>
	            <a title="linkedin" href="#">
	              <span class="icon-pentagon wow bounceIn"><i class="fa fa-linkedin"></i></span>
	            </a>
	            <a title="Pinterest" href="#">
	              <span class="icon-pentagon wow bounceIn"><i class="fa fa-pinterest"></i></span>
	            </a>
	            <a title="Skype" href="#">
	              <span class="icon-pentagon wow bounceIn"><i class="fa fa-skype"></i></span>
	            </a>
	            <a title="Dribble" href="#">
	              <span class="icon-pentagon wow bounceIn"><i class="fa fa-dribbble"></i></span>
	            </a>
	          </li>
	        </ul>
	      </div>
	    </div>
	    <!--/ Row end -->
	    <div class="row">
	      <div class="col-md-12 text-center">
	        <div class="copyright-info">
	          &copy; Copyright 2020 4JO All Rights Reserved.</span>
	        </div>
	      </div>
	    </div>
	    <!--/ Row end -->
	    <div id="back-to-top" data-spy="affix" data-offset-top="10" class="back-to-top affix position-fixed">
	      <button class="btn btn-primary" title="Back to Top"><i class="fa fa-angle-double-up"></i></button>
	    </div>
	  </div>
	  <!--/ Container end -->
	</section>
	<!--/ Copyright end -->

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