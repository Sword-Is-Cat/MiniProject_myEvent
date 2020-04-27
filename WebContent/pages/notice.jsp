<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>My Event :: ���� �Բ� �ϴ� ��� ����</title>

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

  <!-- Main Stylesheet -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/defaultStyle.css" rel="stylesheet">
  <!--Favicon-->
	<link rel="icon" href="./images/favicon/32.png" type="image/x-icon" />
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="./images/favicon/144.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="./images/favicon/72.png">
	<link rel="apple-touch-icon-precomposed" href="./images/favicon/54.png">
  <!-- webFont -->
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
</head>
<body>
<!--subTopMenu-->
<div class="container">
			<div class="cols 12">
				<div class="subTopMenu d-flex justify-content-end">
				<ul class="subMenu">
					<li class="nav-item active"><a class="nav-link" href="login.jsp" role="button" >�α���</a></li>
					<li class="nav-item active"><a class="nav-link" href="index.jsp" role="button">�α׾ƿ�</a></li>
					<li class="nav-item active"><a class="nav-link" href="signUp.jsp" role="button">ȸ������</a></li>
					<li class="nav-item dropdown active">
						<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false">
							����������
						</a>
						<div class="dropdown-menu" style="border: 1.5px solid #222; border-radius: 10px;">
							<a class="dropdown-item" href="index.html">��ü ��û����</a>
							<a class="dropdown-item" href="interestEvent.jsp">���� ��� ���</a>
							<a class="dropdown-item" href="myWrite.jsp">���� �� ��</a>
							<a class="dropdown-item" href="changeUserInfo.jsp">ȸ�� ���� ����</a>
						</div>
					</li>
				</ul>
			</div><!--subTopMenu-->
		</div><!--cols12 end-->
	</div><!--container end-->
<!--subTopMenu end-->	

<c:import url="header.jsp"></c:import>
	<div class="gap-50 p-3"></div>
	<div class="row justify-content-center">
	<div class="col-md-8">
	<caption>��������</caption>
	<table class="table table-hover">
	
		<thead>
			<tr>
				<th>��ȣ</th>
				<th>����</th>
				<th>��¥</th>
				<th class="noticeDelete">����</th>
			</tr>
		</thead>
		<tbody>
			<c:choose>
			    <c:when test="${empty requestScope.list}">
					<tr>
				        <td colspan="5">
				            <p align="center"><b><span style="font-size:9pt;">��ϵ� ������ �����ϴ�.</span></b></p>
				        </td>
			   		</tr>
			    </c:when>
				<c:otherwise>
			<c:forEach items="${list}"  var="notice" varStatus="state">
			<tr class="accordion-toggle" data-toggle="collapse" data-target="#no${notice.no}" >
				<td>${notice.no}</td>
				<td>${notice.title}</td>
				<td>${notice.date}</td>
				<td class="noticeDelete"><input type="button" value="����"/></td>
				
			</tr>
			<tr class="accordion-body collapse" id="no5">
				<td></td>
				<td >${notice.contents}</td>
				<td></td>
				<td class="noticeDelete"></td>
			</tr>
        	</c:forEach>
        	</c:otherwise>
        </c:choose>
		</tbody>
		
	</table>
	
	</div>
	</div>
<!-- footer -->

<c:import url="footer.jsp"></c:import>

</body>
</html>