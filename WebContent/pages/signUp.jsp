<%@page import="kosta.mvc.service.CategoryService"%>
<%@page import="kosta.mvc.vo.Category"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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


  <!-- Main Stylesheet -->
  <link href="css/style.css" rel="stylesheet">
  
  <link href="css/defaultStyle.css" rel="stylesheet">
  <!-- SignUp.css -->
  <link rel="stylesheet" href="css/signUp.css">
  <!--Favicon-->
	<link rel="icon" href="./images/favicon/32.png" type="image/x-icon" />
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="./images/favicon/144.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="./images/favicon/72.png">
	<link rel="apple-touch-icon-precomposed" href="./images/favicon/54.png">
 <!-- webFont -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
  
  <!-- KAKAO 주소 API -->
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
	<script src="js/signUp.js"></script>
	  
</head>
<body>
	<div class="body-inner">
<!--subTopMenu-->
<c:import url="headerTop.jsp"/>
<!--subTopMenu end-->	

<c:import url="header.jsp"/>

<!-- Portfolio start -->
<section id="main-container" class="portfolio portfolio-box">

<div class="container my-xl-7 my-5" id="userSignupSection" v-cloak>
		<form class="contact-form col l4 s12 mx-auto" id="signUpForm" action="../front" method="post"><!-- SignUp Form start -->
			 <div class="row mb-4">
                <div class="col s12 center">
                    <h3 class="signUpTitle"> 회원가입</h3>
                </div>
            </div>
			<label class="textLabel" for="userId">아이디</label><br>
			<input class="form-control form-control-lg col-lg-4 col-md-4 col-sm-8 col-xs-8" id="userId" name="userId" placeholder="아이디" type="text">
	<div class="container">
		<form class="contact-form" id="signUpForm" action="${pageContext.request.contextPath}/front" method="post"><!-- SignUp Form start -->
			<label class="textLabel" for="userId">아이디</label>
			<input class="form-control form-control-lg col-lg-4 col-md-4 col-sm-8 col-xs-8" id="userId" name="userId" placeholder="아이디를 입력해 주세요" type="text">
			<button class="btn btn-primary solid blank" id="idChk" type="button">아이디 중복체크</button> <br>
			
			<label class="textLabel" for="userPwd">비밀번호</label>
			<input class="form-control form-control-lg col-lg-4 col-md-4 col-sm-8 col-xs-8" id="userPwd" name="userPwd" placeholder="비밀번호를 입력해 주세요" type="password">
			
			<span id="userPwdChkResult">비밀번호를 확인해 주세요</span><br>			
			<label class="textLabel" for="userPwdChk">비밀번호 확인</label>
			<input class="form-control form-control-lg col-lg-4 col-md-4 col-sm-8 col-xs-8" id="userPwdChk" name="userPwdChk" placeholder="비밀번호 확인해 주세요" type="password">
			
			<label class="textLabel" for="userName">이름</label>
			<input class="form-control form-control-lg col-lg-4 col-md-4 col-sm-8 col-xs-8" id="userName" name="userName" placeholder="이름을 입력해 주세요" type="text"><br>
			
			<!-- 주소 -->
			<label class="textLabel" for="postalcode">주소</label><br>
			<input type="text" id="postcode" name="postalCode" placeholder="우편번호" readonly>
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

			<%Category cate = cateList.get(0); %>
			${cate.cateNo}

			<fieldset>
				<c:forEach items="<%=cateList%>" var="category" varStatus="status">
					<input type="checkbox" id="cate${category.cateNo}" name="cate${category.cateNo}" value="${category.cateNo}">
					<label for="cate${category.cateNo}">${category.cateName}</label>
				</c:forEach>
			</fieldset>			
			<input type="hidden" name="key" value="signUp">
			<input type="hidden" name="cateCount" value="<%=cateList.size()%>"><!-- 카테고리 카운트 value에 넣어야함 -->
			<br>
			<button class="btn btn-primary solid blank" id="submit" type="submit" disabled>아이디 중복체크를 해주세요</button> 

		</form><!-- SignUp Form end -->
	</div><!-- Container end -->
</section><!-- Portfolio end -->

</div><!-- Body inner end -->
<!-- footer -->
<c:import url="footer.jsp"></c:import>
</body>

</html>