<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<body>
	<c:import url="headerTop.jsp" />
	<!--subTopMenu end-->

	<c:import url="header.jsp" />

	<div id="banner-area">
		<img src="images/banner/banner1.jpg" alt="" />
		<div class="parallax-overlay"></div>
		<!-- Subpage title start -->
		<div class="banner-title-content">
			<div class="text-center">
				<h2>채널 정보 변경</h2>
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb justify-content-center">
						<li class="breadcrumb-item"><a href="#"> 홈으로 </a></li>
						<li class="breadcrumb-item text-white" aria-current="page">
							채널 정보 변경</li>
					</ol>
				</nav>
			</div>
		</div>
		<!-- Subpage title end -->
	</div>
	<!-- Banner area end -->


	<div class="body-inner">



		<!-- Main container start -->
		<section id="main-container">
			<div class="container">

				<div class="gap-40"></div>

				<div class="row">
					<div class="col-md-7">
						<form id="contact-form" action="front?key=updateChannel"
							method="post" role="form" enctype="multipart/form-data">
							<div class="row">
								<div class="col-md-8">
									<div class="form-group">
										<label> 채널명 </label> <input class="form-control" name="chName"
											id="chName" type="text" required value=${channel.chName}>
											<input class="form-control" name="chNo"
											id="chNo" type="hidden" required value=${channel.chNo}>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label> 개설자 </label> <input class="form-control" name="userName"
											id="userNo" type="text" required
											readonly placeholder=${channel.user.userName}>

									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-4">
									<div class="form-group">
										<label> 채널 이미지 </label><input type="file" name="chImg"
											id="chImg" accept="image/gif, image/jpeg, image/png">
									</div>
								</div>
							</div>
							<div class="form-group">
								<label> 채널 설명 </label>
								<textarea class="form-control" name="chDescription"
									id="chDescription" placeholder="" rows="10" required>${channel.chDescription}</textarea>
							</div>
							<div class="text-right">
								<br>
								<button class="btn btn-primary solid blank" type="submit">
									채널 정보 수정</button>
							</div>
							<input type="hidden" name="userNo" value="${channel.user.userNo}"/>
						</form>
					</div>

					<div class="col-md-5">
						<div class="contact-info">
							<h2>
								<br>주의 사항<br> <br>
							</h2>
							<p>
							<ul>
								<li>채널명은 한글 15자까지 가능</li>
								<br>
								<li>이미지는 jpg, png, gif 파일만 등록할 수 있습니다 <br> 새 이미지를 첨부하지
									않으면 기존 이미지가 유지됩니다
								</li>
								<br>
								<li>채널 설명은 한글 250자까지 입력</li>
							</ul>
							</p>

						</div>
					</div>
				</div>
			</div>
			<!--/ container end -->
		</section>
		<!--/ Main container end -->




	</div>
	<!-- Body inner end -->

	<!-- footer end-->

	<c:import url="footer.jsp" />

</body>

</html>