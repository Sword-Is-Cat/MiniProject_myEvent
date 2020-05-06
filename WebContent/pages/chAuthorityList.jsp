<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="utf-8">
<title>My Event :: 행사와 함께 하는 모든 순간</title>

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

<!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
<!--[if lt IE 9]>
      <script src="plugins/html5shiv.js"></script>
      <script src="plugins/respond.min.js"></script>
    <![endif]-->

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

</head>
<style>
#chAuthority{
	font-weight: bold;
	margin-left: 15%;
}
#chAuthorityList{
	color: #5c3fbf;
	font-weight: bold;
	margin-left: 10%;
	border-bottom: 5px solid #5c3fbf;
}
hr{
	margin-left: 15%;
	width:70%
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
</style>
<body>

	<!--subTopMenu-->
	<c:import url="headerTop.jsp" />
	<!-- mainMenu -->
	<c:import url="header.jsp" />
	<!-- 상단 메뉴 -->
	<br>
		<h3 id="tab">
		<a id="chAuthority" href="${pageContext.request.contextPath}/pages/chAuthority.jsp?chNo=${param.chNo}">권한 할당</a>
		<a id="chAuthorityList" href="${pageContext.request.contextPath}/front?key=selectChAuthority&chNo=${param.chNo}">권한 사용자 목록</a>
		</h3>
		<br>	
	
	
	<br><br>
	<div class="container mainContainer">
		<div class="col s12 d-flex justify-content-between">
			<table>
				<thead>
					<td>관리자 id</td>
					<td>관리자 이름</td>
					<td>관리자 등급</td>
				</thead>
				<tbody>
				<c:forEach items="${manager}" var="manager">
					<tr style="text-align: center">
						<td>${manager.user.userId}</td>
						<td>${manager.user.userName }</td>
						<td>${manager.grade}</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
<br><br>
<!-- footer -->
<c:import url="footer.jsp"></c:import>

</body>

</html>