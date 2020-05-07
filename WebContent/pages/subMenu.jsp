<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!-- jQuery -->
<script src="${pageContext.request.contextPath}/pages/plugins/jQuery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/pages/js/subMenu.js"></script>

<style>
.menuSubnav {
	border-bottom: 2px solid #f8f8f8;
	flex-direction: row;
	font-weight: bold;
	font-size: 14px;
	text-align: center;
	flex-wrap: nowrap;
	overflow-x: auto;
	overflow-y: hidden;
	-webkit-overflow-scrolling: touch;
	white-space: nowrap;
}

.mypage-nav__section {
	background-color: #f8f8f8
}

.mypage-topnav {
	display: flex;
	flex-direction: row;
	font-weight: bold;
	font-size: 16px;
	text-align: center;
	flex-wrap: nowrap;
	overflow-x: auto;
	white-space: nowrap;
	-webkit-overflow-scrolling: touch;
}

.mypage-topnav__tab>a {
	color: #979797;
}

.mypage-topnav__tab {
	width: 168px;
	padding: 20px;
}

.mypage-topnav__tab--active>a {
	color: #5c3fbf !important;
}

   .mypage-topnav__tab:hover {
        width: 168px;
        font-size: 18px;
        font-weight: bold;
        padding: 20px;
        background-color: white;
        //border-bottom: 3px solid #ffc200;
        color: #5c3fbf!important;
        transition:0.2s;
    } 
.subMenuActive {
	width: 168px;
	font-size: 18px;
	font-weight: bold;
	padding: 20px;
	background-color: white;
	border-bottom: 3px solid #ffc200;
}
</style>
</head>
<body>
	<div class="mypage-nav__section hide-on-small-only">
		<div class="container">
			<div class="row">
				<div class="col s12 ">
					<div class="mypage-topnav d-flex flex-row justify-content-start">
						<div class="mypage-topnav__tab">
							<a class="subMenuList" href="${pageContext.request.contextPath}/front?key=manageChannel"> 채널 관리 </a>
						</div>
						<div class="mypage-topnav__tab ">
							<a class="subMenuList" href="${pageContext.request.contextPath}/front?key=selectBookByUserNo"> 신청 행사 목록 </a>
						</div>
						<div class="mypage-topnav__tab ">
							<a class="subMenuList" href="${pageContext.request.contextPath}/front?key=favoriteEvent"> 관심 행사 목록 </a>
						</div>
						<div class="mypage-topnav__tab ">
							<a class="subMenuList" href="${pageContext.request.contextPath}/front?key=selectMyReview"> 내가 쓴 글 </a>
						</div>
						<div class="mypage-topnav__tab">
							<a class="subMenuList" href="${pageContext.request.contextPath}/front?key=userInfoUpdate"> 회원정보 수정 </a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- mypage nav end -->
</body>
</html>