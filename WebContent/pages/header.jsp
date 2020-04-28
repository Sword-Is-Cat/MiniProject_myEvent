<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
<style>
	 *,.title-desc,h1,h2,h3,h4,h5,h6,p {
		font-family: 'Noto Sans KR', sans-serif ;
	} 

	.navbar-nav .nav-link {
		color :#000;  
		padding: 15px 15px 10px !important;
		font-weight:400;
	}
	.navbar-nav .nav-link .subMenu {
		font-size: 12px!important;
		position: fixed;
	}
	/*--寃���李�--*/
	.form-control:focus {
	  box-shadow: none;
	}
	
	.form-control-underlined {
	  border-width: 0;
	  border-bottom-width: 1px;
	  border-radius: 0;
	  padding-left: 0;
	}
	.form-control::placeholder {
	  font-size: 0.95rem;
	  color: #aaa;
	  font-style: italic;
	}
	.searchForm {margin-left: 0%; width: auto; padding-left:0;}
	.schWindow {margin-left:20px; padding-left:10px;}
	.ipSearch {width:80%!important;}
	img.mainLogo {padding-top:10px;}
	.glyphicon-search:before {
    content: "\f002";
    font-family: FontAwesome;
    font-style: normal;
    font-weight: normal;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
}
</style>
</head>

<body>
	<div class="body-inner">

<!-- Header start -->
<header id="header" class="header" role="banner">
	<div class="nav justify-content-end">
	<a class="navbar-brand navbar-bg" href="index.jsp"><img class="mainLogo d-flex justify-content-end" src="images/mainLogo2.jpg" width="40%" alt="logo"></a>
	</div>
	<div class="container">
		
		<nav class="navbar navbar-expand-lg mainMenu">
			<button class="navbar-toggler ml-auto border-0 rounded-0 text-white" type="button" data-toggle="collapse"
				data-target="#navigation" aria-controls="navigation" aria-expanded="false" aria-label="Toggle navigation">
				<span class="fa fa-bars"></span>
			</button>

			<div class="collapse navbar-collapse text-center d-flex justify-content-between" id="navigation">
			<div class="row col s2"></div>
	<div class="row col s5 p-3 align-self-center">
			<form class="form-inline my-2 navbar-left searchForm">
      			<div class="bg-light rounded rounded-pill ">
              		<div class="input-group">
             			<input type="search" placeholder="���щ�� 寃����대낫�몄��!" aria-describedby="button-addon1" class="form-control border-0 bg-light schWindow">
              			<div class="input-group-append">
                				<button id="button-addon1" type="submit" class="btn btn-link text-primary"><i class="fa fa-search"></i></button>
            			</div>
           			</div>
         		</div>
    		</form>
</div>
<div class="row d-flex justify-content-end">
				<ul class="nav navbar-nav navbar-right mr-auto ">
					<li class="nav-item active">
						<a class="nav-link" href="eventList.jsp" role="button" >
							���ш���
						</a>
					</li>
					<li class="nav-item active">
						<a class="nav-link" href="about.jsp" role="button">
							���ъ��媛�
						</a>
					</li>
					<li class="nav-item active">
						<a class="nav-link" href="bookHistory.jsp" role="button">
							��泥��댁������
						</a>
					</li>
					<li class="nav-item active">
						<a class="nav-link" href="createEvent.jsp" role="button">
							���ш���
						</a>
					</li>
					
				</ul>
</div>
			</div>
		</nav>
	</div><!--container end-->
</header>
<!--/ Header end -->
</div><!--/ innerbody end -->
</body>
</html>