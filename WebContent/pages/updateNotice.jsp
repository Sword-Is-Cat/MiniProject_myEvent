<%@page import="kosta.mvc.vo.Notice"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link rel="stylesheet" href="./plugins/bootstrap/bootstrap.min.css">
<!-- FontAwesome -->
<link rel="stylesheet" href="./plugins/fontawesome/font-awesome.min.css">
<!-- Animation -->
<link rel="stylesheet" href="./plugins/animate.css">
<!-- Prettyphoto -->
<link rel="stylesheet" href="./plugins/prettyPhoto.css">
<!-- Owl Carousel -->
<link rel="stylesheet" href="./plugins/owl/owl.carousel.css">
<link rel="stylesheet" href="./plugins/owl/owl.theme.css">
<!-- Flexslider -->
<link rel="stylesheet" href="./plugins/flex-slider/flexslider.css">
<!-- Flexslider -->
<link rel="stylesheet" href="./plugins/cd-hero/cd-hero.css">
<!-- Style Swicther -->
<link id="style-switch" href="./css/presets/preset3.css" media="screen"
	rel="stylesheet" type="text/css">

<!-- Main Stylesheet -->
<link href="./css/style.css" rel="stylesheet">
<link href="./css/defaultStyle.css" rel="stylesheet">
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
</head>

<body>
	<!--subTopMenu-->
	<c:import url="./headerTop.jsp" />
	
	<!--subTopMenu end-->
	<c:import url="./header.jsp"/>
	<div class="gap-50 p-3">
		<div class="row justify-content-center p-3">
			<caption>공지사항 수정</caption>
		</div>
		<div class="row justify-content-center">

			<div class="col-md-6">
				<form id="contact-form" name="updateNotice" action="front?key=updateNotice"
					method="post" role="form">
					<!-- <input type="hidden" name="key" value="updateNotice" >어떤컨트롤러를 실행해야하는지에 대한 키값 -->
				    <input type='hidden' name='noticeNo' value="${notice.noticeNo}">
					<div class="row">
						<div class="col-md-12">
							<div class="form-group">
								<label>제목</label> <input class="form-control" name="noticeSubject"
									id="subject" value="${notice.noticeSubject}" placeholder="" required>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label>내용</label>
						<textarea class="form-control" name="noticeContent" id="message" value="${notice.noticeContent}"
							placeholder="" rows="10" required></textarea>
					</div>
					<div class="text-center">
						<br>
						<button class="btn btn-primary solid blank" type="submit">수정</button>
						<button class="btn btn-primary solid blank" type="button" onclick="javascript:history.back()">취소</button>
					</div>
				</form>
			</div>

		</div>
	</div>
	<!-- Body inner end -->

	<!-- footer -->
	<c:import url="./footer.jsp"></c:import>
</body>

</html>