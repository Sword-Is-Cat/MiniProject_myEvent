<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
<!--졔가 만든 style -->
<style>
.option {
	color: "navy";
}

.select {
	margin-left: 55%;
}

eTitle.hover {
	text-decoration: none;
	color: inherit;
}

img.chImg {
	width: 200px;
	height: 180px;
}

eTitle {
	display: block;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}

.eTitle:hover {
	text-decoration: none;
	color: inherit;
}
#eventTab{
	color: #5c3fbf;
	font-weight: bold;
	margin-left: 15%;
	border-bottom: 5px solid #5c3fbf;
}
#channelTab{
	font-weight: bold;
	margin-left: 10%;
}
hr{
	margin-left: 15%;
	width:70%
}
</style>
<!-- mobile responsive meta -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- ** Plugins Needed for the Project ** -->
<!-- Bootstrap -->
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

<!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
<!--[if lt IE 9]>
      <script src="plugins/html5shiv.js"></script>
      <script src="plugins/respond.min.js"></script>
    <![endif]-->

<!-- Main Stylesheet -->
<link href="${pageContext.request.contextPath}/pages/css/style.css" rel="stylesheet">

<!--Favicon-->
<link rel="icon" href="img/favicon/favicon-32x32.png"
	type="image/x-icon" />
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="img/favicon/favicon-144x144.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="img/favicon/favicon-72x72.png">
<link rel="apple-touch-icon-precomposed"
	href="img/favicon/favicon-54x54.png">

<script src="${pageContext.request.contextPath}/pages/plugins/jQuery/jquery.min.js"></script>
<script>
	function toggleFavoriteEvent(evNo){
		$.ajax({
			type : "GET",
			url : "front?key=toggleFavoriteEvent&evNo="+evNo,
			dataType : "text",
		    success : function(result){
		    	if(result.trim() == 'insert'){
		    		$('.favEventIcon'+evNo).addClass('text-danger');
		    	}else{
		    		$('.favEventIcon'+evNo).removeClass('text-danger');
		    	}
		    },
		    error: function(result){
		    	console.log('result', result);
		    	console.log('result.responseText', result.responseText);
		    	console.log('result.error', result.error);
		    }
		});
	}
	
	$(function(){
		<c:forEach items='${favoriteEventsNo}' var='favEvNo' varStatus='status'>
			if($('.favEventIcon${favEvNo}').length > 0){
				$('.favEventIcon${favEvNo}').addClass('text-danger');
			}
		</c:forEach>
	});
</script>
</head>

<body>
	<!--subTopMenu-->
	<c:import url="headerTop.jsp" />
	<!--subTopMenu end-->

	<c:import url="header.jsp"></c:import>
	<br>
	<h3 id="tab">
	<a id="eventTab" href="${pageContext.request.contextPath}/front?key=searchRecentEvent">행사</a>
	<a id="channelTab" href="${pageContext.request.contextPath}/pages/channelList.jsp">채널</a>
	</h3>
	<br>
	<hr id="line" color="#5c3fbf"/>
	<!-- Portfolio start -->
	<section id="main-container" class="portfolio-static">
		<div class="container">
			<div class="row">
			<c:forEach items="${list}" var="event" varStatus="status" >
				<div class="col-sm-4 portfolio-static-item">
					<div class="grid">
						<figure class="m-0 effect-oscar">
							<img class="chImg"
								src="${pageContext.request.contextPath}/eventImage/${event.evImg}" alt="${event.evImg}">
							<figcaption>
								<a class="link icon-pentagon" href="./front?key=selectEvent&evNo=${event.evNo}"><i
									class="fa fa-link"></i></a> <a class="view icon-pentagon"
									style="cursor:pointer;" onclick="toggleFavoriteEvent(${event.evNo})"><i
									class="favEventIcon${event.evNo}"></i></a>
							</figcaption>
						</figure>
						<div class="portfolio-static-desc">
							<table>
								<tr>
									<td><a><h3 id="eTitle" class="eTitle">${event.evName}</h3></a></td>
								</tr>
								<tr>
									<td><a>행사기간<br> <fmt:formatDate value="${event.evTime.evStartTime}" pattern = "yyyy/MM/dd HH:mm"/> ~ <fmt:formatDate value="${event.evTime.evEndTime}" pattern = "yyyy/MM/dd HH:mm"/></a></td>
								</tr>
								<!-- <tr>
									<td></td>
								</tr> -->
							</table>

						</div>
					</div>
					<!--/ grid end -->
				</div>
				<!--/ item 1 end -->
			</c:forEach>
			</div>
			<!-- Content row end -->
		</div>
		<!-- Container end -->
	</section>
	<!-- Portfolio end -->

	<div class="gap-40"></div>
	<!-- Body inner end -->
	<!-- footer -->
	<c:import url="footer.jsp"></c:import>
</body>

</html>