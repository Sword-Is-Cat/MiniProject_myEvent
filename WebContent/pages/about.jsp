<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
  <title>My Event :: 행사와 함께 하는 모든 순간</title>

   <!-- mobile responsive meta -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  
   <!-- ** Plugins Needed for the Project ** -->
  <script src="./pages/plugins/jQuery/jquery.min.js"></script>
  <!-- Bootstrap -->
  <link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.css">
  <link rel="stylesheet" href="./plugins/bootstrap/bootstrap.min.css">
	<!-- FontAwesome -->
    <link rel="stylesheet" href="./plugins/fontawesome/font-awesome.min.css">
	<!-- Animation -->
	<link rel="stylesheet" href="./plugins/animate.css">
	<!-- Prettyphoto -->
	<link rel="stylesheet" href="./plugins/prettyPhoto.css">
	<!-- Owl Carousel -->
	<link rel="stylesheet" href="./plugins/owl/owl.carousel.css">
	<link rel="stylesheet" href="./plugins/owl/owl.theme.css">
	<!-- Flexslider -->
	<link rel="stylesheet" href="./plugins/flex-slider/flexslider.css">
	<!-- Flexslider -->
	<link rel="stylesheet" href="./plugins/cd-hero/cd-hero.css">
	<!-- Style Swicther -->
	<link id="style-switch" href="./css/presets/preset3.css" media="screen" rel="stylesheet" type="text/css">

  <!-- Main Stylesheet -->
  <link href="./css/style.css" rel="stylesheet">
  <link href="./css/defaultStyle.css" rel="stylesheet">
  <link href="./css/about.css" rel="stylesheet">
  <!--Favicon-->
	<link rel="icon" href="./images/favicon/32.png" type="image/x-icon" />
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="./images/favicon/144.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="./images/favicon/72.png">
	<link rel="apple-touch-icon-precomposed" href="./images/favicon/54.png">
 <!-- webFont -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<style>
.parallax {
   background: linear-gradient(
      rgba(0, 0, 0, 0.45), 
      rgba(0, 0, 0, 0.45)
   ),
   url(./images/aboutBg.jpg);

  min-height: 350px; 
  background-attachment: fixed;
  background-position: center center;
  background-repeat: no-repeat;
  background-size: cover;
}

</style>

</head>

<body>
<!--subTopMenu-->
<c:import url="./headerTop.jsp"/>
<!--subTopMenu end-->	
<c:import url="./header.jsp"/>

<div class="container-fluide">
	
	<!-- Container element -->
	<div class="parallax">
		<div class="row ">
      	<div class="bgBlack">
			<div class="aboutIntro">
				<p>마이이벤트는 2014년 9월에 설립된 이벤트 테크 스타트업입니다. </p>
				<p>기존의 행사 시장에 IT와 플랫폼을 접목해 혁신을 만들어가고 있습니다. </p>
				<p>내가 원하는 행사를 개최하거나 참여할 수 있는 플랫폼 &quot;마이이벤트&quot;를 운영하고 있습니다.</p>
			</div>
      </div>
		</div>

	</div><!-- parallax end -->
	<div class="gap-30"></div>
<div class="tlTitle">
  <h2># History Timeline</h2>
</div>
<div class="gap-30"></div>
<div class="container">
	<div class="row">
		<div class="col-md-12 col-sm-12 col-xs-12">
			<section class="main-timeline-section">
			    <div class="timeline-start"></div>
			    <div class="conference-center-line"></div>
			    <div class="conference-timeline-content">

				    <div class="timeline-article content-right-container">
				        <div class="content-date">
			          		
			        	</div>
			        	<div class="meta-date"></div>
				        <div class="content-box">
				        <span>05/07</span>
				        	<p>프로젝트 발표</p>
     						 <img src="./images/timeLine01.jpg"/>
				        </div>
				    </div>

				    <div class="timeline-article content-left-container">
				        <div class="content-date">
			          		
			        	</div>
			        	<div class="meta-date"></div>
				        <div class="content-box">
				        <span>04/29</span>
				        	<p>프로젝트 발표 연기</p>
    						<img src="./images/timeLine02.jpg"/>
				        </div>
				    </div>

				    <div class="timeline-article content-right-container">
				        <div class="content-date">
			          		
			        	</div>
			        	<div class="meta-date"></div>
				        <div class="content-box">
				        <span>04/17~</span>
				        	<p>프로젝트 진행</p>
     						<img src="./images/timeLine03.gif"/>
				        </div>
				    </div>

				    <div class="timeline-article content-left-container">
				        <div class="content-date">
			          		
			        	</div>
			        	<div class="meta-date"></div>
				        <div class="content-box">
				        <span>04/08</span>
				        	<p>프로젝트 조 편성</p>
				        	<img src="./images/timeLine04.jpg"/>
				        	
				        </div>
				    </div>
				    
				</div>
			   	<div class="timeline-end"></div>
		  	</section>
		</div>
	</div><!-- row end -->
<div class="gap-60"></div>


			<div class="container">
				<!-- 2nd container start -->

				<!-- Team start -->
				<div class="team">

					<div class="tlTitle">
  						<h2># The Team</h2>
					</div>
					<!-- Title row end -->

					<div class="row text-center">
						<div class="col-md-3 col-sm-6">
							<div class="team wow slideInLeft">
								<div class="img-hexagon">
									<img src="images/team/team1.jpg" alt=""> <span
										class="img-top"></span> <span class="img-bottom"></span>
								</div>
								<div class="team-content">
									<h3>배지혜</h3>
									<p>Web Designer</p>
									<div class="team-social">
										<a class="fb" href="#"><i class="fa fa-facebook"></i></a> <a
											class="twt" href="#"><i class="fa fa-twitter"></i></a> <a
											class="gplus" href="#"><i class="fa fa-google-plus"></i></a>
										<a class="linkdin" href="#"><i class="fa fa-linkedin"></i></a>
										<a class="dribble" href="#"><i class="fa fa-dribbble"></i></a>
									</div>
								</div>
							</div>
						</div>
						<!--/ Team 1 end -->
						<div class="col-md-3 col-sm-6">
							<div class="team wow slideInLeft">
								<div class="img-hexagon">
									<img src="images/team/team2.jpg" alt=""> <span
										class="img-top"></span> <span class="img-bottom"></span>
								</div>
								<div class="team-content">
									<h3>장홍범</h3>
									<p>Web Designer</p>
									<div class="team-social">
										<a class="fb" href="#"><i class="fa fa-facebook"></i></a> <a
											class="twt" href="#"><i class="fa fa-twitter"></i></a> <a
											class="gplus" href="#"><i class="fa fa-google-plus"></i></a>
										<a class="linkdin" href="#"><i class="fa fa-linkedin"></i></a>
										<a class="dribble" href="#"><i class="fa fa-dribbble"></i></a>
									</div>
								</div>
							</div>
						</div>
						<!--/ Team 2 end -->
						<div class="col-md-3 col-sm-6">
							<div class="team wow slideInRight">
								<div class="img-hexagon">
									<img src="images/team/team3.jpg" alt=""> <span
										class="img-top"></span> <span class="img-bottom"></span>
								</div>
								<div class="team-content">
									<h3>김지안</h3>
									<p>Web Designer</p>
									<div class="team-social">
										<a class="fb" href="#"><i class="fa fa-facebook"></i></a> <a
											class="twt" href="#"><i class="fa fa-twitter"></i></a> <a
											class="gplus" href="#"><i class="fa fa-google-plus"></i></a>
										<a class="linkdin" href="#"><i class="fa fa-linkedin"></i></a>
										<a class="dribble" href="#"><i class="fa fa-dribbble"></i></a>
									</div>
								</div>
							</div>
						</div>
						<!--/ Team 3 end -->
						<div class="col-md-3 col-sm-6">
							<div class="team animate wow slideInRight">
								<div class="img-hexagon">
									<img src="images/team/team4.jpg" alt=""> <span
										class="img-top"></span> <span class="img-bottom"></span>
								</div>
								<div class="team-content">
									<h3>김효진</h3>
									<p>Web Designer</p>
									<div class="team-social">
										<a class="fb" href="#"><i class="fa fa-facebook"></i></a> <a
											class="twt" href="#"><i class="fa fa-twitter"></i></a> <a
											class="gplus" href="#"><i class="fa fa-google-plus"></i></a>
										<a class="linkdin" href="#"><i class="fa fa-linkedin"></i></a>
										<a class="dribble" href="#"><i class="fa fa-dribbble"></i></a>
									</div>
								</div>
							</div>
						</div>
						<!--/ Team 4 end -->
						<div class="col-md-3 col-sm-6">
							<div class="team animate wow slideInRight">
								<div class="img-hexagon">
									<img src="images/team/team4.jpg" alt=""> <span
										class="img-top"></span> <span class="img-bottom"></span>
								</div>
								<div class="team-content">
									<h3>박정의</h3>
									<p>Web Designer</p>
									<div class="team-social">
										<a class="fb" href="#"><i class="fa fa-facebook"></i></a> <a
											class="twt" href="#"><i class="fa fa-twitter"></i></a> <a
											class="gplus" href="#"><i class="fa fa-google-plus"></i></a>
										<a class="linkdin" href="#"><i class="fa fa-linkedin"></i></a>
										<a class="dribble" href="#"><i class="fa fa-dribbble"></i></a>
									</div>
								</div>
							</div>
						</div>
						<!--/ Team 5 end -->
					</div>
					<!--/ Content row end -->

				</div>
				<!-- Team end -->
				</div>



</div><!-- container end -->

<c:import url="./footer.jsp"/>

</body>

</html>