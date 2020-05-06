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

<style>
.mainContainer {
	padding: 50px 0px;
}

.menuSubnav__tab--active {
	padding: 10px 20px;
	border-bottom: 5px solid #8d71dd;
	margin-bottom: -2px;
	font-size: 16px;
}

.menuSubnav__tab {
	padding: 10px 20px;
}
/*------------------기존CSS---------------------------*/
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

</head>
<body>
	<!--subTopMenu-->
	<c:import url="headerTop.jsp" />
	<!-- mainMenu -->
	<c:import url="header.jsp" />
	<!-- 상단 메뉴 -->


	<c:import url="subMenu.jsp" />
	<!-- subnav start -->
	<div class="menuSubnav__section mt-xl-4">
		<div class="container">
			<div class="row">
				<div class="col s12">
					<div class="menuSubnav d-flex flex-row align-items-start">

						<div class="menuSubnav__tab--active">
							<a href="#">채널 리뷰</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- subnav end -->

	<!-- 서브메뉴ㄱㄱ -->
	<!-- 서브메뉴 끝 -->

	<!-- 여기서부터 원본 -->
<%-- 	<%
			int userNo = (int)session.getAttribute("userNo");
			List<ChBoard> chBList = ChBoardService.selectChBoardByUserNo(userNo);
	%> --%>

	<div class="container mainContainer">
		<div class="col s12 d-flex justify-content-between">
			<table>
				<thead>
					<td>글 번호</td>
					<td>채널 이름</td>
					<td>상세내용</td>
					<td>별점</td>
					<td>날짜</td>
				</thead>
				<c:forEach items="${myChB}" var="myChBoard">
				<tbody>
						<tr>
							<td style="text-align: center;">${myChBoard.chBoardNo}</td>
							<td style="text-align: center;">${myChBoard.channel.chName}</td>
							<td>${myChBoard.chBoardContent}</td>
							<td style="text-align: center;">${myChBoard.chBoardStar}점</td>			
							<td style="text-align: center;"><fmt:formatDate value="${myChBoard.chBoardTime }" pattern="yyyy-MM-dd"/></td>
						</tr>
					
				</tbody>
				</c:forEach>
			</table>
		</div>
	</div>
	<!-- container end -->

	<!-- footer -->
	<c:import url="footer.jsp"></c:import>
</body>
</html>