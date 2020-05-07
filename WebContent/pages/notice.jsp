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
<script src="${pageContext.request.contextPath}/pages/plugins/jQuery/jquery.min.js"></script>
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

<style>
table {text-align: center;}
.mainContainer {margin-top:50px; padding-top:50px; border-top:1px solid #e5e5e5;}
.editBtns {text-align:right;}
.noticeTitle {
	/* font-size: 16px; */
	color: #8d71dd !important;
	text-align:center;
}
.writeBtn, .modifyBtn, .deleteBtn{
	background-color: #5c3fbf !important;
	border-color: #5c3fbf !important;
	text-align:right;
	margin-bottom:30px;
}
.btn.writeBtn:hover, .modifyBtn:hover, .deleteBtn:hover {
	background-color: #fff !important;
	border-color: #5c3fbf !important;
	color: #5c3fbf !important;
	transition: 0.2s;
}
td.alignLeft {padding-left:80px; text-align:left;}
th.displayHidden, td.displayHidden {display: none;}
</style>
</head>
<body>
	<!--subTopMenu-->
	<c:import url="headerTop.jsp" />
	<!--subTopMenu end-->

	<c:import url="header.jsp" />


	<!-- channalList start -->
	<%-- <%List<Notice> notice = NoticeService.selectAll();%> --%>
<div class="container-fluide mainContainer">
	
	<div class="container">
	<div class="row justify-content-center">
		<div class="col s12">
			<h3 class="noticeTitle">공지사항</h3>
			<c:if test="${sessionScope.userNo == 0}">
				<input type="button" class="btn btn-info writeBtn float-right" value="글쓰기" onclick="location.href='${pageContext.request.contextPath}/pages/noticeWrite.jsp'"/>
			</c:if>
		</div>
		
			<table class="table table-hover">

				<thead>
					<tr class="mainTable">
						<th class="w-30"></th>
						<th class="w-15 displayHidden">번호</th>
						<th class="w-50">제목</th>
						<th class="w-30">날짜</th>
						<!-- <th class="noticeDelete">삭제</th> -->
					</tr>
				</thead>
				<tbody>

					<c:forEach items="${list}" var="notice" varStatus="state">
						<tr class="accordion-toggle delectSpace" data-toggle="collapse"
							data-target="#no${notice.noticeNo}">
							<td></td>
							<td class="displayHidden">${notice.noticeNo}</td>
							<td class="alignLeft">${notice.noticeSubject}<!-- </a> --></td>
							<td><fmt:formatDate value="${notice.noticeTime}" type="date"/></td>
						</tr>
						
						<tr class="accordion-body collapse" id="no${notice.noticeNo}">
							<td></td>
							<td class="displayHidden"></td>
							<td style="text-align:justify;">${notice.noticeContent}
								<div class="gap-40"></div>
								<div class="editBtns">
									<c:if test="${sessionScope.userNo == 0}">
										<input type="button" class="btn btn-info modifyBtn" value="수정" onClick="location.href='${pageContext.request.contextPath}/front?key=updateNoticeEdit&noticeNo=${notice.noticeNo}'">
										<input type="button" class="btn btn-info deleteBtn" value="삭제" onClick="location.href='${pageContext.request.contextPath}/front?key=deleteNotice&noticeNo=${notice.noticeNo}'">
									</c:if>
								</div>
							
							</td>
							<td></td>
						</tr>
					</c:forEach>

				</tbody>

			</table>

		
	</div>
</div>
</div><!-- main container end -->
<script>
	$('.deleteBtn').click(function() {
		var r = confirm("해당 공지를 삭제하시겠습니까?");
		  if (r == true) {
		   
		  } else {
		    location.href='${pageContext.request.contextPath}/front?key=viewToNotice';
		  }
	});
	
	
</script>
	<!-- footer -->

	<c:import url="./footer.jsp"></c:import>

</body>
</html>