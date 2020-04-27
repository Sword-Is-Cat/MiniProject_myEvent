<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
<title>My Event :: ���� �Բ� �ϴ� ��� ����</title>
<!--Favicon-->
	<link rel="icon" href="./images/favicon/32.png" type="image/x-icon" />
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="./images/favicon/144.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="./images/favicon/72.png">
	<link rel="apple-touch-icon-precomposed" href="./images/favicon/54.png">
	
	<link href="css/style.css" rel="stylesheet">
	<link href="css/defaultStyle.css" rel="stylesheet">

<style>
	.mainContainer {padding:50px 0px;}
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
	/*------------------����CSS---------------------------*/
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
<!-- ��� �޴� -->
<div class="mypage-nav">
    <div class="mypage-nav__section hide-on-small-only">
        <div class="container">
            <div class="row">
                <div class="col s12 ">
                    <div class="mypage-topnav d-flex flex-row justify-content-start">
                        <div class="mypage-topnav__tab--active ">
                            <a href="#" >
                                ��ü ��û ����
                            </a>
                        </div>
                        <div class="mypage-topnav__tab">
                            <a href="interestEvent.jsp">
                                ���� ��� ���
                            </a>
                        </div>
                        <div class="mypage-topnav__tab">
                            <a href="">
                               ���� �� ��
                            </a>
                        </div>
                        <div class="mypage-topnav__tab">
                            <a href="createEvent.html">
                                ȸ������ ����
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
                              ��ü ��û ����      
                                </a>
                            </div>
                            <div class="menuSubnav__tab--active">
                                <a href="#">
                                    ���� ��� ���
                                </a>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- subnav end -->
    
    
    <!-- ���⼭���� ���� -->


<div class="container mainContainer">
	<div class="col s12 d-flex justify-content-between">
		<table>
			<thead>
				<td>��û��</td>
				<td>��û���</td>
				<td>�󼼳���</td>
				<td>����</td>
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