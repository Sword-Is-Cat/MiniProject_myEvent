<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
  <title>My Event :: 행사와 함께 하는 모든 순간</title>

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

  <!-- Main Stylesheet -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/defaultStyle.css" rel="stylesheet">
  <!-- login	.css -->
  <link rel="stylesheet" href="css/login.css">
  	
  	<!-- <script src="js/login.js"></script> -->
  <!--Favicon-->
	<link rel="icon" href="./images/favicon/32.png" type="image/x-icon" />
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="./images/favicon/144.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="./images/favicon/72.png">
	<link rel="apple-touch-icon-precomposed" href="./images/favicon/54.png">
 <!-- webFont -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

<script>
  	$(function(){
  		if(${sessionScope.status} != null) {
  			alert("이미 로그인 된 상태입니다");
  			location.href="${pageContext.request.contextPath}/pages/index.jsp";
  		}

  	});
</script>

</head>

<body>

<!--subTopMenu-->
<c:import url="headerTop.jsp"/>
<!--subTopMenu end-->	

<c:import url="header.jsp"></c:import>


	<div class="container-fluide loginMain">
		
		<form class="contact-form  col-lg-4 col-md-4 col-sm-8 col-xs-8" id="loginForm" action="${pageContext.request.contextPath}/front" method="post"><!-- SignUp Form start -->
			<div class="row mb-4">
                <div class="col s12 center">
                    <h3 class="loginTitle"> MyEvent 로그인</h3>
                </div>
         </div>
         <div>
			<label class="textLabel" for="userId">아이디</label>
			<input class="form-control form-control-lg" id="userId" name="userId" placeholder="아이디" type="text">
			</div>
			<div>
			<label class="textLabel" for="userPwd">비밀번호</label>
			<input class="form-control form-control-lg" id="userPwd" name="userPwd" placeholder="비밀번호" type="password">
			</div>
			
			<input type="hidden" name="key" value="login"><br>
			
			<button class="btn btn-primary solid blank block" id="loginBtn" type="submit">로그인</button><br>
			<a id="goSignUp" href="${pageContext.request.contextPath}/pages/signUp.jsp">아직 회원이 아니신가요? 회원가입하러가기</a>
			
		</form><!-- SignUp Form end -->
	</div><!-- Container end -->

<!-- footer -->
<c:import url="footer.jsp"></c:import>

</body>

</html>