<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Event :: 행사와 함께하는 모든 순간</title>

<!-- mobile responsive meta -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- ** Plugins Needed for the Project ** -->
<!-- Bootstrap -->
<link rel="stylesheet"
	href="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.css">
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
<link id="style-switch" href="css/presets/preset3.css" media="screen"
	rel="stylesheet" type="text/css">

<!-- Main Stylesheet -->
<link href="css/style.css" rel="stylesheet">
<link href="css/defaultStyle.css" rel="stylesheet">
<!--Favicon-->
<link rel="icon" href="./images/favicon/32.png" type="image/x-icon" />
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="./images/favicon/144.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="./images/favicon/72.png">
<link rel="apple-touch-icon-precomposed" href="./images/favicon/54.png">
<!-- webFont -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">

<style>
.star-input>.input,
.star-input>.input>label:hover,
.star-input>.input>input:focus+label,
.star-input>.input>input:checked+label{display: inline-block;vertical-align:middle;background:url('images/grade_img.png')no-repeat;}
.star-input{display:inline-block; white-space:nowrap;width:225px;height:40px;padding:25px;line-height:30px;}
.star-input>.input{display:inline-block;width:150px;background-size:150px;height:28px;white-space:nowrap;overflow:hidden;position: relative;}
.star-input>.input>input{position:absolute;width:1px;height:1px;opacity:0;}
star-input>.input.focus{outline:1px dotted #ddd;}
.star-input>.input>label{width:30px;height:0;padding:28px 0 0 0;overflow: hidden;float:left;cursor: pointer;position: absolute;top: 0;left: 0;}
.star-input>.input>label:hover,
.star-input>.input>input:focus+label,
.star-input>.input>input:checked+label{background-size: 150px;background-position: 0 bottom;}
.star-input>.input>label:hover~label{background-image: none;}
.star-input>.input>label[for="p1"]{width:30px;z-index:5;}
.star-input>.input>label[for="p2"]{width:60px;z-index:4;}
.star-input>.input>label[for="p3"]{width:90px;z-index:3;}
.star-input>.input>label[for="p4"]{width:120px;z-index:2;}
.star-input>.input>label[for="p5"]{width:150px;z-index:1;}
.star-input>output{display:inline-block;width:60px; font-size:18px;text-align:right; vertical-align:middle;}
</style>

</head>

<body>
<!--subTopMenu-->
	<c:import url="headerTop.jsp" />
	<!-- mainMenu -->
	<c:import url="header.jsp" />
	
	<div class="row justify-content-center p-3">
         <caption>채널리뷰 등록</caption>
      </div>
      <div class="row justify-content-center">

         <div class="col-md-6">
            <form id="contact-form" action="../front?key=createChBoard"
               method="post" role="form">
               <div class="row">
                  <div class="col-md-12">
                     <div class="form-group">
                        <label>채널이름 <h3 style="font-weight: bold">채널이름 자동으로 올 수 있게</h3></label>
                     </div>
                  </div>
               </div>
               <div class="row">
                  <div class="col-md-12">
                     <div class="form-group">
                        <label>별점</label>
                        <span class="star-input">
							<span class="input">
						    	<input type="radio" name="chBoardStar" value="1" id="p1">
						    	<label for="p1">1</label>
						    	<input type="radio" name="chBoardStar" value="2" id="p2">
						    	<label for="p2">2</label>
						    	<input type="radio" name="chBoardStar" value="3" id="p3">
						    	<label for="p3">3</label>
						    	<input type="radio" name="chBoardStar" value="4" id="p4">
						    	<label for="p4">4</label>
						    	<input type="radio" name="chBoardStar" value="5" id="p5">
						    	<label for="p5">5</label>
						  	</span>
						  	<output for="chBoardStar" value="0"><b>0</b>점</output>						
						</span>
                     </div>
                  </div>
               </div>
               <div class="form-group">
                  <label>내용</label>
                  <textarea class="form-control" name="chBoardContent" id="message"
                     placeholder="" rows="10" required></textarea>
               </div>
               <input type="hidden" name="userNo" value="${sessionScope.userNo}"/>
               <input type="hidden" name="chNo" value="<%=request.getParameter("chNo")%>"/>
               <div class="text-center">
                  <br>
                  <button class="btn btn-primary solid blank" type="submit">등록하기</button>
               </div>
            </form>
         </div>

      </div>
	<br>
	<!-- footer -->
	<c:import url="footer.jsp"></c:import>
	
	<script src="js/jquery-1.11.3.min.js"></script>
	<script src="js/star.js"></script>
	
</body>
</html>