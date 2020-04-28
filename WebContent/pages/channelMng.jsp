<%@page import="java.util.List"%>
<%@page import="kosta.mvc.service.ChannelService"%>
<%@page import="kosta.mvc.vo.Channel"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
  <title>My Event :: ���ъ�� �④� ���� 紐⑤�� ��媛�</title>

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
/*---------��蹂�css-----------------*/
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
/*------------吏���異�媛�css----------------------*/
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

  <!-- mobile responsive meta -->

  <meta name="viewport" content="width=device-width, initial-scale=1">

  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

  

	<script language=javascript>
	function sendUpdate(){//占쏙옙占쏙옙占쏙옙
		document.requestForm.key.value ="updateChannel";
		document.requestForm.submit();
	}

	function sendDelete(){//占쏙옙占쏙옙
		
		document.requestForm.key.value ="deleteChannel";
		document.requestForm.submit();
	}
	</script> -->

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
<c:import url="headerTop.jsp"/>
<!--subTopMenu end-->	

<c:import url="header.jsp"></c:import>

<!-- 梨���硫��� -->

<!-- 梨���硫��� end -->
<!-- Main container start -->
<div class="container-fluide bgPart">
	<div class="bgImg">
	
	
	</div>

	<!-- Style switcher end -->

 

<!-- Main container start -->

<section id="main-container">

 		<!-- channel list start -->
 		
 		<%
 		int userNo = (int)session.getAttribute("userNo");
 		List<Channel> chList = ChannelService.manageChannel(userNo); 
 		%>

		<!-- channel manage top -->

		<div class="row">

			<div class="col-md-12 heading text-center">

				<h2 class="title2" style="text-align: center; font-weight: bold">筌�占쏙옙占� �울옙�깍옙

				<span class="title-desc"></span>

				</h2>

			</div>

		</div><!-- Title row end -->

</div>
<div class="Container mainContainer">

		<!--Isotope filter start -->
<!-- 
		<div class="row text-right">

			<div class="col-12">

				<div class="isotope-nav" data-isotope-nav="isotope">
					<div class="crCh">
						<a href="#" data-filter=".make-channel" id="btn">梨��� 媛���</a>
					</div>

	

				</div>

			</div>

		</div> --><!-- Isotope filter end -->

	<div class="container">

		<div class="row">

			<div class="col-md-12 heading">

				<span class="title-icon classic float-left"></span>

				<h4 class="title classic">${channel.chName}</h4>
				<h4 class="title classic">梨����대� <a class="addCh" href="#"></a></h4>

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

						<h3>媛��ㅼ�� �대�</h3>

						<p>媛��ㅼ�� email</p>

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
			<%-- <!-- 筌�占쏙옙占� 占쎄�占쏙옙 -->

				<form name="requestForm" method=post action="<%=request.getContextPath() %>/front">
				<input type=hidden name="chNo" value="${channel.chNo}">
				<input type=hidden name="key" value="">
				<input type=button value="占쏙옙占쏙옙占쏙옙疫뀐옙" onClick="sendUpdate()">
				<input type=button value="占쏙옙占쏙옙占쏙옙疫뀐옙" onClick="sendDelete()">
				</form>
			--%>
				<h4>揶�占쏙옙�쏙옙占쏙옙占�: n揶�占�</h4>
				<div class="cd-full-width btnOpen">

		<div id="chDesc" class="team team-list wow slideInRight">

			<h4>媛��ㅽ����: n媛�</h4>
			<div class="cd-full-width btnOpen">

				<a href="#0" id="makeEv" class="btn btn-primary solid cd-btn">���ш���</a>

			</div> <!-- .cd-full-width -->	
				<ul class="list-unstyled chListMenu">
					<li class=""><a class="chSetting" href="#"><i class="fa fa-users">梨����ㅼ��</i></a></li>
					<li class=""><a class="chAuthor" href="#"><i class="fa fa-users">沅����ㅼ��</i></a></li>
					<li class=""><a class="chDel" href="#"><i class="fa fa-users">梨�������</i></a></li>
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
						<h3>[��由쇳���ъ�� ��媛� IT �몃����] �명����, �� �몃��� ����</h3>
						<span><a href="#">Ui Elements</a></span>
					</div>
				</div>
				<!--/ grid end -->
			</div>
			
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
						<h3>[드림플러스 월간 IT 트렌드] 언택트, 뉴 노멀의 시대</h3>
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
						<h3>��泥���由ъ�#1(���� ���쇰� �� �쇱�� ���ㅻ�� 寃�)</h3>
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