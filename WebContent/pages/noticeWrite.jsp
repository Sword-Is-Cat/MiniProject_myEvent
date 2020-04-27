<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
 <title>My Event :: 행사와 함께 하는 모든 순간</title> 

</head>

<body>
<!--subTopMenu-->
<div class="container">
			<div class="cols 12">
				<div class="subTopMenu d-flex justify-content-end">
				<ul class="subMenu">
					<li class="nav-item active"><a class="nav-link" href="login.jsp" role="button" >로그인</a></li>
					<li class="nav-item active"><a class="nav-link" href="index.jsp" role="button">로그아웃</a></li>
					<li class="nav-item active"><a class="nav-link" href="signUp.jsp" role="button">회원가입</a></li>
					<li class="nav-item dropdown active">
						<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false">
							마이페이지
						</a>
						<div class="dropdown-menu" style="border: 1.5px solid #222; border-radius: 10px;">
							<a class="dropdown-item" href="index.html">전체 신청내역</a>
							<a class="dropdown-item" href="interestEvent.jsp">관심 행사 목록</a>
							<a class="dropdown-item" href="myWrite.jsp">내가 쓴 글</a>
							<a class="dropdown-item" href="changeUserInfo.jsp">회원 정보 수정</a>
						</div>
					</li>
				</ul>
			</div><!--subTopMenu-->
		</div><!--cols12 end-->
	</div><!--container end-->
<!--subTopMenu end-->	

<c:import url="header.jsp"></c:import>
	<div class="gap-50 p-3">
	<div class="row justify-content-center p-3">
		<caption>공지사항 등록</caption>
	</div>
		<div class="row justify-content-center">
			
			<div class="col-md-6">
				<form id="contact-form" action="front?key=insertNotice" method="post" role="form">
					<div class="row">
						<div class="col-md-12">
							<div class="form-group">
								<label>제목</label>
								<input class="form-control" name="subject" id="subject" placeholder="" required>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label>내용</label>
						<textarea class="form-control" name="message" id="message" placeholder="" rows="10" required></textarea>
					</div>
					<div class="text-center"><br>
						<button class="btn btn-primary solid blank" type="submit">등록하기</button>
					</div>
				</form>
			</div>

		</div>
	</div>
	</div>
	<!--/ container end -->
</section>
<!--/ Main container end -->


</div><!-- Body inner end -->

<!-- footer -->
<c:import url="footer.jsp"></c:import>
</body>

</html>