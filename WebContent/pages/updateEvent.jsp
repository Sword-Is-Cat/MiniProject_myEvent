<%@page import="kosta.mvc.service.CategoryService"%>
<%@page import="kosta.mvc.vo.Category"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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

<!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
<!--[if lt IE 9]>
      <script src="plugins/html5shiv.js"></script>
      <script src="plugins/respond.min.js"></script>
    <![endif]-->

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
				<h2>행사 정보 변경</h2>
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb justify-content-center">
						<li class="breadcrumb-item"><a href="#"> 홈으로 </a></li>
						<li class="breadcrumb-item text-white" aria-current="page">
							행사 정보 변경</li>
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
						<form id="contact-form" action="front?key=updateEvent"
							method="post" role="form" enctype="multipart/form-data">
							<div class="row">
								<div class="col-md-8">
									<div class="form-group">
										<label> 행사명 </label> <input class="form-control" name="evName"
											id="name" placeholder="" type="text"
											value="${requestScope.event.evName}" required> <input
											name="evNo" id='evNo' type='hidden'
											value="${requestScope.event.evNo}">
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label> 개설채널 </label> <input class="form-control"
											name="chName" id="channel" type="text"
											value="${requestScope.event.channel.chName}" required
											readonly> <input name="chNo" id='chNo' type='hidden'
											value="${requestScope.event.channel.chNo}">
									</div>
								</div>
							</div>
							<%
								List<Category> cateList = CategoryService.selectAll();
							%>
							<div class="row">
								<div class="col-md-8">
									<div class="form-group">
										<label> 카테고리 </label> <select class="form-control"
											name="cateNo" id="cateNo" required>
											<option>선택</option>
											<c:forEach items='<%=cateList%>' var='listCate'>
												<c:choose>
													<c:when
														test="${listCate.cateNo==requestScope.event.category.cateNo}">
														<option value="${listCate.cateNo}" selected>${listCate.cateName}</option>
													</c:when>
													<c:otherwise>
														<option value="${listCate.cateNo}">${listCate.cateName}</option>
													</c:otherwise>

												</c:choose>
											</c:forEach>
										</select>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label> 정원 </label> <input class="form-control"
											name="evBookMax" id="evBookMax" placeholder="" type="text"
											value="${requestScope.event.evBookMax}" required>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label> 행사 설명 </label>
								<textarea class="form-control" name="evDescription" id="message"
									rows="10" required>${requestScope.event.evDescription}</textarea>
							</div>

							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label> 행사 이미지 </label> <input type="file" name="evImage"
											id="file" accept="image/gif, image/jpeg, image/png">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label> 행사 상세 이미지 </label> <input type="file"
											name="evImageDetail" id="file"
											accept="image/gif, image/jpeg, image/png">
									</div>
								</div>
							</div>

							<h3>행사 접수 기간</h3>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label> 접수 시작 </label> <input class="form-control"
											name="evBookStart" id="evBookStartTime" type="datetime-local">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label> 접수 종료 </label> <input class="form-control"
											name="evBookEnd" id="evBookEndTime" type="datetime-local">
									</div>
								</div>
							</div>
							<h3>행사 진행 기간</h3>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label> 행사 시작 </label> <input class="form-control"
											name="evStart" id="evStartTime" type="datetime-local">
									</div>
								</div>

								<div class="col-md-6">
									<div class="form-group">
										<label> 행사 종료 </label> <input class="form-control"
											name="evEnd" id="evEndTime" type="datetime-local">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label> 주소</label><input id="evAddr" name="evAddr"
											value="${requestScope.event.evAddr}" placeholder="상세주소">
									</div>
								</div>
							</div>
							<h3>행사 담당자 연락처</h3>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label> 휴대폰 </label> <input class="form-control"
											name="evPhone" id="name" placeholder="010-0000-0000"
											type="text" value="${requestScope.event.evPhone}" required>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label> 이메일 </label> <input class="form-control"
											name="evEmail" id="channel" type="text"
											placeholder="abcde@abcde.com"
											value="${requestScope.event.evEmail}" required>
									</div>
								</div>
							</div>

							<div class="text-right">
								<br>
								<button class="btn btn-primary solid blank" type="submit">
									행사 정보 변경</button>
							</div>
						</form>
					</div>

					<div class="col-md-5">
						<div class="contact-info">
							<h2>
								<br>주의 사항<br> <br>
							</h2>
							<p>
							<ul>
								<li>행사명은 한글 15자까지 입력</li>
								<br>
								<li>이미지, 상세이미지는 50 Mb 까지 업로드</li>
								<br>
								<li>이미지는 jpg, png, gif 파일만 등록할 수 있습니다 <br> 새 이미지를 첨부하지
									않으면 기존 이미지가 유지됩니다
								</li>
								<br>
								<li>채널 설명은 한글 250자까지 입력</li>
								<br>
								<li>접수, 행사일정 미입력 시 기존 일정이 유지됩니다</li>
								<br>
								<li>할말이 더 있던가요</li>
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

	<!-- footer -->
	<c:import url="footer.jsp" />


</body>


</body>
</html>