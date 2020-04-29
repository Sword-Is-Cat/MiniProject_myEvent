<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">


</head>

<body>
	<!--subTopMenu-->
	<div class="container">
		<div class="cols 12">
			<div class="subTopMenu d-flex justify-content-end">
				<ul class="subMenu">
					<c:choose>
						<c:when test="${sessionScope.status == 1}">
							<li class="nav-item dropdown active"><a
								class="nav-link dropdown-toggle" href="#" role="button"
								data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									마이페이지 </a>
								<div class="dropdown-menu"
									style="border: 1.5px solid #222; border-radius: 10px;">
									<a class="dropdown-item" href="channelMng.jsp">채널 관리</a> <a
										class="dropdown-item" href="bookHistory.jsp">신청 행사 목록</a> <a
										class="dropdown-item"
										href="${pageContext.request.contextPath}/front?key=userInfoUpdate">회원
										정보 수정</a>
								</div></li>
							<li class="nav-item active"><a class="nav-link"
								href="${pageContext.request.contextPath}/front?key=logout"
								role="button">로그아웃</a></li>						
						</c:when>
						<c:otherwise>
							<li class="nav-item active">
							<a class="nav-link"
								href="login.jsp" role="button">로그인</a></li>
							<li class="nav-item active"><a class="nav-link"
								href="signUp.jsp" role="button">회원가입</a></li>					
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
			<!--subTopMenu-->
		</div>
		<!--cols12 end-->
	</div>
	<!--container end-->
	<!--subTopMenu end-->