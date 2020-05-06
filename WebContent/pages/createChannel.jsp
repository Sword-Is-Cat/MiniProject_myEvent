<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<link href="${pageContext.request.contextPath}/pages/css/createChannel.css" rel="stylesheet">
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
</style>
</head>

<body>
	<c:import url="headerTop.jsp" />

	<c:import url="header.jsp" />

	<!-- Main container start -->
	<section id="main-container">
		<div class="container">
			<div class="pageTitle">
				<h3 class="signUpTitle">채널 개설</h3>
			</div>
			<div class="row">
				<div class="col 16 s12 mx-auto">
					<div class="text-center">
						<div class="mt-4">
							<div class="content mb-4 hide-on-small-only">
								<div class="channel-create__nav">
									<ul>
										<li class="active"><a href="#" target="_blank"> 채널 개설</a></li>
										<li><a href="#">채널 행사개설</a></li>
										<li><a href="#">행사 개설완료</a></li>
									</ul>
								</div>
							</div>
							<div class="px-3">
								<img src="./images/channel-header.png" style="width: 50%" />
							</div>
						</div>

						<div class="p-5 mt-3 indexBox"
							style="border: 1px solid #e4e4e4; background-color: #e5e5e5">
							<span class="txt-12"> <span class="textColor">마이이벤트</span>에서는
								호스트가 행사를 통해 자신의 브랜드를 알릴 수 있도록<br /> 채널을 개설할 수 있게 안내하고 있습니다.<br />
								행사를 개설하시기 전에 채널을 먼저 개설하시고,<br /> 행사를 개설할 수 있도록 안내해 드리고 있습니다.
							</span>
						</div>
					</div>

				</div>
			</div>


		</div>
		<div class="gap-30"></div>
		<div class="container">

			<div class="row rowWrap">
				<!-- 채널 전체 -->

				<!-- 채널개설part -->
				<div class="col-md-7">
					<form id="contact-form" class="contact-form"
						action="../front?key=createChannel" method="post" role="form"
						enctype="multipart/form-data">
						<div class="row">
							<div class="form-wrapper col-md-8">
								<div class="form-group">

									<label>채널명</label> <input class="form-control" name="chName"
										id="name" placeholder="" type="text" required>
								</div>
							</div>
							<div class="form-wrapper col-md-4">
								<div class="form-group">
									<label>개설자</label> <input class="form-control" name="userName"
										type="text" required="required" value='${sessionScope.userName}'
										readonly />
								</div>
							</div>
						</div>
						<div class="row">
							<div class="form-wrapper col-md-4">
								<div class="form-group">
									<label> 채널 이미지 </label> <input class="btn btn-light"
										type="file" name="chImg" id="file"
										accept="image/gif, image/jpeg, image/png">
								</div>
							</div>
						</div>

						<div class="form-group">
							<label> 채널 설명 </label>
							<textarea class="form-control" name="chDescription"
								id="chDescription" placeholder="" rows="10" required></textarea>
						</div>
						
						<input type="hidden" name="userNo" value="${sessionScope.userNo}"/>

						<!-- 	<div class="text-right">
		<br>
			<button class="btn btn-primary solid blank" type="submit">채널 생성 신청</button>
		</div> -->
		<div class="row" style="margin-top: 40px">
							<div class="col s12">

								<button type="submit" class="btn btn-info channelBtn">개설하기</button>
							</div>
						</div>

					</form>
					<!-- form end -->

				
				<!-- 주의사항 start -->
				<div class="col-md-5">
					<div class="contact-info">
						<div class="pageTitle">
							<h3 class="createChTitle">주의사항</h3>
						</div>
						<ul class="chList">
							<li>채널명은 한글 15자까지 입력</li>
					
							<li>이미지는 *** Mb 까지 업로드</li>
				
							<li>이미지는 jpg, png, gif 파일만 등록할 수 있습니다</li>
					
							<li>채널 설명은 한글 250자까지 입력</li>
					
							<li>할말이 더 있던가요..☆</li>
						</ul>
						

					</div>
				</div>
				<!-- 주의사항 end -->
					
				</div>
			</div>
			<!--row end -->
		</div>
		<!--/ container end -->
	</section>
	<!--/ Main container end -->


	<!-- footer.jsp -->
	<c:import url="footer.jsp" />
</body>

</html>