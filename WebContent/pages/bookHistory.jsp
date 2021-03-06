<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
th{
	text-align:center;
}
td{
	text-align:center;
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
							<a href="#">신청 행사 목록</a>
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


	<div class="container mainContainer">
		<div class="col s12 d-flex justify-content-between">
			<table>
				<thread>
					<th>신청행사</th>
					<th>제목</th>
					<th>기간</th>
					<th>삭제</th>
				</thread>
				<tbody>
					<c:forEach items="${requestScope.list}" var="book">
						<tr>
							<td><a href="./front?key=selectEvent&evNo=${book.event.evNo}"><img src="${pageContext.request.contextPath}/eventImage/${book.event.evImg}" alt="" width="250" height="150"></a></td>
							<td>${book.event.evName}</td>
							<td><fmt:formatDate value="${book.event.evTime.evStartTime}"
								pattern="yyyy/MM/dd hh:mm" />
								~
								<fmt:formatDate value="${book.event.evTime.evStartTime}"
								pattern="yyyy/MM/dd hh:mm" />
							</td>
							<td><a href="${pageContext.request.contextPath}/front?key=deleteBookController&evNo=${book.event.evNo}">삭제</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<!-- container end -->

	<!-- footer -->
	<c:import url="footer.jsp"></c:import>
</body>
</html>