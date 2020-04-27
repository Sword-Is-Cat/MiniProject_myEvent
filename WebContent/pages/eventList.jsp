<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
  	<!--���� ���� style -->
  <style>
  	.option{
  		color: "navy";
  		
  	}
  	.select{
  		margin-left: 55%;
  	}
  	eTitle.hover {
  		text-decoration: none;
  		color: inherit;
	}
	img{
		width: 200px;
		height: 180px;
	}
	eTitle{
		display: block; 
		white-space: nowrap; 
		overflow: hidden; 
		text-overflow: ellipsis;
	}
	.eTitle:hover {
  		text-decoration: none;
  		color: inherit;
	}

  </style>
  <!-- mobile responsive meta -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  
  <!-- ** Plugins Needed for the Project ** -->
  <!-- Bootstrap -->
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
  
  <!--Favicon-->
	<link rel="icon" href="img/favicon/favicon-32x32.png" type="image/x-icon" />
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="img/favicon/favicon-144x144.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/favicon/favicon-72x72.png">
	<link rel="apple-touch-icon-precomposed" href="img/favicon/favicon-54x54.png">

</head>

<body>
<!--subTopMenu-->
<div class="container">
			<div class="cols 12">
				<div class="subTopMenu d-flex justify-content-end">
				<ul class="subMenu">
					<li class="nav-item active"><a class="nav-link" href="login.jsp" role="button" >�α���</a></li>
					<li class="nav-item active"><a class="nav-link" href="index.jsp" role="button">�α׾ƿ�</a></li>
					<li class="nav-item active"><a class="nav-link" href="signUp.jsp" role="button">ȸ������</a></li>
					<li class="nav-item dropdown active">
						<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false">
							����������
						</a>
						<div class="dropdown-menu" style="border: 1.5px solid #222; border-radius: 10px;">
							<a class="dropdown-item" href="index.html">��ü ��û����</a>
							<a class="dropdown-item" href="interestEvent.jsp">���� ��� ���</a>
							<a class="dropdown-item" href="myWrite.jsp">���� �� ��</a>
							<a class="dropdown-item" href="changeUserInfo.jsp">ȸ�� ���� ����</a>
						</div>
					</li>
				</ul>
			</div><!--subTopMenu-->
		</div><!--cols12 end-->
	</div><!--container end-->
<!--subTopMenu end-->	

<c:import url="header.jsp"></c:import>

<h4 style="margin-left:15%">�� n���� �˻� ����� �ֽ��ϴ�.</h4>
<!-- Portfolio start -->
<section id="main-container" class="portfolio-static">
	<div class="container">
		<div class="row">
			<div class="col-sm-4 portfolio-static-item">
				<div class="grid">
					<figure class="m-0 effect-oscar">
						<img src="https://eventusstorage.blob.core.windows.net/evs/Image/event/16764/ProjectInfo/Cover/e3f492fb160d420ca4483e56964b710d.jpg?fixed" alt="">
						<figcaption>
							<a class="link icon-pentagon" href="portfolio-item.html"><i class="fa fa-link"></i></a>
							<a class="view icon-pentagon" data-rel="prettyPhoto" href="images/portfolio/portfolio-bg1.jpg"><i
									class="fa fa-search"></i></a>
						</figcaption>
					</figure>
					<div class="portfolio-static-desc">
					<table>
						<tr><td><a href="#"><h3 id="eTitle" class="eTitle">[EVENT-US] �̺��ͽ� ����, �Ϸ縸�� �ǰ���!</h3></a></td></tr>
						<tr><td><a href="#">���Ⱓ</a></td></tr>
						<tr><td><a href="#">��/����</a></td></tr>
					</table>
						
					</div>
				</div>
				<!--/ grid end -->
			</div>
			<!--/ item 1 end -->

			<div class="col-sm-4 portfolio-static-item">
				<div class="grid">
					<figure class="m-0 effect-oscar">
						<img src="https://eventusstorage.blob.core.windows.net/evs/Image/tentuplay/16716/ProjectInfo/Cover/a447a98ed1c142359cf6444ace7908ac.jpg?fixed" alt="">
						<figcaption>
							<a class="link icon-pentagon" href="portfolio-item.html"><i class="fa fa-link"></i></a>
							<a class="view icon-pentagon" data-rel="prettyPhoto" href="images/portfolio/portfolio-bg2.jpg"><i
									class="fa fa-search"></i></a>
						</figcaption>
					</figure>
					<div class="portfolio-static-desc">
					<table>
						<tr><td><a href="#"><h3 id="eTitle" class="eTitle">[DREAMPLUS Insight Night(�ν� ����)] �ν� ��ŸƮ�� ��ǥ�Ե��� �λ���Ʈ ����(Űư�÷���, Ȩ��)</h3></a></td></tr>
						<tr><td><a href="#">���Ⱓ</a></td></tr>
						<tr><td><a href="#">��/����</a></td></tr>
					</table>
					</div>
				</div>
				<!--/ grid end -->
			</div>
			<!--/ item 2 end -->

			<div class="col-sm-4 portfolio-static-item">
				<div class="grid">
					<figure class="m-0 effect-oscar">
						<img src="https://eventusstorage.blob.core.windows.net/evs/Image/dreamplusgangnam/16372/ProjectInfo/Cover/489df4119075489c986f6ea646545124.jpg?fixed" alt="">
						<figcaption>
							<a class="link icon-pentagon" href="portfolio-item.html"><i class="fa fa-link"></i></a>
							<a class="view icon-pentagon" data-rel="prettyPhoto" href="images/portfolio/portfolio-bg3.jpg"><i
									class="fa fa-search"></i></a>
						</figcaption>
					</figure>
					<div class="portfolio-static-desc">
						<h3>Your Business</h3>
						<span><a href="#">Ui Elements</a></span>
					</div>
				</div>
				<!--/ grid end -->
			</div>
			<!--/ item 3 end -->

			<div class="col-sm-4 portfolio-static-item">
				<div class="grid">
					<figure class="m-0 effect-oscar">
						<img src="images/portfolio/portfolio4.jpg" alt="">
						<figcaption>
							<a class="link icon-pentagon" href="portfolio-item.html"><i class="fa fa-link"></i></a>
							<a class="view icon-pentagon" data-rel="prettyPhoto" href="images/portfolio/portfolio-bg1.jpg"><i
									class="fa fa-search"></i></a>
						</figcaption>
					</figure>
					<div class="portfolio-static-desc">
						<h3>Prego Match</h3>
						<span><a href="#">Media Elements</a></span>
					</div>
				</div>
				<!--/ grid end -->
			</div>
			<!--/ item 4 end -->

			<div class="col-sm-4 portfolio-static-item">
				<div class="grid">
					<figure class="m-0 effect-oscar">
						<img src="images/portfolio/portfolio5.jpg" alt="">
						<figcaption>
							<a class="link icon-pentagon" href="portfolio-item.html"><i class="fa fa-link"></i></a>
							<a class="view icon-pentagon" data-rel="prettyPhoto" href="images/portfolio/portfolio-bg2.jpg"><i
									class="fa fa-search"></i></a>
						</figcaption>
					</figure>
					<div class="portfolio-static-desc">
						<h3>Fashion Brand</h3>
						<span><a href="#">Graphics Media</a></span>
					</div>
				</div>
				<!--/ grid end -->
			</div>
			<!--/ item 5 end -->

			<div class="col-sm-4 portfolio-static-item">
				<div class="grid">
					<figure class="m-0 effect-oscar">
						<img src="images/portfolio/portfolio6.jpg" alt="">
						<figcaption>
							<a class="link icon-pentagon" href="portfolio-item.html"><i class="fa fa-link"></i></a>
							<a class="view icon-pentagon" data-rel="prettyPhoto" href="images/portfolio/portfolio-bg3.jpg"><i
									class="fa fa-search"></i></a>
						</figcaption>
					</figure>
					<div class="portfolio-static-desc">
						<h3>The Insidage</h3>
						<span><a href="#">Material Design</a></span>
					</div>
				</div>
				<!--/ grid end -->
			</div>
			<!--/ item 6 end -->

			<div class="col-sm-4 portfolio-static-item">
				<div class="grid">
					<figure class="m-0 effect-oscar">
						<img src="images/portfolio/portfolio7.jpg" alt="">
						<figcaption>
							<a class="link icon-pentagon" href="portfolio-item.html"><i class="fa fa-link"></i></a>
							<a class="view icon-pentagon" data-rel="prettyPhoto" href="images/portfolio/portfolio-bg1.jpg"><i
									class="fa fa-search"></i></a>
						</figcaption>
					</figure>
					<div class="portfolio-static-desc">
						<h3>Light Carpet</h3>
						<span><a href="#">Mockup</a></span>
					</div>
				</div>
				<!--/ grid end -->
			</div>
			<!--/ item 7 end -->

			<div class="col-sm-4 portfolio-static-item">
				<div class="grid">
					<figure class="m-0 effect-oscar">
						<img src="images/portfolio/portfolio8.jpg" alt="">
						<figcaption>
							<a class="link icon-pentagon" href="portfolio-item.html"><i class="fa fa-link"></i></a>
							<a class="view icon-pentagon" data-rel="prettyPhoto" href="images/portfolio/portfolio-bg2.jpg"><i
									class="fa fa-search"></i></a>
						</figcaption>
					</figure>
					<div class="portfolio-static-desc">
						<h3>Amazing Keyboard</h3>
						<span><a href="#">Photography</a></span>
					</div>
				</div>
				<!--/ grid end -->
			</div>
			<!--/ item 8 end -->

		</div><!-- Content row end -->
	</div><!-- Container end -->
</section><!-- Portfolio end -->

<div class="gap-40"></div>
</div><!-- Body inner end -->
<!-- footer -->
<c:import url="footer.jsp"></c:import>
</body>

</html>