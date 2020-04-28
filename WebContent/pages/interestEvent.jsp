<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

<style>
  	#listImg{
		width: 100%;
		height: 270px;
	}
	.sidebar{
		min-height:270px;
		width:100%;
		background-color: #f6f6f6;
		padding-left:10px;
	}
	.mainContainer {padding:50px 0px;}
	
    .menuSubnav__tab--active {
	    padding: 10px 20px;
	    border-bottom: 5px solid #8d71dd;
	    margin-bottom: -2px;
	    font-size: 16px;
	}
	.menuSubnav__tab {
	
	    padding: 10px 20px;
	 }
</style>

</head>

<body>

<!--subTopMenu-->
<c:import url="headerTop.jsp"/>
<!--subTopMenu end-->	

<c:import url="header.jsp"/>

<!-- 상단 메뉴 -->
<c:import url="subMenu.jsp"/>
    <!-- subnav start -->
     <div class="menuSubnav__section mt-xl-4" >
        <div class="container">
            <div class="row">
                <div class="col s12">
                    <div class="menuSubnav d-flex flex-row align-items-start">
                           
                            <div class="menuSubnav__tab--active">
                                <a href="interestEvent.jsp">
                                    관심 행사 목록
                                </a>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- subnav end -->
    

<!-- interestEvent item start -->
<section id="portfolio-item">

	<div class="container mainContainer" >
		<!-- interestEvent item row start -->
		<div class="row">
			<!-- interestEvent item img start -->
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="portfolio-slider">
					<div class="flexportfolio flexslider">
						<ul class="slides">
							<li><a href=""><img id="listImg" src="https://eventusstorage.blob.core.windows.net/evs/Image/fintechkisa/16666/ProjectInfo/Cover/b3448c29214445e2a3a7033ab6242ef7.jpg?fixed" alt=""></a></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- interestEvent item img end-->

			<!-- sidebar start -->
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="sidebar">
					<div class="portfolio-desc">
					<br>
						<h4 class="widget-title">행사이름</h4>
						<h5 class="widget-title">채널이름</h5>
						<p>기간</p>
						<p>유/무료</p>
						<p><a href="#" class="project-btn btn btn-primary">참가신청</a>
							<a href="#" class="project-btn btn btn-primary">삭제</a></p>
					</div>
				</div>
			</div>
			<!-- sidebar end -->
		</div><!-- interestEvent item row end -->
	</div><!-- Container end -->
	<br>
	<div class="container">
		<!-- interestEvent item row start -->
		<div class="row">
			<!-- interestEvent item img start -->
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="portfolio-slider">
					<div class="flexportfolio flexslider">
						<ul class="slides">
							<li><a href=""><img id="listImg" src="https://eventusstorage.blob.core.windows.net/evs/Image/wisdom2korea/15201/ProjectInfo/Cover/88481d0ea4d1417cabe87f1a63a2a3b5.jpg?fixed" alt=""></a></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- interestEvent item img end-->

			<!-- sidebar start -->
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="sidebar">
					<div class="portfolio-desc">
					<br>
						<h4 class="widget-title">행사이름</h4>
						<h5 class="widget-title">채널이름</h5>
						<p>기간</p>
						<p>유/무료</p>
						<p><a href="#" class="project-btn btn btn-primary">참가신청</a>
							<a href="#" class="project-btn btn btn-primary">삭제</a></p>
					</div>
				</div>
			</div>
			<!-- sidebar end -->
		</div><!-- interestEvent item row end -->
	</div><!-- Container end -->
</section><!-- interestEvent item end -->

<!-- footer -->
<c:import url="footer.jsp"></c:import>

</body>

</html>