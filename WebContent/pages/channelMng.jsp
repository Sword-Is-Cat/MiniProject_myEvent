
<%@page import="java.util.List"%>
<%@page import="kosta.mvc.service.ChannelService"%>
<%@page import="kosta.mvc.vo.Channel"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>My Event :: 행사와 함께 하는 모든 순간</title>

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
<style>
/*---------원본css-----------------*/
#btn {
	margin-right: 400px;
}
#chDesc {
	background-color: #f6f6f6;
	min-height: 350px;
	padding: 30px;
	text-align: left;
}
#p {
	float: left;
	margin-left: 10px;
}
#makeEv {
	margin: 0px;
}
.btnOpen {
	float: right;
	padding-right: 50px;
	position: relative;
	top: -30px;
}
/*------------지안추가css----------------------*/
.mainContainer {
	/* position: relative;
   top:-50px; */
	
}
.chSetting>i::before {
	content: "\f013";
	font-family: FontAwesome;
	font-style: normal;
	font-weight: 900;
	margin: 0 auto;
	text-align: center;
	padding-right: 5px;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}
.chAuthor>i::before {
	content: "\f234";
	font-family: FontAwesome;
	font-style: normal;
	font-weight: 900;
	margin: 0 auto;
	padding-right: 5px;
	text-align: center;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}
.chDel>i::before {
	content: "\f1f8";
	font-family: FontAwesome;
	font-style: normal;
	font-weight: 900;
	margin: 0 auto;
	padding-right: 5px;
	text-align: center;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}
.chListMenu li {
	padding: 10px 15px 10px 0px;
	display: inline-block;
}
.bgPart {
	margin-top: 50px;
	background: url("images/hostcenter_top_image.jpg") no-repeat;
	background-position: center center;
	background-size: cover; //
	padding-top: 50px;
}
.bgImg { //
	height: 250px;
}
h4 .addCh::after {
	content: "\f055";
	font-family: FontAwesome;
	font-style: normal;
	font-weight: 900;
	margin: 0 auto;
	padding-right: 20px;
	text-align: center;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}
</style>

<!-- mobile responsive meta -->

<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">



<script language=javascript>
   function sendUpdate(){//������
      document.requestForm.key.value ="updateChannelForm";
      document.requestForm.submit();
   }
   function sendDelete(){//����
      
      document.requestForm.key.value ="deleteChannel";
      document.requestForm.submit();
   }
   </script>

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

	<!--subTopMenu-->
	<c:import url="headerTop.jsp" />
	<!--subTopMenu end-->
	<c:import url="header.jsp" />
	<c:import url="subMenu.jsp" />
	<!-- 채널메인 -->

	<!-- 채널메인 end -->
	<!-- Main container start -->
	<div class="container-fluide bgPart">
		<div class="bgImg"></div>

		<!-- Style switcher end -->



		<!-- Main container start -->

		<section id="main-container">

			<!-- channel list start -->
			<%--        
       <%
       int userNo = (int)session.getAttribute("userNo");
       List<Channel> chList = ChannelService.manageChannel(userNo); 
       %> --%>

			<!-- channel manage top -->

			<div class="row">

				<div class="col-md-12 heading text-center">

					<h2 class="title2" style="text-align: center; font-weight: bold">
						채널 관리 <span class="title-desc"></span>

					</h2>

				</div>

			</div>
			<!-- Title row end -->
	</div>
	<div class="Container mainContainer">
		<c:choose>
			<c:when test="${empty requestScope.chList}">
				<tr>
					<td colspan="5">
						<p align="center">
							<b><span style="font-size: 9pt;">등록된 채널이 없습니다.</span></b>
						</p> <a href="#0" id="makeEv" class="btn btn-primary solid cd-btn">채널개설</a>
					</td>
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach items="${requestScope.chList}" var="channel">

					<div class="container">

						<div class="row">

							<div class="col-md-12 heading">

								<span class="title-icon classic float-left"></span>

								<h4 class="title classic">${channel.chName}<a class="addCh"
										href="#"></a>
								</h4>
							</div>

						</div>

						<div class="row text-center">

							<div class="col-md-3 col-sm-6">

								<div class="team wow slideInLeft">

									<div class="img-hexagon">

										<img src="channelImg/${channel.chImg}" alt=""> <span
											class="img-top"></span> <span class="img-bottom"></span>

									</div>

									<div class="team-content">

										<h3>${channel.user.userName }</h3>

										<p>${channel.user.userEmail }</p>

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

							<div class="col-md-9 col-sm-6">

								<div id="chDesc" class="team team-list wow slideInRight">
									<h4>媛��ㅽ����: n媛�</h4>
									<div class="cd-full-width btnOpen">

										<div id="chDesc" class="team team-list wow slideInRight">

											<h4>개설행사: n개</h4>
											<div class="cd-full-width btnOpen">

												<a href="#0" id="makeEv"
													class="btn btn-primary solid cd-btn">행사개설</a>

											</div>
											<!-- .cd-full-width -->
										
											<ul class="list-unstyled chListMenu">
												<li class=""><a class="chSetting"
													href="${pageContext.request.contextPath}/front?key=updateChannelForm&chNo=${channel.chNo}"><i
														class="fa fa-users">채널설정</i></a></li>
												<li class=""><a class="chAuthor" href="#"><i
														class="fa fa-users">권한설정</i></a></li>
												<li class=""><a class="chDel"
													href="${pageContext.request.contextPath}/front?key=deleteChannel&chNo=${channel.chNo}"><i
														class="fa fa-users">채널삭제</i></a></li>
												<li class=""><a class="chDetail"
													href="${pageContext.request.contextPath}/front?key=channelDetail&chNo=${channel.chNo}"><i
														class="fa fa-users">채널상세</i></a></li>
											</ul>


											<div class="row d-flex justify-content-between">
												<div class="col-sm-5 portfolio-static-item">
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
																<a class="link icon-pentagon" href="portfolio-item.html"><i
																	class="fa fa-link"></i></a> <a class="view icon-pentagon"
																	data-rel="prettyPhoto" href="images/thumnail/04.jpg"><i
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

											</div>
											<!-- chDesc end -->

										</div>
										<!-- row end -->
									</div>
									<!-- row text-center -->

								</div>
								<!--col-md-9 col-sm-6 end -->

							</div>
							<!--/ Container end -->
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</div>
	<!-- main div container end -->

	<!-- footer -->
	<c:import url="footer.jsp"></c:import>
</body>

</html>