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
 <style>
/*---------����css-----------------*/
  	#btn{

  		margin-right: 400px;

  	}

  	#chDesc{

  		background-color: #f6f6f6;

  		min-height: 350px;

  		padding : 30px;

  		text-align: left;

  	}

  	#p{

  		float:left;

  		margin-left: 10px;

  	}

  	#makeEv{

  		margin: 0px;
  	}
  	.btnOpen {float: right;
    padding-right: 50px;
    position: relative;
    top: -30px; }
/*------------�����߰�css----------------------*/
	.mainContainer {
	/* position: relative;
	top:-50px; */
	}
.chSetting>i::before {
    content: "\f013";
   
    font-family: FontAwesome;
    font-style: normal;
    font-weight: 900;
    margin:0 auto;
    text-align:center;
    padding-right:5px;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
	}
	.chAuthor>i::before {
    content: "\f234";
    font-family: FontAwesome;
    font-style: normal;
    font-weight: 900;
    margin:0 auto;
    padding-right:5px;
    text-align:center;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
	}
	.chDel>i::before {
    content: "\f1f8";
    font-family: FontAwesome;
    font-style: normal;
	font-weight: 900;
    margin:0 auto;
    padding-right:5px;
    text-align:center;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
	}
	.chListMenu li {
	padding: 10px 15px 10px 0px;
	display:inline-block;
	}
	.bgPart {
		margin-top:50px;
		background:url("images/hostcenter_top_image.jpg") no-repeat;
		background-position: center center;
		background-size: cover;
		//padding-top:50px;
		
	}
	.bgImg {
	
		height:250px;
	}
	h4 .addCh::after {
		 content: "\f055";
	    font-family: FontAwesome;
	    font-style: normal;
		font-weight: 900;
	    margin:0 auto;
	    padding-right:20px;
	    text-align:center;
	    -webkit-font-smoothing: antialiased;
	    -moz-osx-font-smoothing: grayscale;
	}

  </style>
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

<!-- ä�θ��� -->

<!-- ä�θ��� end -->
<!-- Main container start -->
<div class="container-fluide bgPart">
	<div class="bgImg">
	
	
	</div>

</div>
<div class="Container mainContainer">

		<!--Isotope filter start -->
<!-- 
		<div class="row text-right">

			<div class="col-12">

				<div class="isotope-nav" data-isotope-nav="isotope">
					<div class="crCh">
						<a href="#" data-filter=".make-channel" id="btn">ä�� ����</a>
					</div>

	

				</div>

			</div>

		</div> --><!-- Isotope filter end -->

	<div class="container">

		<div class="row">

			<div class="col-md-12 heading">

				<span class="title-icon classic float-left"></span>

				<h4 class="title classic">ä���̸� <a class="addCh" href="#"></a></h4>

			</div>

		</div>

		<div class="row text-center">

			<div class="col-md-3 col-sm-6">

				<div class="team wow slideInLeft">

					<div class="img-hexagon">

						<img src="images/team/team1.jpg" alt="">

						<span class="img-top"></span>

						<span class="img-bottom"></span>

					</div>

					<div class="team-content">

						<h3>������ �̸�</h3>

						<p>������ email</p>

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

	<div class="col-md-9 col-sm-6">

		<div id="chDesc" class="team team-list wow slideInRight">

			<h4>�������: n��</h4>
			<div class="cd-full-width btnOpen">

				<a href="#0" id="makeEv" class="btn btn-primary solid cd-btn">��簳��</a>

			</div> <!-- .cd-full-width -->	
				<ul class="list-unstyled chListMenu">
					<li class=""><a class="chSetting" href="#"><i class="fa fa-users">ä�μ���</i></a></li>
					<li class=""><a class="chAuthor" href="#"><i class="fa fa-users">���Ѽ���</i></a></li>
					<li class=""><a class="chDel" href="#"><i class="fa fa-users">ä�λ���</i></a></li>
				</ul>
			
 		<div class="row d-flex justify-content-between">
			<div class="col-sm-5 portfolio-static-item">
				<div class="grid">
					<figure class="m-0 effect-oscar">
						<img src="images/thumnail/03.jpg" alt="">
						<figcaption>
							<a class="link icon-pentagon" href="portfolio-item.html"><i class="fa fa-link"></i></a>
							<a class="view icon-pentagon" data-rel="prettyPhoto" href="images/thumnail/03.jpg"><i
									class="fa fa-search"></i></a>
						</figcaption>
					</figure>
					<div class="portfolio-static-desc">
						<h3>[�帲�÷��� ���� IT Ʈ����] ����Ʈ, �� ����� �ô�</h3>
						<span><a href="#">Ui Elements</a></span>
					</div>
				</div>
				<!--/ grid end -->
			</div>
			<!--/ item 3 end -->

			<div class="col-sm-5 portfolio-static-item">
				<div class="grid">
					<figure class="m-0 effect-oscar">
						<img src="images/thumnail/04.jpg" alt="">
						<figcaption>
							<a class="link icon-pentagon" href="portfolio-item.html"><i class="fa fa-link"></i></a>
							<a class="view icon-pentagon" data-rel="prettyPhoto" href="images/thumnail/04.jpg"><i
									class="fa fa-search"></i></a>
						</figcaption>
					</figure>
					<div class="portfolio-static-desc">
						<h3>��ó�ø���#1(���� ������ ū ���� �Ѵٴ� ��)</h3>
						<span><a href="#">Media Elements</a></span>
					</div>
				</div>
				<!--/ grid end -->
			</div>
			
		</div> <!-- chDesc end -->
			
		</div><!-- row end -->
	</div><!-- row text-center -->

</div><!--col-md-9 col-sm-6 end -->

 </div>	<!--/ Container end -->
 </div><!-- main div container end -->

<!-- footer -->
<c:import url="footer.jsp"></c:import>
</body>

</html>