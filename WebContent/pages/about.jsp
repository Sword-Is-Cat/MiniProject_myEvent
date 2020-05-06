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

<!-- Main Stylesheet -->
<link href="css/style.css" rel="stylesheet">
<link href="css/defaultStyle.css" rel="stylesheet">
<!--Favicon-->
<link rel="icon" href="./images/favicon/32.png" type="image/x-icon" />
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="./images/favicon/144.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="./images/favicon/72.png">
<link rel="apple-touch-icon-precomposed" href="./images/favicon/54.png">
<!-- webFont -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">

</head>

<body>
	<div class="body-inner">
		<!--subTopMenu-->
		<c:import url="headerTop.jsp" />
		<!--subTopMenu end-->
		<c:import url="header.jsp" />


		<!-- Main container start -->
		<section id="main-container">
			<div class="container">

				<!-- Company Profile -->
				<div class="row">
					<div class="col-md-12 heading">
						<span class="title-icon classic float-left"><i
							class="fa fa-suitcase"></i></span>
						<h2 class="title classic">Company Profile</h2>
					</div>
				</div>
				<!-- Title row end -->

				<div class="row landing-tab">
					<div class="col-md-3 col-sm-5">
						<div class="nav flex-column nav-pills border-right"
							id="v-pills-tab" role="tablist" aria-orientation="vertical">
							<a
								class="animated fadeIn nav-link py-4 active d-flex align-items-center"
								data-toggle="pill" href="#tab_1" role="tab" aria-selected="true">
								<i class="fa fa-info-circle mr-4"></i> <span
								class="h4 mb-0 font-weight-bold">My Event</span>
							</a> <a
								class="animated fadeIn nav-link py-4 d-flex align-items-center"
								data-toggle="pill" href="#tab_2" role="tab" aria-selected="true">
								<i class="fa fa-briefcase mr-4"></i> <span
								class="h4 mb-0 font-weight-bold">OUR COMPANY</span>
							</a> <a
								class="animated fadeIn nav-link py-4 d-flex align-items-center"
								data-toggle="pill" href="#tab_3" role="tab" aria-selected="true">
								<i class="fa fa-android mr-4"></i> <span
								class="h4 mb-0 font-weight-bold">What We Do</span>
							</a> <a
								class="animated fadeIn nav-link py-4 d-flex align-items-center"
								data-toggle="pill" href="#tab_4" role="tab" aria-selected="true">
								<i class="fa fa-pagelines mr-4"></i> <span
								class="h4 mb-0 font-weight-bold">Modern Design</span>
							</a> <a
								class="animated fadeIn nav-link py-4 d-flex align-items-center"
								data-toggle="pill" href="#tab_5" role="tab" aria-selected="true">
								<i class="fa fa-support mr-4"></i> <span
								class="h4 mb-0 font-weight-bold">Dedicated Support</span>
							</a>
						</div>
					</div>
					<div class="col-md-9 col-sm-7">
						<div class="tab-content" id="v-pills-tabContent">
							<div
								class="tab-pane pl-sm-5 fade show active animated fadeInLeft"
								id="tab_1" role="tabpanel">
								<i class="fa fa-trophy icon-xl text-primary mb-4"></i>
								<h3>최고의 행사 개최 플랫폼</h3>
								<p>마이이벤트는 2020년에 설립된 이벤트 테크 프로젝트입니다. 기존의 행사 시장에 IT와 플랫폼을 접목해
									혁신을 만들어가고 싶습니다. 내가 원하는 행사를 개최하거나 참여할 수 있는 플랫폼 "마이이벤트"를 운영하고
									있습니다.</p>
							</div>
							<div class="tab-pane pl-sm-5 fade animated fadeInLeft" id="tab_2"
								role="tabpanel">
								<i class="fa fa-briefcase icon-xl text-primary mb-4"></i>
								<h3>We Have Worldwide Business</h3>
								<p>Helvetica cold-pressed lomo messenger bag ugh. Vinyl jean
									shorts Austin pork belly PBR retro, Etsy VHS kitsch actually
									messenger bag pug. Pbrb semiotics try-hard, Schlitz occupy
									dreamcatcher master cleanse Marfa Vice tofu.</p>
							</div>
							<div class="tab-pane pl-sm-5 fade animated fadeInLeft" id="tab_3"
								role="tabpanel">
								<i class="fa fa-android icon-xl text-primary mb-4"></i>
								<h3>We Build Readymade Applications</h3>
								<p>Over the year we have lots of experience in our field. In
									sit amet massa sapien. Vestibulum diam turpis, gravida in
									lobortis id, ornare a eros. Lorem ipsum dolor sit amet,
									consectetur adipiscing elit. Aliquam sagittis nulla non elit
									dignissim suscipit. Duis lorem nulla, eleifend.</p>
							</div>
							<div class="tab-pane pl-sm-5 fade animated fadeInLeft" id="tab_4"
								role="tabpanel">
								<i class="fa fa-pagelines icon-xl text-primary mb-4"></i>
								<h3>Clean and Modern Design</h3>
								<p>Over the year we have lots of experience in our field. In
									sit amet massa sapien. Vestibulum diam turpis, gravida in
									lobortis id, ornare a eros. Lorem ipsum dolor sit amet,
									consectetur adipiscing elit. Aliquam sagittis nulla non elit
									dignissim suscipit. Duis lorem nulla, eleifend.</p>
							</div>
							<div class="tab-pane pl-sm-5 fade animated fadeInLeft" id="tab_5"
								role="tabpanel">
								<i class="fa fa-support icon-xl text-primary mb-4"></i>
								<h3>24/7 Dedicated Support</h3>
								<p>Occupy selfies Tonx, +1 Truffaut beard organic normcore
									tilde flannel artisan squid cray single-origin coffee. Master
									cleanse vinyl Austin kogi, semiotics skateboard fap wayfarers
									health goth. Helvetica cray church-key hashtag Carles. Four
									dollar toast meggings seitan, Tonx pork belly VHS Bushwick.
									Chambray banh mi cornhole. Locavore messenger bag seitan.</p>
							</div>
						</div>
					</div>
				</div>
				<!--/ Content row end -->
			</div>
			<!--/ 1st container end -->

			<div class="gap-60"></div>


			<div class="container">
				<!-- 2nd container start -->

				<!-- Team start -->
				<div class="team">

					<div class="row">
						<div class="col-md-12 heading">
							<span class="title-icon classic float-left"><i
								class="fa fa-weixin"></i></span>
							<h2 class="title classic">Meet with our Team</h2>
						</div>
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
			<!-- 2nd container end -->
		</section>
		
		<div id="map" style="width:60%; margin-left: 20%; height:350px;"></div>

		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b90bc4dfc8f3d9e3716cfb69ea67a34a"></script>
		<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = { 
		        center: new kakao.maps.LatLng(37.402287, 127.107260), // 지도의 중심좌표
		        level: 3 // 지도의 확대 레벨
		    };
		
		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		
		// 마커가 표시될 위치입니다 
		var markerPosition  = new kakao.maps.LatLng(37.402287, 127.107260); 
		
		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
		    position: markerPosition
		});
		
		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);
		
		// 마커에 커서가 오버됐을 때 마커 위에 표시할 인포윈도우를 생성합니다
		var iwContent = '<div style="padding:5px;">MY EVENT</div>'; // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다

		// 인포윈도우를 생성합니다
		var infowindow = new kakao.maps.InfoWindow({
		    content : iwContent
		});

		// 마커에 마우스오버 이벤트를 등록합니다
		kakao.maps.event.addListener(marker, 'mouseover', function() {
		  // 마커에 마우스오버 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
		    infowindow.open(map, marker);
		});

		// 마커에 마우스아웃 이벤트를 등록합니다
		kakao.maps.event.addListener(marker, 'mouseout', function() {
		    // 마커에 마우스아웃 이벤트가 발생하면 인포윈도우를 제거합니다
		    infowindow.close();
		});
		</script>
		<!--/ Main container end -->
		<br><br>
		<!-- footer -->
		<c:import url="footer.jsp"></c:import>
	</div>
</body>

</html>