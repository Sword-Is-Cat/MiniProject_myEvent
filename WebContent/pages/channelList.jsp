<%@page import="kosta.mvc.service.ChannelService"%>
<%@page import="java.util.List"%>
<%@page import="kosta.mvc.model.dao.ChannelDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kosta.mvc.vo.Channel"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}" scope="application"/>

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
  	.eTitle:hover {
  		text-decoration: none;
  		color: inherit;
	}
	img{
		width: 200px;
		height: 180px;
	}
	.desc{
		width: 350px;
    	text-overflow: ellipsis;
    	-o-text-overflow: ellipsis;
    	overflow: hidden;
   	 	white-space: nowrap;
  		word-wrap: normal !important;
    	display: block;
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

	<div class="body-inner">



		<!-- channel list top -->
		<div class="row">
			<div class="col-md-12 heading text-center">
				<h2 class="title2" style="text-align: center;  font-weight: bold;">ä�� ���<span class="title-desc"></span></h2>
			</div>
		</div><!-- Title row end -->
<br>

<!-- channalList start -->
<%List<Channel> chList = ChannelService.selectAll();%>

<section id="main-container" class="portfolio-static">
	<div class="container">
		<div class="row">
		<c:forEach items="<%=chList%>" var="channel">
			<div class="col-sm-4 portfolio-static-item">
				<div class="grid">
					<figure class="m-0 effect-oscar">
						<img src="https://eventusstorage.blob.core.windows.net/evs/Image/event/16764/ProjectInfo/Cover/e3f492fb160d420ca4483e56964b710d.jpg?fixed" alt="">
						<figcaption>
							<a class="view icon-pentagon" data-rel="prettyPhoto" href="front?key=channelDetail&chNo=${channel.chNo}"><i
									class="fa fa-search"></i></a>
						</figcaption>
					</figure>
					<div class="portfolio-static-desc">
					<a href="${pageContext.request.contextPath}/front?key=channelDetail&chNo=${channel.chNo}"><h3 id="eTitle" class="eTitle">${channel.chName}</h3></a>
					<a href="${pageContext.request.contextPath}/front?key=channelDetail&chNo=${channel.chNo}" class="desc">${channel.chDescription}</a>
					</div>
				</div>
				<!--/ grid end -->
			</div>
			</c:forEach>
			<!--/ item 1 end -->
		</div><!-- Content row end -->
	</div><!-- Container end -->

</section><!-- Portfolio end -->

<div class="gap-40"></div>
</div><!-- Body inner end -->
<!-- footer -->
<c:import url="footer.jsp"></c:import>

</body>

</html>