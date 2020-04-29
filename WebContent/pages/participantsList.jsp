<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
table {
	width: 70%;
	margin-left: 15%
}

thead {
	background-color: rgb(240, 237, 250);
	color: rgb(92, 98, 208);
	text-align: center;
	font-weight: bold;
}
}
</style>
<link href="css/style.css" rel="stylesheet">
</head>
<body>
	<!--subTopMenu-->
	<c:import url="headerTop.jsp" />
	<!--subTopMenu end-->

	<c:import url="header.jsp" />
	<!-- interest event top -->
	<div class="row">
		<div class="col-md-12 heading text-center">
			<h2 class="title2" style="text-align: center; font-weight: bold;">
				참가자 목록 <span class="title-desc">행사이름</span>
			</h2>
		</div>
	</div>
	<!-- Title row end -->
	<hr>
	<table id="table" class="table">
		<thead>
			<td>이름</td>
			<td>ID</td>
			<td>연락처</td>
			<td>결제내역</td>
			<td>상태</td>
		</thead>
		<tbody>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</tbody>
	</table>

	<!-- footer -->
	<c:import url="footer.jsp"></c:import>
</body>
</html>