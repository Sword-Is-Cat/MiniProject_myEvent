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
 <!--  <link rel="stylesheet" href="css/signUp.css"> -->
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
<style>

* {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box; }
/*------------jiahn add-----------------*/
.signUpMain {
 	margin:50px auto 100px;;
	padding-top:50px;
	border-top: 1px solid #e5e5e5;
}
.signUpTitle {
	/* font-size: 16px; */
	color: #8d71dd !important;
	text-align:center;
}


p, h1, h2, h3, h4, h5, h6, ul {
  margin: 0; }

img {
  max-width: 100%; }

ul {
  padding-left: 0;
  margin-bottom: 0; }

a:hover {
  text-decoration: none; }

:focus {
  outline: none; }

.wrapper {
  min-height: 100vh;
  background-size: cover;
  background-repeat: no-repeat;
  display: flex;
  align-items: center; }

.inner {
  min-width: 850px;
  margin: auto;
  padding-top: 68px;
  padding-bottom: 48px;
  }
  .inner h3 {
    text-transform: uppercase;
    font-size: 22px;
    
    text-align: center;
    margin-bottom: 32px;
    color: #333;
    letter-spacing: 2px; }

form {
  width: 60%;
  padding-left: 45px; }

.form-group {
  display: flex; }
  .form-group .form-wrapper {
    width: 50%; }
    .form-group .form-wrapper:first-child {
      margin-right: 20px; }

.form-wrapper {
  margin-bottom: 17px; }
  .form-wrapper label {
    margin-bottom: 9px;
    display: block; }

.form-control {
  border: 1px solid #ccc;
  
  display: block;
  width: 100%;
  height: 40px;
  padding: 0 20px;
  border-radius: 5px!important;
  background: none; }
  .form-control:focus {
    border: 1px solid #ae3c33; }

select {
  -moz-appearance: none;
  -webkit-appearance: none;
  cursor: pointer;
  padding-left: 20px; }
  select option[value=""][disabled] {
    display: none; }


.checkbox {
  position: relative; }
  .checkbox label {
    padding-left: 22px;
    cursor: pointer; }
  .checkbox input {
    position: absolute;
    opacity: 0;
    cursor: pointer; }
  .checkbox input:checked ~ .checkmark:after {
    display: block; }

.checkmark {
  position: absolute;
  top: 50%;
  left: 0;
  transform: translateY(-50%);
  height: 12px;
  width: 13px;
  border-radius: 2px;
  background-color: #ebebeb;
  border: 1px solid #ccc;
  font-family: Material-Design-Iconic-Font;
  color: #000;
  font-size: 10px;
  font-weight: bolder; }
  .checkmark:after {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    display: none;
    content: '\f26b'; }

@media (max-width: 991px) {
  .inner {
    min-width: 768px; } }
@media (max-width: 767px) {
  .inner {
    min-width: auto;
    background: none;
    padding-top: 0;
    padding-bottom: 0; }

  form {
    width: 100%;
    padding-right: 15px;
    padding-left: 15px; } }
    
    .btn.btn-info {
    	border-radius: 5px!important;
    	padding: 12px 30px!important;
    	background-color:#5c3fbf!important;
    	border-color:#5c3fbf!important;
    }

button#idChk {margin-top:25px; width:100%;} 
button#userAddrBtn {margin-top:32px; width:100%;}
	.btn.signBtn:hover {
    	background-color:#fff!important;
    	border-color:#5c3fbf!important;
    	color:#5c3fbf!important;
    	transition:0.2s;
	}
.chkIdBtn {width:100%;}	

</style>
	
</head>
<body>

<!--subTopMenu-->
<c:import url="headerTop.jsp"/>
<!--subTopMenu end-->	

<c:import url="header.jsp"/>


<div class="container-fluide signUpMain d-flex justify-content-center" id="userSignupSection" v-cloak>

				<form class="contact-form col-lg-4 col-md-4 col-sm-8 col-xs-8 id="signUpForm" action="${pageContext.request.contextPath}/front" method="post">
					<div class="col s12 center">
                   	 <h3 class="signUpTitle"> 회원가입</h3>
                	</div>
					<div class="form-group">
						<div class="form-wrapper">
							<label for="userId">아이디</label>
							<input type="text" class="form-control" id="userId" name="userId" placeholder="아이디를 입력해 주세요">
						</div>
						<div class="form-wrapper">
							<label for="userId"></label>
							<button class="btn btn-info signBtn" id="idChk" type="button">아이디 중복체크</button>
						</div>
					</div>
					<div class="form-wrapper">
						<label for="userPwd">비밀번호</label>
						<input type="password" class="form-control" id="userPwd" name="userPwd" placeholder="비밀번호를 입력해 주세요">
					</div>
					<div class="form-wrapper">
						<label for="userPwdChk">비밀번호 확인</label>
						<input type="password" class="form-control" id="userPwdChk" name="userPwdChk" placeholder="비밀번호 확인해 주세요">
					</div>
					<div class="form-wrapper">
						<label for="userName">이름</label>
						<input type="password" class="form-control" id="userName" name="userName" placeholder="이름을 입력해 주세요">
					</div>
					<div class="form-group">
						<div class="form-wrapper">
							<label for="postalcode">주소</label>
							<input type="text" class="form-control" id="postcode" name="postalCode" placeholder="우편번호" readonly>
						</div>
						<div class="form-wrapper">
							<button class="btn btn-info signBtn" id="userAddrBtn" type="button">우편번호 찾기</button>
						</div>
					</div>
					<div class="form-group">
						<div class="form-wrapper">
							<input type="text" class="form-control" id="roadAddress" name="reaodAddress" placeholder="도로명주소"  readonly>
						</div>
						<div class="form-wrapper">
							<span id="guide" style="color:#999;display:none"></span>
							<input class="form-control" id="extraAddress" name="extraAddress" type="text" disabled>
						</div>
					</div>
					<div class="form-wrapper">
						<input class="form-control" id="detailAddress" name="detailAddress" placeholder="상세주소" type="text">
					</div>
					<div class="form-wrapper">
						<label for="userPhone">전화번호</label>
						<input type="text" class="form-control" id="userPhone" name="userPhone" placeholder="예) 010-0000-0000">
					</div>
					<div class="form-wrapper">
						<label for="userEmail">Email</label>
						<input type="text" class="form-control" id="userEmail" name="userEmail" placeholder="E-mail을 입력해 주세요">
					</div>
					<div class="chkCategory">
						<label for="userCategory">선호 카테고리를 선택해주세요</label>
						<%List<Category> cateList = CategoryService.selectAll();%>
						<%Category cate = cateList.get(0); %>
						${cate.cateNo}
					</div>

			<fieldset>
				<c:forEach items="<%=cateList%>" var="category" varStatus="status">
					<input type="checkbox" id="cate${category.cateNo}" name="cate${category.cateNo}" value="${category.cateNo}">
					<label for="cate${category.cateNo}">${category.cateName}</label>
				</c:forEach>
			</fieldset>			
			<input type="hidden" name="key" value="signUp">
			<input type="hidden" name="cateCount" value="<%=cateList.size()%>"><!-- 카테고리 카운트 value에 넣어야함 -->
			
			
			<!-- <h5>약관동의</h5>
					<div class="checkbox">
						<label>
							<input type="checkbox"> [필수] 이용약관 및 개인정보 수집 관련 동의
							<span class="checkmark"></span>
						</label>
					</div> -->
			<button class="btn btn-info signBtn chkIdBtn" id="submit" type="submit" disabled>아이디 중복체크를 해주세요</button> 
<!-- <button>회원가입</button> -->
				</form><!-- SignUp Form end -->
	


</div><!-- Body inner end -->
<!-- footer -->
<c:import url="footer.jsp"></c:import>
</body>

</html>