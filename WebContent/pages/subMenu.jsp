<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!-- jQuery -->
<script src="plugins/jQuery/jquery.min.js"></script>
<script src="./js/subMenu.js" ></script>

<style>
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

  /*   .mypage-topnav__tab--active {
        width: 168px;
        font-size: 18px;
        font-weight: bold;
        padding: 20px;
        background-color: white;
        border-bottom: 3px solid #ffc200;
    } */
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
                            <a class="subMenuList" href="channelMng.jsp">
                               ä�� ����
                            </a>
                        </div>
                        <div class="mypage-topnav__tab ">
                            <a class="subMenuList"  href="bookHistory.jsp" >
                               ��û ��� ����
                            </a>
                        </div>
                        <div class="mypage-topnav__tab ">
                            <a class="subMenuList"  href="interestEvent.jsp" >
                               ���� ��� ���
                            </a>
                        </div>
                        <div class="mypage-topnav__tab">
                            <a class="subMenuList"  href="userInfoUpdate.jsp">
                                ȸ������ ����
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- mypage nav end -->
</body>
</html>