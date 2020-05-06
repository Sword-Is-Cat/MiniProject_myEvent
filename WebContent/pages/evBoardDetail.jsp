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
<c:import url="headerTop.jsp" />
	<!--subTopMenu end-->

	<c:import url="header.jsp" />

	<title>글 상세보기</title>
	
	<style type="text/css">
		#wrap {
			width: 800px;
			margin: 0 auto 0 auto;
		}
	
		#detailBoard{
			text-align :center;
		}
		
		#title{
			height : 16;
			font-family :'돋움';
			font-size : 12;
			text-align :center;
		}
	</style>
	
	<script type="text/javascript">
		function changeView(value) 
	{ 
 			//if(value == 0)	location.href="BoardListAction.bo?page=${pageNum}";
			 if(value == 1){
				//location.href='BoardReplyFormAction.bo?num=${evBoard.evBoardNo}&page=${pageNum}';
			} 
				
 		} 
	</script> 
</head>
<body>

<div id="wrap">
	<br><br>
	<div id="board">
		<table id="evBoardDetail" width="500" border="3" bordercolor="lightgray">
		
			<tr>
				<td id="title">작성일</td>
				<td>${Timestamp.evBoardTime}</td>
			</tr>
			<tr>
				<td id="title">작성자</td>
				<td>${User.userNo}</td>
			</tr>
		
			<tr>
				<td id="title">
					내 용
				</td>
				<td>
					${EvBoard.evBoardContent}
				</td>		
			</tr>
			
	
			<tr align="center" valign="middle">
				<td colspan="5">
				<c:if test="${sessionScope.sessionID !=null}">
					<c:if test="${ evBoard.userNo}">
						<input type="button" value="수정" >
						<input type="button" value="삭제" >
					</c:if>
					<input type="button" value="답글" onclick= "../pages/evBoardReply.jsp" > 
				</c:if>		
<!-- 					<input type="button" value="목록" onclick="changeView(0)">			 -->
				</td> <!-- javascript:location.href='BoardListAction.bo?page=${pageNum}' -->
			</tr>
		</table>
	</div>
</div>	

<!-- footer -->
	<c:import url="footer.jsp"></c:import>


</body>
</html>