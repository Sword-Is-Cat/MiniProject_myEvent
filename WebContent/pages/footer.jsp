<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>footer</title>
<style>
.footer {
	background: #fdfdfd !important;
	color: #979797;
	padding: 60px 0 50px !important;
	border-top: 1px solid #e5e5e5;
}

.footerLast {
	margin: 0 auto;
	text-align: center;
}

.footer-widget {
	color: #979797 !important;
}

.footerLinks a {
	color: #979797 !important;
}

.latest-post-content h4 a {
	color: #979797 !important;
}

.footerLinks a:hover, .latest-post-content h4 a:hover {
	color: #5c3fbf;
}

.footer .widget-title {
	color: #979797 !important;
}

#copyright {
	color: #979797 !important;
	background: #fff;
}
</style>
</head>
<body>
	<!-- footer start -->
	<footer id="footer" class="footer">
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-sm-12 footer-widget">
					<h3 class="widget-title">My Event</h3>
					<div class="latest-post-items media">
						<div class="latest-post-content media-body">
							<h4>
								<a href="${pageContext.request.contextPath}/pages/about.jsp">회사소개</a>
							</h4>
						</div>
					</div>
					<!-- 1st Latest Post end -->

					<div class="latest-post-items media">
						<div class="latest-post-content media-body">
							<h4>
								<a href="#" onclick="alert('준비중입니다.');">서비스소개</a>
							</h4>

						</div>
					</div>
					<!-- 2nd Latest Post end -->

					<div class="latest-post-items media">
						<div class="latest-post-content media-body">
							<h4>
								<a href="#" onclick="alert('준비중입니다.');">호스트센터</a>
							</h4>
						</div>
					</div>
					<!-- 3rd Latest Post end -->
					<div class="latest-post-items media">
						<div class="latest-post-content media-body">
							<h4>
								<a href="${pageContext.request.contextPath}/pages/notice.jsp">공지사항</a>
							</h4>
						</div>
					</div>
					<!-- 3rd Latest Post end -->
					<div class="latest-post-items media">
						<div class="latest-post-content media-body">
							<h4>
								<a href="${pageContext.request.contextPath}/pages/EvBoard.jsp">자주묻는질문</a>
							</h4>
						</div>
					</div>
					<!-- 3rd Latest Post end -->

				</div>
				<!--/ End Recent Posts-->


				<div class="col-md-4 col-sm-12 footer-widget">
					<h3 class="widget-title">contact us</h3>

					<div class="img-gallery">
						<div>
							<span class="d-inline-block font-weight-500"
								style="width: 105px;"> 고객센터 </span> <span> 평일 10~17시 </span> <a
								class="ml-2 font-weight-500 black-text"
								style="text-decoration: underline" href="" target="_blank">
								1:1 문의하기 </a>
						</div>
						<div class="my-1">
							<span class="d-inline-block  font-weight-500"
								style="width: 105px;"> 서비스문의 </span> <span>
								contact@myevent.com </span>
						</div>
						<div>
							<span class="d-inline-block  font-weight-500"
								style="width: 105px;"> 사업/제휴문의 </span> <span>
								business@myevent.com </span>
						</div>

					</div>
				</div>
				<!--/ end flickr -->

				<div class="col-md-3 col-sm-12 footer-widget footer-about-us">
					<h3 class="widget-title">About Us</h3>
					<p>마이이벤트는 통신판매중개자이며 행사에 대한 당사자 및 주최자가 아닙니다. 따라서 마이이벤트는 등록된 행사에
						대해 책임지지 않습니다.</p>
					<h4>Address</h4>
					<p>경기도 성남시 분당구 삼평동 대왕판교로 670길 (삼평동 682번지) 유스페이스2 B동 8층</p>
					<div class="row">
						<div class="col-md-6">
							<h4>Phone No.</h4>
							<p>031-606-9337</p>
						</div>
					</div>

				</div>

				<!--/ end about us -->

			</div>
			<!-- Row end -->
			<div class="row lastlast">
				<div class="footerLast">
					<div class="d-flex justify-content-between align-items-center">
						<div class="footerLinks">
							<a href="/Legal/Service"> 서비스 이용 약관 </a> <span class="px-2">|</span>
							<a class="font-weight-bold" href="/Legal/Privacy"> 개인정보처리방침 </a>
							<span class="px-2">|</span> <a href="/Legal/E_Banking">
								전자금융거래 이용약관 </a> <span class="px-2">|</span> <a href="/Legal/Refund">
								취소 및 환불 약관 </a> <span class="px-2">|</span> <a href="/Legal/Email">
								이메일 주소 무단수집 거부 </a>
						</div>
					</div>
				</div>
			</div>
			<!--row end-->
		</div>
		<!-- Container end -->
		<!-- Copyright start -->
		<!--  <section id="copyright" class="">-->
		<div class="container">
			<div class="row mt-5">
				<div class="col-md-12 text-center">
					<ul class="footer-social unstyled">
						<li><a title="Twitter" href="#"> <span
								class="icon-pentagon wow bounceIn"><i
									class="fa fa-twitter"></i></span>
						</a> <a title="Facebook" href="#"> <span
								class="icon-pentagon wow bounceIn"><i
									class="fa fa-facebook"></i></span>
						</a> <a title="Google+" href="#"> <span
								class="icon-pentagon wow bounceIn"><i
									class="fa fa-google-plus"></i></span>
						</a> <a title="linkedin" href="#"> <span
								class="icon-pentagon wow bounceIn"><i
									class="fa fa-linkedin"></i></span>
						</a> <a title="Pinterest" href="#"> <span
								class="icon-pentagon wow bounceIn"><i
									class="fa fa-pinterest"></i></span>
						</a> <a title="Skype" href="#"> <span
								class="icon-pentagon wow bounceIn"><i class="fa fa-skype"></i></span>
						</a> <a title="Dribble" href="#"> <span
								class="icon-pentagon wow bounceIn"><i
									class="fa fa-dribbble"></i></span>
						</a></li>
					</ul>
				</div>
			</div>
			<!--/ Row end -->
			<div class="row">
				<div class="col-md-12 text-center">
					<div class="copyright-info">
						&copy; Copyright 2020 4조 All Rights Reserved.</span>
					</div>
				</div>
			</div>
			<!--/ Row end -->
			<div id="back-to-top" data-spy="affix" data-offset-top="10"
				class="back-to-top affix position-fixed">
				<button class="btn btn-primary" title="Back to Top">
					<i class="fa fa-angle-double-up"></i>
				</button>
			</div>
		</div>
		<!--/ Container end -->
		<!-- 	</section> -->
		<!--/ Copyright end -->
	</footer>
	<!-- Footer end -->

	<!--footer end-->




	</div>
	<!-- Body inner end -->

	<!-- Bootstrap Table jQuery-->

	<script
		src="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.js"></script>
	<!-- jQuery -->
	<script src="${pageContext.request.contextPath}/pages/plugins/jQuery/jquery.min.js"></script>
	<!-- Bootstrap JS -->
	<script src="${pageContext.request.contextPath}/pages/plugins/bootstrap/bootstrap.min.js"></script>
	<!-- Style Switcher -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/pages/plugins/style-switcher.js"></script>
	<!-- Owl Carousel -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/pages/plugins/owl/owl.carousel.js"></script>
	<!-- PrettyPhoto -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/pages/plugins/jquery.prettyPhoto.js"></script>
	<!-- Bxslider -->
	<script type="text/javascript"
		src="plugins/flex-slider/jquery.flexslider.js"></script>
	<!-- CD Hero slider -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/pages/plugins/cd-hero/cd-hero.js"></script>
	<!-- Isotope -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/pages/plugins/isotope.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/pages/plugins/ini.isotope.js"></script>
	<!-- Wow Animation -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/pages/plugins/wow.min.js"></script>
	<!-- Eeasing -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/pages/plugins/jquery.easing.1.3.js"></script>
	<!-- Counter -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/pages/plugins/jquery.counterup.min.js"></script>
	<!-- Waypoints -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/pages/plugins/waypoints.min.js"></script>
	<!-- google map -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU&libraries=places"></script>
	<script src="plugins/google-map/gmap.js"></script>

	<!-- Main Script -->
	<script src="${pageContext.request.contextPath}/pages/js/script.js"></script>
</body>

</html>