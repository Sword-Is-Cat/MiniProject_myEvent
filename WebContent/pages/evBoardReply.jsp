<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
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

<style type="text/css">
#title {
	height: 16;
	font-size: 12;
	text-align: center;
}
</style>

</head>

<body>
 <c:import url="headerTop.jsp"/>
<!--subTopMenu end-->   

<c:import url="header.jsp"></c:import>

	
	
	<form method="post" action="   " name="evboardReply">
	
	<input type="hidden" name="userId" value="${sessionScope.sessionID}">
	<input type="hidden" name="evBoardNo" value="${evBoard.evBoardNo}"/>

	<table width="700" border="3" bordercolor="lightgray" align="center">
		<tr>
			<td id="title">답변작성자</td>
			<td>${sessionScope.sessionID == evBoard.userNo}</td>
		</tr>
				
		<tr>
			<td id="title">
				내 용
			</td>
			<td>
				<textarea name="evBoardContent" cols="72" rows="20">
				</textarea>			
			</td>		
		</tr>

		<tr align="center" valign="middle">
			<td colspan="5">
				<input type="reset" value="작성취소" >
				<input type="submit" value="등록" >			
			</td>
		</tr>
	</table>	
	</form>
	


	<!-- footer -->
	<c:import url="footer.jsp"></c:import>


</body>
</html>