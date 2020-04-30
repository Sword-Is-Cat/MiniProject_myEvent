<%@page import="kosta.mvc.service.NoticeService"%>
<%@page import="kosta.mvc.vo.Notice"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
<script src="pages/plugins/jQuery/jquery.min.js"></script>
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
<link href="pages/css/defaultStyle.css" rel="stylesheet">
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
	
<script>
$(function(){
/* 	if(${sessionScope.userStatus}==2) {
		${'.mainTable'}.append("<th class="noticeDelete">삭제</th>");
		${'.delectSpace'}.append("<td class="noticeDelete"><input type="button" value="삭제" /></td>");
	} */
	
	$('.deleteBtn').click(function(){
		
	});//delete end
});//end
</script>
<style>
table {text-align: center;}
.mainContainer {margin-top:50px; padding-top:50px; border-top:1px solid #e5e5e5;}
</style>
</head>
<body>
	<!--subTopMenu-->
	<c:import url="./headerTop.jsp" />
	<!--subTopMenu end-->

	<c:import url="./header.jsp" />


	<!-- channalList start -->
	<%-- <%List<Notice> notice = NoticeService.selectAll();%> --%>
<div class="container-fluide mainContainer"></div><!-- container end -->
	
	<div class="container">
	<div class="row justify-content-center">
		<div class="col s12">
			<caption>공지사항</caption>
			<table class="table table-hover">

				<thead>
					<tr class="mainTable">
						<th>번호</th>
						<th>제목</th>
						<th>날짜</th>
						<th class="noticeDelete">삭제</th>
					</tr>
				</thead>
				<tbody>


					<c:forEach items="${list}" var="notice" varStatus="state">
						<tr class="accordion-toggle delectSpace" data-toggle="collapse"
							data-target="#no${notice.noticeNo}">
							<td>${notice.noticeNo}</td>
							<td>${notice.noticeSubject}</td>
							<td><fmt:formatDate value="${notice.noticeTime}" type="date"/></td>
							<td>　</td>
							
						</tr>
						<tr class="accordion-body collapse" id="no${notice.noticeNo}">
							<td></td>
							<td>${notice.noticeContent}</td>
							<td></td>
							<td class="noticeDelete"><input type="button" class="deleteBtn" value="삭제" onClick="sendDelete()"/></td>
						</tr>
					</c:forEach>

				</tbody>

			</table>

		</div>
	</div>
</div>
	<!-- footer -->

	<c:import url="./footer.jsp"></c:import>

</body>
</html>