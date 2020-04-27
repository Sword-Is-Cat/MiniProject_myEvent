<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
   
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>My Event :: ���� �Բ� �ϴ� ��� ����</title>

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
				<h2>ä�� ���� ����</h2>
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb justify-content-center">
						<li class="breadcrumb-item"><a href="#"> Ȩ���� </a></li>
						<li class="breadcrumb-item text-white" aria-current="page">
							ä�� ���� ����</li>
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
										<label> ä�θ� </label> <input class="form-control" name="chName"
											id="chName" type="text" required value=${channel.chName}>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label> ������ </label> <input class="form-control" name="userNo"
											id="userNo" type="text" required
											readonly placeholder=${channel.userNo}>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-4">
									<div class="form-group">
										<label> ä�� �̹��� </label><input type="file" name="chImg"
											id="chImg" accept="image/gif, image/jpeg, image/png">
									</div>
								</div>
							</div>
							<div class="form-group">
								<label> ä�� ���� </label>
								<textarea class="form-control" name="chDescription" id="chDescription"
									placeholder="" rows="10" required>${channel.chDescription}</textarea>
							</div>
							<div class="text-right">
								<br>
								<button class="btn btn-primary solid blank" type="submit">
									ä�� ���� ����</button>
							</div>
						</form>
					</div>

					<div class="col-md-5">
						<div class="contact-info">
							<h2>
								<br>���� ����<br> <br>
							</h2>
							<p>
							<ul>
								<li>ä�θ��� �ѱ� 15�ڱ��� �Է�</li>
								<br>
								<li>�̹����� *** Mb ���� ���ε�</li>
								<br>
								<li>�̹����� jpg, png, gif ���ϸ� ����� �� �ֽ��ϴ�
								<br>
								�� �̹����� ÷������ ������ ���� �̹����� �����˴ϴ�</li>
								<br>
								<li>ä�� ������ �ѱ� 250�ڱ��� �Է�</li>
								<br>
								<li>�Ҹ��� �� �ִ�����</li>
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