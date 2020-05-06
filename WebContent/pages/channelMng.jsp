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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/pages/plugins/bootstrap/bootstrap.min.css">
<!-- FontAwesome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/pages/plugins/fontawesome/font-awesome.min.css">
<!-- Animation -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/pages/plugins/animate.css">
<!-- Prettyphoto -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/pages/plugins/prettyPhoto.css">
<!-- Owl Carousel -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/pages/plugins/owl/owl.carousel.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/pages/plugins/owl/owl.theme.css">
<!-- Flexslider -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/pages/plugins/flex-slider/flexslider.css">
<!-- Flexslider -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/pages/plugins/cd-hero/cd-hero.css">
<!-- Style Swicther -->
<link id="style-switch"
	href="${pageContext.request.contextPath}/pages/css/presets/preset3.css"
	media="screen" rel="stylesheet" type="text/css">


<!-- Main Stylesheet -->
<link href="${pageContext.request.contextPath}/pages/css/style.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/pages/css/defaultStyle.css"
	rel="stylesheet">
<!--Favicon-->
<link rel="icon"
	href="${pageContext.request.contextPath}/pages/images/favicon/32.png"
	type="image/x-icon" />
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="${pageContext.request.contextPath}/pages/images/favicon/144.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="${pageContext.request.contextPath}/pages/images/favicon/72.png">
<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/pages/images/favicon/54.png">

<!-- webFont -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/pages/plugins/jQuery/jquery.min.js"></script>
<style>
/*---------원본css-----------------*/
#btn {
	margin-right: 400px;
}

#chDesc {
	background-color: #f6f6f6;
	min-height: 350px;
	padding: 35px;
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
#makeCh{
  background-color: #5c3fbf; 
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
</style>
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
	<section class="main-container">
		<c:choose>
			<c:when test="${empty requestScope.chList}">
				<tr>
					<td colspan="5">
						<p align="center">
							<b><span style="font-size: 9pt;">등록된 채널이 없습니다.</span></b>
						</p> <a
						href="${pageContext.request.contextPath}/pages/createChannel.jsp"
						id="makeEv" class="btn btn-primary solid cd-btn">채널개설</a>
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
						<div class="row">							
							<div class="container col-md-3 col-sm-6 text-center float-left">
								<div class="col-md-3 col-sm-6">
									<div class="team wow slideInLeft">
										<div class="img-hexagon">
											<img
												src="${pageContext.request.contextPath}/pages/images/userIcon.png"
												alt=""> <span class="img-top"></span> <span
												class="img-bottom"></span>
										</div>
										<div class="team-content" style="width: 240px;">
											<h3>${channel.user.userName}</h3>
											<p>${channel.user.userEmail}</p>
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
							</div>
							<div class="container col-md-9 col-sm-6 float-left">
								<div id="chDesc" class="team team-list wow slideInRight">
									<div id="chDesc" class="team team-list wow slideInRight">
										<div class="container row">
											<ul class="list-unstyled chListMenu">
												<li class=""><a class="chSetting"
													href="${pageContext.request.contextPath}/front?key=updateChannelForm&chNo=${channel.chNo}"><i
														class="fa fa-users">채널수정</i></a></li>
												<li class=""><a class="chAuthor" href="${pageContext.request.contextPath}/pages/chAuthority.jsp?chNo=${channel.chNo}"><i
														class="fa fa-users">권한설정</i></a></li>
												<li class=""><a class="chDel"
													href="${pageContext.request.contextPath}/front?key=deleteChannel&chNo=${channel.chNo}"><i
														class="fa fa-users">채널삭제</i></a></li>
												<li class=""><a class="chDetail"
													href="${pageContext.request.contextPath}/front?key=channelDetail&chNo=${channel.chNo}"><i
														class="fa fa-users">채널상세</i></a></li>
											</ul>
										</div>										
										<img src="channelImg/${channel.chImg}" alt="" style="width:350px; height:250px;">
										<div class="btnOpen">
										<br><br><br><br><br>
											<a
												href="${pageContext.request.contextPath}/pages/createEvent.jsp?chNo=${channel.chNo}&chName=${channel.chName}"
												id="makeEv" class="btn btn-primary solid cd-btn" style="margin-top:200;">행사개설</a>
										</div>
									</div>
									<!-- row end -->
								</div>
								<!--col-md-9 col-sm-6 end -->
							</div>
						</div>
					</div>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</section>





	<!-- main div container end -->

	<!-- footer -->
	<c:import url="footer.jsp"></c:import>
</body>

</html>