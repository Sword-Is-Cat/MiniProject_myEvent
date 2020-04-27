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
<style>
	*,.title-desc,h1,h2,h3,h4,h5,h6,p {
		//font-family: 'Noto Sans KR', sans-serif ;
	}
</style>
</head>

<body>
	<div class="body-inner">
<!--subTopMenu-->
<div class="container">
			<div class="cols 12">
				<div class="subTopMenu d-flex justify-content-end">
					<ul class="subMenu">
					<li class="nav-item active"><a class="nav-link" href="#" role="button" href="#">�α���</a></li>
					<li class="nav-item active"><a class="nav-link" href="#" role="button" href="#">�α׾ƿ�</a></li>
					<li class="nav-item active"><a class="nav-link" href="#" role="button"  href="#">ȸ������</a></li>
					<li class="nav-item dropdown active">
						<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false">
							����������
						</a>
						<div class="dropdown-menu" style="border: 1.5px solid #222; border-radius: 10px;">
							<a class="dropdown-item" href="index.html">��ü ��û����</a>
							<a class="dropdown-item" href="index-2.html">���� ��� ���</a>
							<a class="dropdown-item" href="index-3.html">���� �� ��</a>
							<a class="dropdown-item" href="index-4.html">ȸ�� ���� ����</a>
						</div>
					</li>
				</ul>
			</div><!--subTopMenu-->
		</div><!--cols12 end-->
	</div><!--container end-->
<!--subTopMenu end-->	
<c:import url="header.jsp"/>
<!-- Banner area start -->
<!-- <div id="banner-area">
	<img src="images/banner/banner1.jpg" alt="" />
	<div class="parallax-overlay"></div>
	Subpage title start
	<div class="banner-title-content">
		<div class="text-center">
			<h2>About Us</h2>
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb justify-content-center">
					<li class="breadcrumb-item"><a href="#">Home</a></li>
					<li class="breadcrumb-item text-white" aria-current="page">About Us</li>
				</ol>
			</nav>
		</div>
	</div> --><!-- Subpage title end -->
</div><!-- Banner area end -->

<!-- Main container start -->
<section id="main-container">
	<div class="container">

		<!-- Company Profile -->
		<div class="row">
			<div class="col-md-12 heading">
				<span class="title-icon classic float-left"><i class="fa fa-suitcase"></i></span>
				<h2 class="title classic">Company Profile</h2>
			</div>
		</div><!-- Title row end -->

		<div class="row landing-tab">
			<div class="col-md-3 col-sm-5">
				<div class="nav flex-column nav-pills border-right" id="v-pills-tab" role="tablist" aria-orientation="vertical">
					<a class="animated fadeIn nav-link py-4 active d-flex align-items-center" data-toggle="pill" href="#tab_1"
						role="tab" aria-selected="true">
						<i class="fa fa-info-circle mr-4"></i>
						<span class="h4 mb-0 font-weight-bold">My Event</span>
					</a>
					<a class="animated fadeIn nav-link py-4 d-flex align-items-center" data-toggle="pill" href="#tab_2" role="tab"
						aria-selected="true">
						<i class="fa fa-briefcase mr-4"></i>
						<span class="h4 mb-0 font-weight-bold">OUR COMPANY</span>
					</a>
					<a class="animated fadeIn nav-link py-4 d-flex align-items-center" data-toggle="pill" href="#tab_3" role="tab"
						aria-selected="true">
						<i class="fa fa-android mr-4"></i>
						<span class="h4 mb-0 font-weight-bold">What We Do</span>
					</a>
					<a class="animated fadeIn nav-link py-4 d-flex align-items-center" data-toggle="pill" href="#tab_4" role="tab"
						aria-selected="true">
						<i class="fa fa-pagelines mr-4"></i>
						<span class="h4 mb-0 font-weight-bold">Modern Design</span>
					</a>
					<a class="animated fadeIn nav-link py-4 d-flex align-items-center" data-toggle="pill" href="#tab_5" role="tab"
						aria-selected="true">
						<i class="fa fa-support mr-4"></i>
						<span class="h4 mb-0 font-weight-bold">Dedicated Support</span>
					</a>
				</div>
			</div>
			<div class="col-md-9 col-sm-7">
				<div class="tab-content" id="v-pills-tabContent">
					<div class="tab-pane pl-sm-5 fade show active animated fadeInLeft" id="tab_1" role="tabpanel">
						<i class="fa fa-trophy icon-xl text-primary mb-4"></i>
						<h3>�ְ��� ��� ���� �÷���</h3>
						<p>�����̺�Ʈ�� 2020�⿡ ������ �̺�Ʈ ��ũ ������Ʈ�Դϴ�. 
							������ ��� ���忡 IT�� �÷����� ������ ������ ������ �ͽ��ϴ�. 
							���� ���ϴ� ��縦 �����ϰų� ������ �� �ִ� �÷��� "�����̺�Ʈ"�� ��ϰ� �ֽ��ϴ�.</p>
					</div>
					<div class="tab-pane pl-sm-5 fade animated fadeInLeft" id="tab_2" role="tabpanel">
						<i class="fa fa-briefcase icon-xl text-primary mb-4"></i>
						<h3>We Have Worldwide Business</h3>
						<p>Helvetica cold-pressed lomo messenger bag ugh. Vinyl jean shorts Austin pork belly PBR retro, Etsy VHS
							kitsch actually messenger bag pug. Pbrb semiotics try-hard, Schlitz occupy dreamcatcher master cleanse
							Marfa Vice tofu. </p>
					</div>
					<div class="tab-pane pl-sm-5 fade animated fadeInLeft" id="tab_3" role="tabpanel">
						<i class="fa fa-android icon-xl text-primary mb-4"></i>
						<h3>We Build Readymade Applications</h3>
						<p>Over the year we have lots of experience in our field. In sit amet massa sapien. Vestibulum diam turpis,
							gravida in lobortis id, ornare a eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam
							sagittis nulla non elit dignissim suscipit. Duis lorem nulla, eleifend.</p>
					</div>
					<div class="tab-pane pl-sm-5 fade animated fadeInLeft" id="tab_4" role="tabpanel">
						<i class="fa fa-pagelines icon-xl text-primary mb-4"></i>
						<h3>Clean and Modern Design</h3>
						<p>Over the year we have lots of experience in our field. In sit amet massa sapien. Vestibulum diam turpis,
							gravida in lobortis id, ornare a eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam
							sagittis nulla non elit dignissim suscipit. Duis lorem nulla, eleifend.</p>
					</div>
					<div class="tab-pane pl-sm-5 fade animated fadeInLeft" id="tab_5" role="tabpanel">
						<i class="fa fa-support icon-xl text-primary mb-4"></i>
						<h3>24/7 Dedicated Support</h3>
						<p>Occupy selfies Tonx, +1 Truffaut beard organic normcore tilde flannel artisan squid cray single-origin
							coffee. Master cleanse vinyl Austin kogi, semiotics skateboard fap wayfarers health goth. Helvetica cray
							church-key hashtag Carles. Four dollar toast meggings seitan, Tonx pork belly VHS Bushwick. Chambray banh
							mi cornhole. Locavore messenger bag seitan.</p>
					</div>
				</div>
			</div>
		</div>
		<!--/ Content row end -->
	</div>
	<!--/ 1st container end -->

	<div class="gap-60"></div>


	<div class="container">
		<!-- 2nd container start -->

		<!-- Team start -->
		<div class="team">

			<div class="row">
				<div class="col-md-12 heading">
					<span class="title-icon classic float-left"><i class="fa fa-weixin"></i></span>
					<h2 class="title classic">Meet with our Team</h2>
				</div>
			</div><!-- Title row end -->

			<div class="row text-center">
				<div class="col-md-3 col-sm-6">
					<div class="team wow slideInLeft">
						<div class="img-hexagon">
							<img src="images/team/team1.jpg" alt="">
							<span class="img-top"></span>
							<span class="img-bottom"></span>
						</div>
						<div class="team-content">
							<h3>������</h3>
							<p>Web Designer</p>
							<div class="team-social">
								<a class="fb" href="#"><i class="fa fa-facebook"></i></a>
								<a class="twt" href="#"><i class="fa fa-twitter"></i></a>
								<a class="gplus" href="#"><i class="fa fa-google-plus"></i></a>
								<a class="linkdin" href="#"><i class="fa fa-linkedin"></i></a>
								<a class="dribble" href="#"><i class="fa fa-dribbble"></i></a>
							</div>
						</div>
					</div>
				</div>
				<!--/ Team 1 end -->
				<div class="col-md-3 col-sm-6">
					<div class="team wow slideInLeft">
						<div class="img-hexagon">
							<img src="images/team/team2.jpg" alt="">
							<span class="img-top"></span>
							<span class="img-bottom"></span>
						</div>
						<div class="team-content">
							<h3>��ȫ��</h3>
							<p>Web Designer</p>
							<div class="team-social">
								<a class="fb" href="#"><i class="fa fa-facebook"></i></a>
								<a class="twt" href="#"><i class="fa fa-twitter"></i></a>
								<a class="gplus" href="#"><i class="fa fa-google-plus"></i></a>
								<a class="linkdin" href="#"><i class="fa fa-linkedin"></i></a>
								<a class="dribble" href="#"><i class="fa fa-dribbble"></i></a>
							</div>
						</div>
					</div>
				</div>
				<!--/ Team 2 end -->
				<div class="col-md-3 col-sm-6">
					<div class="team wow slideInRight">
						<div class="img-hexagon">
							<img src="images/team/team3.jpg" alt="">
							<span class="img-top"></span>
							<span class="img-bottom"></span>
						</div>
						<div class="team-content">
							<h3>������</h3>
							<p>Web Designer</p>
							<div class="team-social">
								<a class="fb" href="#"><i class="fa fa-facebook"></i></a>
								<a class="twt" href="#"><i class="fa fa-twitter"></i></a>
								<a class="gplus" href="#"><i class="fa fa-google-plus"></i></a>
								<a class="linkdin" href="#"><i class="fa fa-linkedin"></i></a>
								<a class="dribble" href="#"><i class="fa fa-dribbble"></i></a>
							</div>
						</div>
					</div>
				</div>
				<!--/ Team 3 end -->
				<div class="col-md-3 col-sm-6">
					<div class="team animate wow slideInRight">
						<div class="img-hexagon">
							<img src="images/team/team4.jpg" alt="">
							<span class="img-top"></span>
							<span class="img-bottom"></span>
						</div>
						<div class="team-content">
							<h3>��ȿ��</h3>
							<p>Web Designer</p>
							<div class="team-social">
								<a class="fb" href="#"><i class="fa fa-facebook"></i></a>
								<a class="twt" href="#"><i class="fa fa-twitter"></i></a>
								<a class="gplus" href="#"><i class="fa fa-google-plus"></i></a>
								<a class="linkdin" href="#"><i class="fa fa-linkedin"></i></a>
								<a class="dribble" href="#"><i class="fa fa-dribbble"></i></a>
							</div>
						</div>
					</div>
				</div>
				<!--/ Team 4 end -->
				<div class="col-md-3 col-sm-6">
					<div class="team animate wow slideInRight">
						<div class="img-hexagon">
							<img src="images/team/team4.jpg" alt="">
							<span class="img-top"></span>
							<span class="img-bottom"></span>
						</div>
						<div class="team-content">
							<h3>������</h3>
							<p>Web Designer</p>
							<div class="team-social">
								<a class="fb" href="#"><i class="fa fa-facebook"></i></a>
								<a class="twt" href="#"><i class="fa fa-twitter"></i></a>
								<a class="gplus" href="#"><i class="fa fa-google-plus"></i></a>
								<a class="linkdin" href="#"><i class="fa fa-linkedin"></i></a>
								<a class="dribble" href="#"><i class="fa fa-dribbble"></i></a>
							</div>
						</div>
					</div>
				</div>
				<!--/ Team 5 end -->
			</div>
			<!--/ Content row end -->

		</div><!-- Team end -->

	</div><!-- 2nd container end -->
</section>
<!--/ Main container end -->
<!-- footer -->
<c:import url="footer.jsp"></c:import>
</body>

</html>