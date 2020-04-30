<%@page import="kosta.mvc.service.CategoryService"%>
<%@page import="kosta.mvc.vo.Category"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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


<!-- Main Stylesheet -->
<link href="css/style.css" rel="stylesheet">
<link href="css/defaultStyle.css" rel="stylesheet">

<link href="css/signUp.css" rel="stylesheet">
<!-- SignUp.css -->
<!--  <link rel="stylesheet" href="css/signUp.css"> -->
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

<!-- KAKAO 주소 API -->
<script	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script src="./js/signUp.js"></script>
<style>

</style>

</head>
<body>

	<!--subTopMenu-->
	<c:import url="headerTop.jsp" />
	<!--subTopMenu end-->

	<c:import url="header.jsp" />



	<div class="container-fluide signUpMain d-flex justify-content-center"
		id="userSignupSection" v-cloak>

		<form class="contact-form col-lg-4 col-md-4 col-sm-8 col-xs-8"
			id="signUpForm" action="${pageContext.request.contextPath}/front"
			method="post">
			<div class="col s12 center">
				<h3 class="signUpTitle">회원가입</h3>
			</div>
			<div class="form-group">
				<div class="form-wrapper">
					<label for="userId">아이디</label> <input type="text"
						class="form-control" id="userId" name="userId"
						placeholder="아이디를 입력해 주세요">
				</div>
				<div class="form-wrapper">
					<label for="userId"></label>
					<button class="btn btn-info signBtn" id="idChk" type="button">아이디
						중복체크</button>
				</div>
			</div>
			<div class="form-wrapper">
				<label for="userPwd">비밀번호</label> <input type="password"
					class="form-control" id="userPwd" name="userPwd"
					placeholder="비밀번호를 입력해 주세요">
			</div>
			<div class="form-wrapper">
				<label for="userPwdChk">비밀번호 확인</label> <input type="password"
					class="form-control" id="userPwdChk" name="userPwdChk"
					placeholder="비밀번호 확인해 주세요"> <span id="userPwdChkResult">비밀번호를
					확인해 주세요</span>
			</div>
			<div class="form-wrapper">
				<label for="userName">이름</label> <input type="text"
					class="form-control" id="userName" name="userName"
					placeholder="이름을 입력해 주세요">
			</div>
			<div class="form-group">
				<div class="form-wrapper">
					<label for="postalcode">주소</label> <input type="text"
						class="form-control" id="postcode" name="postalCode"
						placeholder="우편번호" readonly>
				</div>
				<div class="form-wrapper">
					<button class="btn btn-info signBtn" id="userAddrBtn" type="button">우편번호
						찾기</button>
				</div>
			</div>
			<div class="form-group">
				<div class="form-wrapper">
					<input type="text" class="form-control" id="roadAddress"
						name="reaodAddress" placeholder="도로명주소" readonly>
				</div>
				<div class="form-wrapper">
					<span id="guide" style="color: #999; display: none"></span> <input
						class="form-control" id="extraAddress" name="extraAddress"
						type="text" disabled>
				</div>
			</div>
			<div class="form-wrapper">
				<input class="form-control" id="detailAddress" name="detailAddress"
					placeholder="상세주소" type="text">
			</div>
			<div class="form-wrapper">
				<label for="userPhone">전화번호</label> <input type="text"
					class="form-control" id="userPhone" name="userPhone"
					placeholder="예) 010-0000-0000">
			</div>
			<div class="form-wrapper">
				<label for="userEmail">Email</label> <input type="text"
					class="form-control" id="userEmail" name="userEmail"
					placeholder="E-mail을 입력해 주세요">
			</div>
			<div class="chkCategory">
				<label for="userCategory">선호 카테고리를 선택해주세요</label>
				<%List<Category> cateList = CategoryService.selectAll();%>
				<%Category cate = cateList.get(0); %>
				${cate.cateNo}
			</div>

			<fieldset>
				<c:forEach items="<%=cateList%>" var="category" varStatus="status">
					<input type="checkbox" id="cate${category.cateNo}"
						name="cate${category.cateNo}" value="${category.cateNo}">
					<label for="cate${category.cateNo}">${category.cateName}</label>
				</c:forEach>
			</fieldset>
			<input type="hidden" name="key" value="doSignUp"> <input
				type="hidden" name="cateCount" value="<%=cateList.size()%>">
			<!-- 카테고리 카운트 value에 넣어야함 -->


			<!-- <h5>약관동의</h5>
					<div class="checkbox">
						<label>
							<input type="checkbox"> [필수] 이용약관 및 개인정보 수집 관련 동의
							<span class="checkmark"></span>
						</label>
					</div> -->
			<button class="btn btn-info signBtn chkIdBtn" id="submit"
				type="submit" disabled>아이디 중복체크를 해주세요</button>
			<!-- <button>회원가입</button> -->
		</form>
		<!-- SignUp Form end -->



	</div>
	<!-- Body inner end -->
	<!-- footer -->
	<c:import url="footer.jsp"></c:import>
</body>

</html>