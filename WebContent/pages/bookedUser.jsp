<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
<!-- jQuery -->
<script
	src="${pageContext.request.contextPath}/pages/plugins/jQuery/jquery.min.js"></script>
<!-- Bootstrap JS -->
<script
	src="${pageContext.request.contextPath}/pages/plugins/bootstrap/bootstrap.min.js"></script>
<!-- Style Switcher -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/plugins/style-switcher.js"></script>
<!-- Owl Carousel -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/plugins/owl/owl.carousel.js"></script>
<!-- PrettyPhoto -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/plugins/jquery.prettyPhoto.js"></script>
<!-- Bxslider -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/plugins/flex-slider/jquery.flexslider.js"></script>
<!-- CD Hero slider -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/plugins/cd-hero/cd-hero.js"></script>
<!-- Isotope -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/plugins/isotope.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/plugins/ini.isotope.js"></script>
<!-- Wow Animation -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/plugins/wow.min.js"></script>
<!-- Eeasing -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/plugins/jquery.easing.1.3.js"></script>
<!-- Counter -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/plugins/jquery.counterup.min.js"></script>
<!-- Waypoints -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/pages/plugins/waypoints.min.js"></script>


<!-- Main Script -->
<script src="${pageContext.request.contextPath}/pages/js/script.js"></script>

<style>
#qnaBoard {
	margin-top: 1em;
}

#evInfo {
	margin-top: 1em;
}

table {
	width: 100%;
	/*margin:0 auto;
		margin-left:15%; */
}

thead {
	background-color: rgb(240, 237, 250);
	color: rgb(92, 98, 208);
	text-align: center;
	font-weight: bold;
}

h3 {
	margin-left: 45%;
	color: #5c3fbf;
	font-weight: bold;
}
</style>

</head>

<body>
	<!--subTopMenu-->
	<c:import url="headerTop.jsp" />
	<!--subTopMenu end-->

	<c:import url="header.jsp"></c:import>
	<br>
	<br>
	<h3>신청자 목록</h3>
	<br>
	<div class="container mainContainer">
		<div class="col s12 d-flex justify-content-between">
			<table>
				<thead>
					<th>ID</th>
					<th>성명</th>
					<th>전화번호</th>
					<th>이메일</th>
				</thead>
				<tbody>
					<c:forEach items="${requestScope.list}" var="user">
						<tr style="text-align: center;">
							<td>${user.userId}</td>
							<td>${user.userName}</td>
							<td>${user.userPhone}</td>
							<td>${user.userEmail}</td>
						</tr>
						<!--/ Panel 1 end-->
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<!-- container end -->
	<!-- footer -->
	<br>
	<br>
	<c:import url="footer.jsp"></c:import>
</body>
</html>