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
<link rel="stylesheet" href="${pageContext.request.contextPath}/pages/plugins/bootstrap/bootstrap.min.css">
<!-- FontAwesome -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/pages/plugins/fontawesome/font-awesome.min.css">
<!-- Animation -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/pages/plugins/animate.css">
<!-- Prettyphoto -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/pages/plugins/prettyPhoto.css">
<!-- Owl Carousel -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/pages/plugins/owl/owl.carousel.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/pages/plugins/owl/owl.theme.css">
<!-- Flexslider -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/pages/plugins/flex-slider/flexslider.css">
<!-- Flexslider -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/pages/plugins/cd-hero/cd-hero.css">
<!-- Style Swicther -->
<link id="style-switch" href="${pageContext.request.contextPath}/pages/css/presets/preset3.css" media="screen"
	rel="stylesheet" type="text/css">

<!-- Main Stylesheet -->
<link href="${pageContext.request.contextPath}/pages/css/style.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/pages/css/defaultStyle.css" rel="stylesheet">
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
<!-- 로그인된 사용자가 아니라면 로그인창으로 감 -->
<%
 	if(session.getAttribute("userId") == null) {  
  		session.setAttribute("  ", "게시물 작성은<br>로그인이 필요합니다."); 
 		response.sendRedirect("../pages/login.jsp");  
 		
		return ;  
 	} 
%>


	<h3>
		<!--  1. 등록 -->
		<%-- <%  --%>
		<!-- //  EvBoardDAO dao =new EvBoardDAO(); -->

		<!-- //    int result  = dao.insert(EvBoard); -->
		<%-- %> --%>
		<!-- <script language=javascript> -->
		<!-- //    self.window.alert("입력한 글을 저장하였습니다."); -->
		<!-- //    location.href="EvBoard.jsp"; -->

		<!--   </script> -->

	</h3>


	<c:import url="headerTop.jsp" />
	<!--subTopMenu end-->

	<c:import url="header.jsp" />

	

    
	<form method="post" action="../front?key=insertEvBoard"
		name="insertEvBoard" enctype="../elec?command=insert">
		<input type="hidden" name="boardWrite" value="${sessionScope.sessionID == evBoard.userNo}">
		<table width="700" border="3" bordercolor="lightgray" align="center">
			<tr>
				<td id="title">이벤트번호</td>
				<td>${sessionScope.sessionID ==evBoard.evNo}</td>				
			</tr>
			<tr>
				<td id="title">작성자</td>
				<td>${sessionScope.sessionID == evBoard.userNo}</td>
			</tr>
			<tr>
				<td id="title">내 용</td>
				<td><textarea name="evBoardContent" cols="72" rows="20"></textarea>
				
				</td>
			</tr>
				
			<tr align="center" valign="middle">
				<td colspan="5"><input type="reset" value="작성취소">
				 <input	type="submit" value="등록"onClick=""> 
				 <input type="button" value="목록"onClick="../pages/evBoard.jsp">
				</td>
			</tr>
		</table>
	</form>




	<!-- footer -->
	<c:import url="footer.jsp"></c:import>


</body>
</html>