<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<style>
*, .title-desc, h1, h2, h3, h4, h5, h6, p {
	font-family: 'Noto Sans KR', sans-serif;
}
</style>
</head>

<body>
	

		<!-- Header start -->
		<header id="header" class="header" role="banner">
			<div class="nav justify-content-end">
				<a class="navbar-brand navbar-bg" href="${pageContext.request.contextPath}/front?key=index"><img
					class="mainLogo d-flex justify-content-end"
					src="${pageContext.request.contextPath}/pages/images/mainLogo2.jpg" width="40%" alt="logo"></a>
			</div>
			<div class="container">

				<nav class="navbar navbar-expand-lg mainMenu">
					<button
						class="navbar-toggler ml-auto border-0 rounded-0 text-white"
						type="button" data-toggle="collapse" data-target="#navigation"
						aria-controls="navigation" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="fa fa-bars"></span>
					</button>
					<div
						class="navbar-collapse text-center d-flex justify-content-between">
						<div class="row col s2"></div>
						<div class="row col s5 p-3 align-self-center">
							<form class="form-inline my-2 navbar-left searchForm" method="get" action="${pageContext.request.contextPath}/front">
								<input type="hidden" name="key" value="selectEventByEvName">
								<div class="bg-light rounded rounded-pill ">
									<div class="input-group">
										<input type="search" name="search" placeholder="검색어를 입력해주세요."
											aria-describedby="button-addon1"
											class="form-control border-0 bg-light schWindow">
										<div class="input-group-append">
											<button id="button-addon1" type="submit"
												class="btn btn-link text-primary">
												<i class="fa fa-search"></i>
											</button>
										</div>
									</div>
								</div>
							</form>
						</div>
						<div id = "pcMenu" class="row d-flex justify-content-end">
							<ul class="nav navbar-nav navbar-right mr-auto ">
								<li class="nav-item active"><a class="nav-link"
									href="${pageContext.request.contextPath}/front?key=searchRecentEvent" role="button"> 행사검색 </a></li>
								<li class="nav-item active"><a class="nav-link"
									href="${pageContext.request.contextPath}/pages/about.jsp" role="button"> 회사소개 </a></li>
								<li class="nav-item active"><a class="nav-link"
									href="${pageContext.request.contextPath}/front?key=selectBookByUserNo" role="button"> 신청내역확인 </a></li>
								<li class="nav-item active"><a class="nav-link"
									href="${pageContext.request.contextPath}/front?key=manageChannel" role="button"> 채널/행사개설 </a></li>
							</ul>
						</div>
						<div class="collapse" id="navigation">
							<div id = "mobileMenu" class="row d-flex justify-content-end">
							<ul class="nav navbar-nav navbar-right mr-auto ">
								<li class="nav-item active"><a class="nav-link"
									href="${pageContext.request.contextPath}/front?key=searchRecentEvent" role="button"> 행사검색 </a></li>
								<li class="nav-item active"><a class="nav-link"
									href="${pageContext.request.contextPath}/pages/about.jsp" role="button"> 회사소개 </a></li>
								<li class="nav-item active"><a class="nav-link"
									href="${pageContext.request.contextPath}/pages/bookHistory.jsp" role="button"> 신청내역확인 (미구현) </a></li>
								<li class="nav-item active"><a class="nav-link"
									href="${pageContext.request.contextPath}/front?key=manageChannel" role="button"> 채널/행사개설 </a></li>
							</ul>
						</div>
						</div>
					</div>
				</nav>
			</div>
			<!--container end-->
		</header>
		<!--/ Header end -->

</body>
</html>