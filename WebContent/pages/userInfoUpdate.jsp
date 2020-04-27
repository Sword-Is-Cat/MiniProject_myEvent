<%@page import="kosta.mvc.service.CategoryService"%>
<%@page import="kosta.mvc.vo.Category"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
  <meta charset="utf-8">
  <title>BizCraft - Responsive Html5 Template</title>

  <!-- mobile responsive meta -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  
 	<!-- ** Plugins Needed for the Project ** -->
  	<!-- JQuery -->
  	<script src="plugins/jQuery/jquery.min.js" ></script>
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
  
  <!-- SignUp.css -->
  <link rel="stylesheet" href="pages/css/userInfoUpdate.css">
  
  <!--Favicon-->
	<link rel="icon" href="img/favicon/favicon-32x32.png" type="image/x-icon" />
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="img/favicon/favicon-144x144.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/favicon/favicon-72x72.png">
	<link rel="apple-touch-icon-precomposed" href="img/favicon/favicon-54x54.png">
	
  <!-- KAKAO 주소 API -->
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
	<script src="pages/js/userInfoUpdate.js"></script>
	<script>
		$(function(){
			$('#userName').val('${requestScope.user.userName}');
			$('#postalCode').val('${requestScope.userAddr[0]}');
			$('#roadAddress').val('${requestScope.userAddr[1]}');
			$('#extraAddress').val('${requestScope.userAddr[2]}');
			$('#detailAddress').val('${requestScope.userAddr[3]}');
			$('#userPhone').val('${requestScope.user.userPhone}');
			$('#userEmail').val('${requestScope.user.userEmail}');
		});
		
		//기존값들 설정
		

	</script>
	  
</head>

<body>

	<!-- Style switcher start -->
	<div class="style-switch-wrapper">
		<div class="style-switch-button">
			<i class="fa fa-sliders"></i>
		</div>
		<h3>Style Options</h3>
		<button id="preset1" class="btn btn-sm btn-primary"></button>
		<button id="preset2" class="btn btn-sm btn-primary"></button>
		<button id="preset3" class="btn btn-sm btn-primary"></button>
		<button id="preset4" class="btn btn-sm btn-primary"></button>
		<button id="preset5" class="btn btn-sm btn-primary"></button>
		<button id="preset6" class="btn btn-sm btn-primary"></button>
		<br/><br/>
		<a class="btn btn-sm btn-primary close-styler float-right">Close X</a>
	</div>
	<!-- Style switcher end -->

	<div class="body-inner">

<!-- Header start -->
<header id="header" class="fixed-top header" role="banner">
	<a class="navbar-brand navbar-bg" href="index.html"><img class="img-fluid float-right" src="images/logo.png" alt="logo"></a>
	<div class="container">
		<nav class="navbar navbar-expand-lg navbar-dark">
			<button class="navbar-toggler ml-auto border-0 rounded-0 text-white" type="button" data-toggle="collapse"
				data-target="#navigation" aria-controls="navigation" aria-expanded="false" aria-label="Toggle navigation">
				<span class="fa fa-bars"></span>
			</button>

			<div class="collapse navbar-collapse text-center" id="navigation">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item dropdown active">
						<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false">
							Home
						</a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="index.html">Homepage 1</a>
							<a class="dropdown-item" href="index-2.html">Homepage 2</a>
							<a class="dropdown-item" href="index-3.html">Homepage 3</a>
							<a class="dropdown-item" href="index-4.html">Homepage 4</a>
						</div>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false">
							Company
						</a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="about.html">About Us</a>
							<a class="dropdown-item" href="service.html">Services</a>
							<a class="dropdown-item" href="career.html">Career</a>
							<a class="dropdown-item" href="testimonial.html">Testimonials</a>
							<a class="dropdown-item" href="faq.html">Faq</a>
						</div>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false">
							Portfolio
						</a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="portfolio-classic.html">Portfolio Classic</a>
							<a class="dropdown-item" href="portfolio-static.html">Portfolio Static</a>
							<a class="dropdown-item" href="portfolio-item.html">Portfolio Single</a>
						</div>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false">
							Pages
						</a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="team.html">Our Team</a>
							<a class="dropdown-item" href="about2.html">About Us - 2</a>
							<a class="dropdown-item" href="service2.html">Services - 2</a>
							<a class="dropdown-item" href="service-single.html">Services Single</a>
							<a class="dropdown-item" href="pricing.html">Pricing Table</a>
							<a class="dropdown-item" href="404.html">404 Page</a>
						</div>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false">
							Blog
						</a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="blog-rightside.html">Blog with Sidebar</a>
							<a class="dropdown-item" href="blog-item.html">Blog Single</a>
						</div>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false">
							Features
						</a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="typography.html">Typography</a>
							<a class="dropdown-item" href="elements.html">Elements</a>
						</div>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="contact.html">Contact</a></a>
					</li>
				</ul>
			</div>
		</nav>
	</div>
</header>
<!--/ Header end -->

<div id="banner-area">
	<img src="images/banner/banner1.jpg" alt="" />
	<div class="parallax-overlay"></div>
	<!-- Subpage title start -->
	<div class="banner-title-content">
		<div class="text-center">
			<h2>내 정보 수정</h2>
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb justify-content-center">
					<li class="breadcrumb-item"><a href="#">모든 행사를</a></li>
					<li class="breadcrumb-item text-white" aria-current="page">한곳에서 만나보세요</li>
				</ol>
			</nav>
		</div>
	</div><!-- Subpage title end -->
</div><!-- Banner area end -->

<!-- 회원정보 변경 -->
<section id="main-container" class="portfolio portfolio-box">
	<div class="container">
		<form class="contact-form" id="userInfoUpdateForm" action="${pageContext.request.contextPath}/front" method="post"><!-- userInfoUpdate Form start -->
			<label class="textLabel" for="userPwd">비밀번호</label>
			<input class="form-control form-control-lg col-lg-4 col-md-4 col-sm-8 col-xs-8" id="userPwd" name="userPwd" placeholder="비밀번호를 입력해 주세요" type="password">
			<span id="userPwdChkResult">비밀번호를 확인해 주세요</span><br>			
			<label class="textLabel" for="userPwdChk">비밀번호 확인</label>
			<input class="form-control form-control-lg col-lg-4 col-md-4 col-sm-8 col-xs-8" id="userPwdChk" name="userPwdChk" placeholder="비밀번호 확인해 주세요" type="password">
			<label class="textLabel" for="userName">이름</label>
			<input class="form-control form-control-lg col-lg-4 col-md-4 col-sm-8 col-xs-8" id="userName" name="userName" placeholder="이름을 입력해 주세요" type="text"><br>
			<!-- 주소 -->
			<label class="textLabel" for="postalcode">주소</label><br>
			<input type="text" id="postalCode" name="postalCode" placeholder="우편번호" readonly>
			<input type="button" id="userAddrBtn" value="우편번호 찾기"><br>
			<input class="col-lg-4 col-md-4 col-sm-8 col-xs-8" id="roadAddress" name="reaodAddress" placeholder="도로명주소" type="text" readonly>
			<span id="guide" style="color:#999;display:none"></span>
			<input class="col-lg-4 col-md-4 col-sm-8 col-xs-8" id="extraAddress" name="extraAddress" type="text" disabled>
			<input class="col-lg-6 col-md-6 col-sm-10 col-xs-10" id="detailAddress" name="detailAddress" placeholder="상세주소" type="text"><br><br>
			
			<!-- 주소끝 -->
			<label class="textLabel" for="userPhone">전화번호</label>
			<input class="form-control form-control-lg" id="userPhone" name="userPhone" placeholder="예시) 010-0000-0000" type="text"><br>
			<label class="textLabel" for="userEmail">이메일</label>
			<input class="form-control form-control-lg" id="userEmail" name="userEmail" placeholder="Email을 입력해 주세요" type="text"><br>
			
			<!-- 카테고리 출력 -->
			<label for="userCategory">선호 카테고리를 선택해주세요</label><br>
			<%List<Category> cateList = CategoryService.selectAll();%>
			<fieldset>
				<c:forEach items="<%=cateList%>" var="category" varStatus="status">
					<input type="checkbox" id="cate${category.cateNo}" name="cate${category.cateNo}" value="${category.cateNo}">
					<label for="cate${category.cateNo}">${category.cateName}</label>
				</c:forEach>
			</fieldset>			
			<input type="hidden" name="key" value="userInfoUpdate">
			<input type="hidden" name="cateCount" value="<%=cateList.size()%>"><!-- 카테고리 카운트 value에 넣어야함 -->
			<br>
			<button class="btn btn-primary solid blank" id="submit" type="submit" disabled>아이디 중복체크를 해주세요</button>
		</form><!-- userInfoUpdate Form end -->
	</div><!-- Container end -->
</section><!-- 회원정보 변경 end -->

<div class="gap-40"></div>

	<!-- Footer start -->
	<footer id="footer" class="footer">
	  <div class="container">
	    <div class="row">
	      <div class="col-md-4 col-sm-12 footer-widget">
	        <h3 class="widget-title">Recent Posts</h3>
	        <div class="latest-post-items media">
	          <div class="latest-post-content media-body">
	            <h4><a href="#">Bulgaria claims to find Europe's 'oldest town'</a></h4>
	            <p class="post-meta">
	              <span class="author">Posted by John Doe</span>
	              <span class="post-meta-cat">in<a href="#"> Blog</a></span>
	            </p>
	          </div>
	        </div><!-- 1st Latest Post end -->

	        <div class="latest-post-items media">
	          <div class="latest-post-content media-body">
	            <h4><a href="#">Few Answers in Case of Murdered Law Professor</a></h4>
	            <p class="post-meta">
	              <span class="date"><i class="icon icon-calendar"></i> Mar 15, 2015</span>
	              <span class="post-meta-comments"><i class="icon icon-bubbles4"></i> <a href="#">03</a></span>
	            </p>
	          </div>
	        </div><!-- 2nd Latest Post end -->

	        <div class="latest-post-items media">
	          <div class="latest-post-content media-body">
	            <h4><a href="#">Over the year we have lots of experience in our field</a></h4>
	            <p class="post-meta">
	              <span class="date"><i class="icon icon-calendar"></i> Apr 17, 2015</span>
	              <span class="post-meta-comments"><i class="icon icon-bubbles4"></i> <a href="#">14</a></span>
	            </p>
	          </div>
	        </div><!-- 3rd Latest Post end -->

	      </div>
	      <!--/ End Recent Posts-->


	      <div class="col-md-4 col-sm-12 footer-widget">
	        <h3 class="widget-title">Flickr Photos</h3>

	        <div class="img-gallery">
	          <div class="img-container">
	            <a class="thumb-holder" data-rel="prettyPhoto" href="images/gallery/1.jpg">
	              <img src="images/gallery/1.jpg" alt="">
	            </a>
	            <a class="thumb-holder" data-rel="prettyPhoto" href="images/gallery/2.jpg">
	              <img src="images/gallery/2.jpg" alt="">
	            </a>
	            <a class="thumb-holder" data-rel="prettyPhoto" href="images/gallery/3.jpg">
	              <img src="images/gallery/3.jpg" alt="">
	            </a>
	            <a class="thumb-holder" data-rel="prettyPhoto" href="images/gallery/4.jpg">
	              <img src="images/gallery/4.jpg" alt="">
	            </a>
	            <a class="thumb-holder" data-rel="prettyPhoto" href="images/gallery/5.jpg">
	              <img src="images/gallery/5.jpg" alt="">
	            </a>
	            <a class="thumb-holder" data-rel="prettyPhoto" href="images/gallery/6.jpg">
	              <img src="images/gallery/6.jpg" alt="">
	            </a>
	            <a class="thumb-holder" data-rel="prettyPhoto" href="images/gallery/6.jpg">
	              <img src="images/gallery/7.jpg" alt="">
	            </a>
	            <a class="thumb-holder" data-rel="prettyPhoto" href="images/gallery/6.jpg">
	              <img src="images/gallery/8.jpg" alt="">
	            </a>
	            <a class="thumb-holder" data-rel="prettyPhoto" href="images/gallery/6.jpg">
	              <img src="images/gallery/9.jpg" alt="">
	            </a>
	          </div>
	        </div>
	      </div>
	      <!--/ end flickr -->

	      <div class="col-md-3 col-sm-12 footer-widget footer-about-us">
	        <h3 class="widget-title">About Craft</h3>
	        <p>We are a awward winning multinational company. We believe in quality and standard worldwide.</p>
	        <h4>Address</h4>
	        <p>1102 Saint Marys, Junction City, KS</p>
	        <div class="row">
	          <div class="col-md-6">
	            <h4>Email:</h4>
	            <p>info@craftbd.com</p>
	          </div>
	          <div class="col-md-6">
	            <h4>Phone No.</h4>
	            <p>+(785) 238-4131</p>
	          </div>
	        </div>
	        <form action="#" role="form">
	          <div class="input-group subscribe">
	            <input type="email" class="form-control" placeholder="Email Address" required="">
	            <span class="input-group-addon">
	              <button class="btn" type="submit"><i class="fa fa-envelope-o"> </i></button>
	            </span>
	          </div>
	        </form>
	      </div>
	      <!--/ end about us -->
	    </div><!-- Row end -->
	  </div><!-- Container end -->
	</footer><!-- Footer end -->


	<!-- Copyright start -->
	<section id="copyright" class="copyright angle">
	  <div class="container">
	    <div class="row">
	      <div class="col-md-12 text-center">
	        <ul class="footer-social unstyled">
	          <li>
	            <a title="Twitter" href="#">
	              <span class="icon-pentagon wow bounceIn"><i class="fa fa-twitter"></i></span>
	            </a>
	            <a title="Facebook" href="#">
	              <span class="icon-pentagon wow bounceIn"><i class="fa fa-facebook"></i></span>
	            </a>
	            <a title="Google+" href="#">
	              <span class="icon-pentagon wow bounceIn"><i class="fa fa-google-plus"></i></span>
	            </a>
	            <a title="linkedin" href="#">
	              <span class="icon-pentagon wow bounceIn"><i class="fa fa-linkedin"></i></span>
	            </a>
	            <a title="Pinterest" href="#">
	              <span class="icon-pentagon wow bounceIn"><i class="fa fa-pinterest"></i></span>
	            </a>
	            <a title="Skype" href="#">
	              <span class="icon-pentagon wow bounceIn"><i class="fa fa-skype"></i></span>
	            </a>
	            <a title="Dribble" href="#">
	              <span class="icon-pentagon wow bounceIn"><i class="fa fa-dribbble"></i></span>
	            </a>
	          </li>
	        </ul>
	      </div>
	    </div>
	    <!--/ Row end -->
	    <div class="row">
	      <div class="col-md-12 text-center">
	        <div class="copyright-info">
	          &copy; Copyright 2019 Themefisher. <span>Designed by <a
	              href="https://themefisher.com">Themefisher.com</a></span>
	        </div>
	      </div>
	    </div>
	    <!--/ Row end -->
	    <div id="back-to-top" data-spy="affix" data-offset-top="10" class="back-to-top affix position-fixed">
	      <button class="btn btn-primary" title="Back to Top"><i class="fa fa-angle-double-up"></i></button>
	    </div>
	  </div>
	  <!--/ Container end -->
	</section>
	<!--/ Copyright end -->

</div><!-- Body inner end -->

<!-- jQuery -->
<script src="plugins/jQuery/jquery.min.js"></script>
<!-- Bootstrap JS -->
<script src="plugins/bootstrap/bootstrap.min.js"></script>
<!-- Style Switcher -->
<script type="text/javascript" src="plugins/style-switcher.js"></script>
<!-- Owl Carousel -->
<script type="text/javascript" src="plugins/owl/owl.carousel.js"></script>
<!-- PrettyPhoto -->
<script type="text/javascript" src="plugins/jquery.prettyPhoto.js"></script>
<!-- Bxslider -->
<script type="text/javascript" src="plugins/flex-slider/jquery.flexslider.js"></script>
<!-- CD Hero slider -->
<script type="text/javascript" src="plugins/cd-hero/cd-hero.js"></script>
<!-- Isotope -->
<script type="text/javascript" src="plugins/isotope.js"></script>
<script type="text/javascript" src="plugins/ini.isotope.js"></script>
<!-- Wow Animation -->
<script type="text/javascript" src="plugins/wow.min.js"></script>
<!-- Eeasing -->
<script type="text/javascript" src="plugins/jquery.easing.1.3.js"></script>
<!-- Counter -->
<script type="text/javascript" src="plugins/jquery.counterup.min.js"></script>
<!-- Waypoints -->
<script type="text/javascript" src="plugins/waypoints.min.js"></script>
<!-- google map -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU&libraries=places"></script>
<script src="plugins/google-map/gmap.js"></script>

<!-- Main Script -->
<script src="js/script.js"></script>

</body>

</html>