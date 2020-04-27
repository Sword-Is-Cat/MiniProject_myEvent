<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>참가자 목록</title>
<style>
	table{
		width: 70%;
		margin-left:15%
	}
	thead {
		background-color: rgb(240, 237, 250);
		color:rgb(92, 98, 208);
		text-align: center;
		font-weight: bold;
	}
}
</style>
<link href="css/style.css" rel="stylesheet">
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
		<!-- interest event top -->
		<div class="row">
			<div class="col-md-12 heading text-center">
				<h2 class="title2" style="text-align: center; font-weight: bold;">참가자 목록
				<span class="title-desc">행사이름</span>
				</h2>
			</div>
		</div><!-- Title row end -->
<hr>
<table id="table" class="table">
	<thead>
		<td>이름</td>
		<td>ID</td>
		<td>연락처</td>
		<td>결제내역</td>
		<td>상태</td>
	</thead>
	<tbody>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
	</tbody>
</table>

<!-- footer -->
<c:import url="footer.jsp"></c:import>
</body>
</html>