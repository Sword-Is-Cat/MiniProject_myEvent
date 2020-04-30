<%@page import="kosta.mvc.service.ChBoardService"%>
<%@page import="kosta.mvc.vo.ChBoard"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"
	scope="application" />
<!DOCTYPE html>
<html>
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
<!-- 지혜 css -->
<style>
hr{
	margin-left: 15%;
	width:70%;
	border: solid 2px #5c3fbf;
}
#ahead{
	background-color: rgb(240, 237, 250);
}
</style>
</head>
<body>
<!-- 지혜 채널리뷰 부분 -->
	<hr id="line" />
	<br>
	<div class="container">
		<div class="row">
			<h2 class="widget-title">채널 리뷰</h2>
		</div>			
		<a href="pages/createChBoard.jsp?chNo=${chBoard.chNo}" class="project-btn btn btn-primary review">리뷰 등록</a>
		<%
			int chNo = Integer.parseInt(request.getParameter("chNo")); 
			List<ChBoard> chBoardList = ChBoardService.selectChBoard(chNo);
		%>
		<br><br>
		
		<div class="accordion" id="accordion">
		<div class="card-header p-0">
			<h4 style="font-weight: bold">리뷰 번호 | 작성자 이름 | 별점</h4>
		</div>
		<c:forEach items="<%=chBoardList%>" var="chBoard">
				<div class="card border rounded mb-2">
					<div class="card-header p-0">
						<a id="ahead" class="h4 mb-0 font-weight-bold text-uppercase d-block p-2 pl-5" data-toggle="collapse"
							data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
							${chBoard.chBoardNo} | ${chBoard.user.userName} | ${chBoard.chBoardStar}</a>
					</div>
					<div id="collapseOne" class="collapse show" data-parent="#accordion">
						<div class="card-body">
							<p>${chBoard.chBoardContent }</p>
						</div>
					</div>
				</div>
				<!--/ Panel 1 end-->
				</c:forEach>
			<!--/ Accordion end -->
			</div>
			
	</div>
	<!-- Container end -->
	
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
	<script type="text/javascript"
		src="plugins/flex-slider/jquery.flexslider.js"></script>
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
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU&libraries=places"></script>
	<script src="plugins/google-map/gmap.js"></script>

	<!-- Main Script -->
	<script src="js/script.js"></script>
</body>
</html>