<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
<title>My Event :: 행사와 함께 하는 모든 순간</title>
<!--Favicon-->
	<link rel="icon" href="./images/favicon/32.png" type="image/x-icon" />
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="./images/favicon/144.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="./images/favicon/72.png">
	<link rel="apple-touch-icon-precomposed" href="./images/favicon/54.png">
<!-- header -->

<style>
	.mainContainer {padding-bottom:50px;}
	.menuSubnav{
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

	.menuSubnav__tab--active {
	    padding: 10px 20px;
	    border-bottom: 5px solid #8d71dd;
	    margin-bottom: -2px;
	    font-size: 16px;
	}
	.menuSubnav__tab {
	
	    padding: 10px 20px;
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

    .mypage-topnav__tab > a {
        color: #979797;
    }

    .mypage-topnav__tab {
        width: 168px;
        padding: 20px;
    }

    .mypage-topnav__tab--active > a {
        color: #5c3fbf !important;
    }

    .mypage-topnav__tab--active {
        width: 168px;
        font-size: 18px;
        font-weight: bold;
        padding: 20px;
        background-color: white;
        border-bottom: 3px solid #ffc200;
    }
	/*------------------기존CSS---------------------------*/
	table{
		 width : 100%;
		/*margin:0 auto;
		margin-left:15%; */
	}
	thead {
		background-color: rgb(240, 237, 250);
		color:rgb(92, 98, 208);
		text-align: center;
		font-weight: bold;
	}

</style>
<link href="css/style.css" rel="stylesheet">
<link href="css/defaultStyle.css" rel="stylesheet">
</head>
<body>
<!--subTopMenu-->
<div class="container">
			<div class="cols 12">
				<div class="subTopMenu d-flex justify-content-end">
					<ul class="subMenu">
					<li class="nav-item active"><a class="nav-link" href="#" role="button" href="#">로그인</a></li>
					<li class="nav-item active"><a class="nav-link" href="#" role="button" href="#">로그아웃</a></li>
					<li class="nav-item active"><a class="nav-link" href="#" role="button"  href="#">회원가입</a></li>
					<li class="nav-item dropdown active">
						<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false">
							마이페이지
						</a>
						<div class="dropdown-menu" style="border: 1.5px solid #222; border-radius: 10px;">
							<a class="dropdown-item" href="index.html">전체 신청내역</a>
							<a class="dropdown-item" href="index-2.html">관심 행사 목록</a>
							<a class="dropdown-item" href="index-3.html">내가 쓴 글</a>
							<a class="dropdown-item" href="index-4.html">회원 정보 수정</a>
						</div>
					</li>
				</ul>
			</div><!--subTopMenu-->
		</div><!--cols12 end-->
	</div><!--container end-->
<!--subTopMenu end-->
<c:import url="header.jsp"></c:import>
<!-- 상단 메뉴 -->
<div class="mypage-nav">
    <div class="mypage-nav__section hide-on-small-only">
        <div class="container">
            <div class="row">
                <div class="col s12 ">
                    <div class="mypage-topnav d-flex flex-row justify-content-start">
                        <div class="mypage-topnav__tab--active ">
                            <a href="#" >
                                전체 신청 내역
                            </a>
                        </div>
                        <div class="mypage-topnav__tab">
                            <a href="">
                                관심 행사 목록
                            </a>
                        </div>
                        <div class="mypage-topnav__tab">
                            <a href="">
                               내가 쓴 글
                            </a>
                        </div>
                        <div class="mypage-topnav__tab">
                            <a href="">
                                회원정보 설정
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- mypage nav end -->
    <!-- subnav start -->
     <div class="menuSubnav__section mt-xl-4" >
        <div class="container">
            <div class="row">
                <div class="col s12">
                    <div class="menuSubnav d-flex flex-row align-items-start">
                            <div class="menuSubnav__tab">
                                <a href="#">
                              전체 신청 내역      
                                </a>
                            </div>
                            <div class="menuSubnav__tab--active">
                                <a href="#">
                                    참가 행사 목록
                                </a>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- subnav end -->
    
    
    <!-- 여기서부터 원본 -->
		<!-- book history top -->
		<div class="row">
			<div class="col-md-12 heading text-center">
				<h2 class="title2" style="text-align: center;  font-weight: bold;">참가 행사 목록<span class="title-desc"></span></h2>
			</div>
		</div><!-- Title row end -->
<!-- <hr>  -->

<div class="container mainContainer">
	<div class="col s12 d-flex justify-content-between">
		<table>
			<thead>
				<td>신청일</td>
				<td>신청행사</td>
				<td>상세내용</td>
				<td>상태</td>
			</thead>
			<tbody>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</tbody>
		</table>
	</div>
</div><!-- container end -->

<c:import url="footer.jsp"/>
</body>
</html>