<%@page import="kosta.mvc.service.NoticeService"%>
<%@page import="kosta.mvc.vo.Notice"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
<script src="./pages/plugins/jQuery/jquery.min.js"></script>
<!-- Bootstrap -->
<link rel="stylesheet"
	href="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.css">
<link rel="stylesheet" href="./plugins/bootstrap/bootstrap.min.css">
<!-- FontAwesome -->
<link rel="stylesheet" href="./plugins/fontawesome/font-awesome.min.css">
<!-- Animation -->
<link rel="stylesheet" href="./plugins/animate.css">
<!-- Prettyphoto -->
<link rel="stylesheet" href="./plugins/prettyPhoto.css">
<!-- Owl Carousel -->
<link rel="stylesheet" href="./plugins/owl/owl.carousel.css">
<link rel="stylesheet" href="./plugins/owl/owl.theme.css">
<!-- Flexslider -->
<link rel="stylesheet" href="./plugins/flex-slider/flexslider.css">
<!-- Flexslider -->
<link rel="stylesheet" href="./plugins/cd-hero/cd-hero.css">
<!-- Style Swicther -->
<link id="style-switch" href="./css/presets/preset3.css" media="screen"
	rel="stylesheet" type="text/css">

<!-- Main Stylesheet -->
<link href="./css/style.css" rel="stylesheet">
<link href="./pages/css/defaultStyle.css" rel="stylesheet">
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
	
<script>
$(function(){
	alert(${sessionScope.userStatus});
 	if(${sessionScope.userStatus}==2) {
		${'.writeBtn'}.show();
		/* ${'.delectSpace'}.append("<td class="noticeDelete"><input type="button" value="삭제" /></td>
								<div class="editBtns">
									<input type="button" class="btn btn-info modifyBtn" value="수정" onClick="sendDelete()"/>
									<input type="button" class="btn btn-info deleteBtn" value="삭제" onClick="sendDelete()"/>
								</div>"); */
	}else {
		${'.writeBtn'}.hide();
	};
	
	$('.deleteBtn').click(function(){
		
	});//delete end
	
	function sendUpdate(){//수정
		document.requestForm.key.value ="updateNotice";
		document.requestForm.submit();
	}

	function sendDelete(){//삭제
		document.requestForm.key.value ="deleteNotice";
		document.requestForm.submit();
	}
	
});//end
</script>
<style>
table {text-align: center;}
.mainContainer {margin-top:50px; padding-top:50px; border-top:1px solid #e5e5e5;}
.editBtns {text-align:right;}
.noticeTitle {
	/* font-size: 16px; */
	color: #8d71dd !important;
	text-align:center;
}
.writeBtn, .modifyBtn, .deleteBtn{
	background-color: #5c3fbf !important;
	border-color: #5c3fbf !important;
	text-align:right;
	margin-bottom:30px;
}
.btn.writeBtn:hover, .modifyBtn:hover, .deleteBtn:hover {
	background-color: #fff !important;
	border-color: #5c3fbf !important;
	color: #5c3fbf !important;
	transition: 0.2s;
}
</style>
</head>
<body>
	<!--subTopMenu-->
	<c:import url="./headerTop.jsp" />
	<!--subTopMenu end-->

	<c:import url="./header.jsp" />


	<!-- channalList start -->
	<%-- <%List<Notice> notice = NoticeService.selectAll();%> --%>
<div class="container-fluide mainContainer"></div><!-- container end -->
	
	<div class="container">
	<div class="row justify-content-center">
		<div class="col s12">
			<h3 class="noticeTitle">공지사항</h3>
			<input type="button" class="btn btn-info writeBtn float-right" value="공지작성" onClick="location.href='./noticeWrite.jsp'"/>
		</div>
		
			<table class="table table-hover">

				<thead>
					<tr class="mainTable">
						<th class="w-25">번호</th>
						<th class="w-50">제목</th>
						<th class="w-25">날짜</th>
						<!-- <th class="noticeDelete">삭제</th> -->
					</tr>
				</thead>
				<tbody>

					<c:forEach items="${list}" var="notice" varStatus="state">
						<tr class="accordion-toggle delectSpace" data-toggle="collapse"
							data-target="#no${notice.noticeNo}">
							<td>${notice.noticeNo}</td>
							<td>${notice.noticeSubject}</td>
							<td><fmt:formatDate value="${notice.noticeTime}" type="date"/></td>
				
							
						</tr>
						<tr class="accordion-body collapse" id="no${notice.noticeNo}">
							<td></td>
							<td>${notice.noticeContent}
								<div class="gap-40"></div>
								<div class="editBtns">
									<!-- <input type="button" class="btn btn-info modifyBtn" value="수정" onClick="sendDelete()"/>
									<input type="button" class="btn btn-info deleteBtn" value="삭제" onClick="sendDelete()"/> -->
									
									<form name="requestForm" method=post action="${path}/front?key=viteToNotice">
      
									<!-- 수정시 필요한 데이터들을 hidden으로 숨겨놓고 폼 데이터로 보내준다. -->
										<input type=hidden name="noticeSubject" value="${notice.noticeSubject}">
										<input type=hidden name="noticeSubject" value="${notice.noticeContent}">
										<input type=hidden name="key" value="">
										<input type="button" class="btn btn-info modifyBtn" value="수정" onClick="sendDelete()"/>
										<input type="button" class="btn btn-info deleteBtn" value="삭제" onClick="sendDelete()"/>
						    		</form>
														
								
								</div>
							
							</td>
							<td class="noticeDelete">
								
							</td>
						</tr>
					</c:forEach>

				</tbody>

			</table>

		
	</div>
</div>
	<!-- footer -->

	<c:import url="./footer.jsp"></c:import>

</body>
</html>