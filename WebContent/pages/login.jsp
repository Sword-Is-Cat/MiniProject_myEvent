<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>My Event :: 행사와 함께하는 모든 순간</title>

<!-- mobile responsive meta -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- ** Plugins Needed for the Project ** -->
<!-- JQuery -->
<script src="plugins/jQuery/jquery.min.js"></script>
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
<link id="style-switch" href="css/presets/preset3.css" media="screen"
	rel="stylesheet" type="text/css">

<!-- Main Stylesheet -->
<link href="css/style.css" rel="stylesheet">
<link href="css/defaultStyle.css" rel="stylesheet">
<!-- login	.css -->
<link rel="stylesheet" href="css/login.css">

<!-- <script src="js/login.js"></script> -->
<!--Favicon-->
<link rel="icon" href="./images/favicon/32.png" type="image/x-icon" />
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="./images/favicon/144.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="./images/favicon/72.png">
<link rel="apple-touch-icon-precomposed" href="./images/favicon/54.png">
<!-- webFont -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">

<script>
  	$(function(){
  		console.log(+"");
  		if(${sessionScope.status}+"" == 1) {
  			alert("이미 로그인 된 상태입니다");
  			location.href="${pageContext.request.contextPath}/front?key=index";
  		}

  	});
</script>

</head>

<body>

	<!--subTopMenu-->
	<c:import url="headerTop.jsp" />
	<!--subTopMenu end-->

	<c:import url="header.jsp"></c:import>


	<div class="container-fluide loginMain">
		<form class="contact-form  col-lg-4 col-md-4 col-sm-8 col-xs-8"
			id="loginForm" action="${pageContext.request.contextPath}/front"
			method="post">
			<!-- SignUp Form start -->
			<div class="row mb-4">
				<div class="col s12 center">
					<h3 class="loginTitle">MyEvent 로그인</h3>
				</div>
			</div>
			<div class="row">
				<div class="input-field col s12 center" style="margin-top: 0">
				</div>
			</div>
			<div class="row ">
				<div class=" col s12">
					<label class="textLabel" for="userId">아이디</label> <input
						class="form-control fcMyEvent" name="userId" id="userId"
						type="text" required placeholder="아이디를 입력해주세요.">
				</div>
			</div>
			<div class="row my-2">
				<div class="col s12">
					<label class="textLabel" for="userPwd">비밀번호</label> <input
						class="form-control fcMyEvent" name="userPwd" id="userPwd"
						type="password" required placeholder="비밀번호를 입력해주세요."
						style="margin-bottom: 10px">
				</div>
			</div>
			<div class="row ">
				<div
					class=" col s12 position-relative d-felx justify-content-between">

					<input class="col-auto mr-auto" name="RememberMe" type="checkbox"
						id="remember-me" value="true" onclick="autoLogin(this.checked)">
					<label for="remember-me">자동 로그인</label> <a
						class="right eventus-brown-grey-text txt-14 col-auto"
						href="/account/ForgotPassword" style="text-decoration: underline">비밀번호
						찾기</a>
				</div>
				<input name="RememberMe" type="hidden" value="false">
			</div>
			<div class="row" style="margin-top: 40px">
				<div class="col s12">
					<input type="hidden" name="key" value="login" />
					<button type="submit" class="btn btn-info loginBtn" id="loginBtn">로그인</button>
				</div>
			</div>
			<div class="row" style="margin: 30px auto 10px auto;">
				<div class="col s12 center txt-14 alignCenter ">
					<span>아직 회원이 아니신가요?</span> <a
						class="eventus-soft-purple-text text-underline ml-1" id="goSignUp"
						href="${pageContext.request.contextPath}/pages/signUp.jsp"
						style="font-weight: bold">회원가입</a>
				</div>
			</div>
		</form>
		<!-- SignUp Form end -->


	</div>
	<!-- Container end -->

	<!-- footer -->
	<c:import url="footer.jsp"></c:import>

</body>

</html>