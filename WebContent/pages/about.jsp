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
<link rel="stylesheet" href="${pageContext.request.contextPath}/pages/plugins/bootstrap/bootstrap.min.css">
<!-- FontAwesome -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/pages/plugins/fontawesome/font-awesome.min.css">
<!-- Animation -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/pages/plugins/animate.css">
<!-- Prettyphoto -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/pages/plugins/prettyPhoto.css">
<!-- Owl Carousel -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/pages/plugins/owl/owl.carousel.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/pages/plugins/owl/owl.theme.css">
<!-- Flexslider -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/pages/plugins/flex-slider/flexslider.css">
<!-- Flexslider -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/pages/plugins/cd-hero/cd-hero.css">
<!-- Style Swicther -->
<link id="style-switch" href="${pageContext.request.contextPath}/pages/css/presets/preset3.css" media="screen"
	rel="stylesheet" type="text/css">

<!-- Main Stylesheet -->
<link href="${pageContext.request.contextPath}/pages/css/style.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/pages/css/defaultStyle.css" rel="stylesheet">
<!--Favicon-->
<link rel="icon" href="${pageContext.request.contextPath}/pages/images/favicon/32.png" type="image/x-icon" />
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="${pageContext.request.contextPath}/pages/images/favicon/144.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="${pageContext.request.contextPath}/pages/images/favicon/72.png">
<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/pages/images/favicon/54.png">
<!-- webFont -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<script src="${pageContext.request.contextPath}/pages/plugins/jQuery/jquery.min.js"></script>
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
     						 <img class="tlImg tl01" src="./images/timeLine01.jpg"/>
				        </div>
				    </div>

				    <div class="timeline-article content-left-container">
				        <div class="content-date">
			          		
			        	</div>
			        	<div class="meta-date"></div>
				        <div class="content-box contentNo02">
				        <span>04/29</span>
				        	<p>프로젝트 발표 연기</p>
    						<img class="tlImg tl02" src="./images/timeLine02.jpg"/>
				        </div>
				    </div>

				    <div class="timeline-article content-right-container">
				        <div class="content-date">
			          		
			        	</div>
			        	<div class="meta-date"></div>
				        <div class="content-box">
				        <span>04/17~</span>
				        	<p>프로젝트 진행</p>
     						<img class="tlImg tl03" src="./images/timeLine03.gif"/>
				        </div>
				    </div>

				    <div class="timeline-article content-left-container">
				        <div class="content-date">
			          		
			        	</div>
			        	<div class="meta-date"></div>
				        <div class="content-box">
				        <span>04/08</span>
				        	<p>프로젝트 조 편성</p>
				        	<img class="tlImg tl04" src="./images/timeLine04.jpg"/>
				        	
				        </div>
				    </div>
				    
				</div>
			   	<div class="timeline-end"></div>
		  	</section>
		</div>
	</div><!-- row end -->



			<div class="container">
				<!-- 2nd container start -->
<div class="gap-60"></div>
				<!-- Team start -->
				<div class="team">

					<div class="tlTitle">
  						<h2># The Team</h2>
					</div>
					<!-- Title row end -->
					<div class="gap-60"></div>
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

			</div>
			<!-- 2nd container end -->
		</section>
		
		<div id="map" style="width:60%; margin-left: 20%; height:350px;"></div>

		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b90bc4dfc8f3d9e3716cfb69ea67a34a"></script>
		<script>
		var mapContainer = document.getElementById('map'), 
		    mapOption = { 
		        center: new kakao.maps.LatLng(37.402287, 127.107260), 
		        level: 3 
		    };
		
		var map = new kakao.maps.Map(mapContainer, mapOption); 
		
		var markerPosition  = new kakao.maps.LatLng(37.402287, 127.107260); 
		
		var marker = new kakao.maps.Marker({
		    position: markerPosition
		});
		
		marker.setMap(map);
		
		var iwContent = '<div style="padding:5px;">MY EVENT</div>'; 

		var infowindow = new kakao.maps.InfoWindow({
		    content : iwContent
		});

		kakao.maps.event.addListener(marker, 'mouseover', function() {
		    infowindow.open(map, marker);
		});

		kakao.maps.event.addListener(marker, 'mouseout', function() {
		    infowindow.close();
		});
		</script>
		<!--/ Main container end -->
		<br><br>
	</div>


<div class="gap-60"></div>
</div><!-- container end -->

<c:import url="./footer.jsp"/>

</body>

</html>