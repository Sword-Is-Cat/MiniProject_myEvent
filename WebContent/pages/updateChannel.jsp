<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
   
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>My Event :: 행사와 함께 하는 모든 순간</title>

   <!-- mobile responsive meta -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  
   <!-- ** Plugins Needed for the Project ** -->
  <!-- Bootstrap -->
  <link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.css">
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
	<link id="style-switch" href="css/presets/preset3.css" media="screen" rel="stylesheet" type="text/css">

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
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="./images/favicon/144.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="./images/favicon/72.png">
	<link rel="apple-touch-icon-precomposed" href="./images/favicon/54.png">
  <!-- webFont -->
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
</head>

<body>
<c:import url="headerTop.jsp"/>
<!--subTopMenu end-->	

<c:import url="header.jsp"/>

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
						<form id="contact-form" action="contact-form.php" method="post"
							role="form">
							<div class="row">
								<div class="col-md-8">
									<div class="form-group">
										<label> 채널명 </label> <input class="form-control" name="chName"
											id="chName" type="text" required value=${channel.chName}>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label> 개설자 </label> <input class="form-control" name="userNo"
											id="userNo" type="text" required
											readonly placeholder=${channel.userNo}>
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
								<textarea class="form-control" name="chDescription" id="chDescription"
									placeholder="" rows="10" required>${channel.chDescription}</textarea>
							</div>
							<div class="text-right">
								<br>
								<button class="btn btn-primary solid blank" type="submit">
									채널 정보 수정</button>
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
								<li>채널명은 한글 15자까지 입력</li>
								<br>
								<li>이미지는 *** Mb 까지 업로드</li>
								<br>
								<li>이미지는 jpg, png, gif 파일만 등록할 수 있습니다
								<br>
								새 이미지를 첨부하지 않으면 기존 이미지가 유지됩니다</li>
								<br>
								<li>채널 설명은 한글 250자까지 입력</li>
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

<!-- footer end-->	

<c:import url="footer.jsp"/>

</body>

</html>