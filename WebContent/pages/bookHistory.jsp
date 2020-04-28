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
	
	<link href="css/style.css" rel="stylesheet">
	<link href="css/defaultStyle.css" rel="stylesheet">

<style>
	.mainContainer {padding:50px 0px;}
	
    .menuSubnav__tab--active {
	    padding: 10px 20px;
	    border-bottom: 5px solid #8d71dd;
	    margin-bottom: -2px;
	    font-size: 16px;
	}
	.menuSubnav__tab {
	
	    padding: 10px 20px;
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

</head>
<body>
<!--subTopMenu-->
<c:import url="headerTop.jsp"/>
<!-- mainMenu -->
<c:import url="header.jsp"/>
<!-- 상단 메뉴 -->

<c:import url="subMenu.jsp"/>
    <!-- subnav start -->
     <div class="menuSubnav__section mt-xl-4" >
        <div class="container">
            <div class="row">
                <div class="col s12">
                    <div class="menuSubnav d-flex flex-row align-items-start">
              
                            <div class="menuSubnav__tab--active">
                                <a href="#">
                                    신청 행사 목록
                                </a>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- subnav end -->
    
    <!-- 서브메뉴ㄱㄱ -->
    <!-- 서브메뉴 끝 -->
    
    
    <!-- 여기서부터 원본 -->


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

<!-- footer -->
<c:import url="footer.jsp"></c:import>
</body>
</html>