<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <title>My Event :: 행사와 함께 하는 모든 순간</title>
<%--    <jsp:include page="header.jsp" flush="false"/>
   <%@ include file="/jsp/include.jsp" %> --%>
<c:import url="header.jsp"></c:import>
</head>
<body>


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
    
<!-- footer -->
<c:import url="footer.jsp"></c:import>



</body>
</html>