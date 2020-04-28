<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
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
  <!-- Bootstrap -->
  <link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.css">
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
	<!-- Style Swicther -->
	<link id="style-switch" href="css/presets/preset3.css" media="screen" rel="stylesheet" type="text/css">

	<!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
    <!--[if lt IE 9]>
      <script src="plugins/html5shiv.js"></script>
      <script src="plugins/respond.min.js"></script>
    <![endif]-->

  <!-- Main Stylesheet -->
  <link href="css/style.css" rel="stylesheet">
  

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
	/*--검색창--*/
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
             			<input type="search" placeholder="행사를 검색해보세요!" aria-describedby="button-addon1" class="form-control border-0 bg-light schWindow">
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
							행사검색
						</a>
					</li>
					<li class="nav-item active">
						<a class="nav-link" href="about.jsp" role="button">
							회사소개
						</a>
					</li>
					<li class="nav-item active">
						<a class="nav-link" href="#" role="button">
							신청내역확인
						</a>
					</li>
					<li class="nav-item active">
						<a class="nav-link" href="createEvent.html" role="button">
							행사개설
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