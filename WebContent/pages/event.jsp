<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/pages/plugins/bootstrap/bootstrap.min.css">
<!-- FontAwesome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/pages/plugins/fontawesome/font-awesome.min.css">
<!-- Animation -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/pages/plugins/animate.css">
<!-- Prettyphoto -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/pages/plugins/prettyPhoto.css">
<!-- Owl Carousel -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/pages/plugins/owl/owl.carousel.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/pages/plugins/owl/owl.theme.css">
<!-- Flexslider -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/pages/plugins/flex-slider/flexslider.css">
<!-- Flexslider -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/pages/plugins/cd-hero/cd-hero.css">
<!-- Style Swicther -->
<link id="style-switch"
	href="${pageContext.request.contextPath}/pages/css/presets/preset3.css"
	media="screen" rel="stylesheet" type="text/css">

<!-- Main Stylesheet -->
<link href="${pageContext.request.contextPath}/pages/css/style.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/pages/css/defaultStyle.css"
	rel="stylesheet">
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
#qnaBoard {
	margin-top: 1em;
}

#evInfo {
	margin-top: 1em;
}
.mainImg img {width:100%;}

.btn.btn-primary {
    color: #323232;
    border-radius: 10px!important;
    padding: 10px 20px;
    background: #fff;
    font-size: 14px;
    transition: all 0.3s ease 0s; 
}
.rightSidebar{
	min-height: 270px;
    width: 100%;
    background-color: #fff;
    padding: 20px;
    border: 1px solid #f6f6f6;
    position:  sticky;
    position: -webkit-sticky;
	
	top: 0;
}
.spacing {margin-top:50px; padding-bottom:50px; border-top: 1px solid #f5f5f5;}
/*********************************************
					PRODUCTS
*********************************************/

.product{
	border: 1px solid #dddddd;
	height: 321px;
}

.product>img{
	max-width: 230px;
}

.product-rating{
	font-size: 20px;
	margin-bottom: 25px;
}

.product-title{
	font-size: 23px;
    font-weight: bold;
    line-height: 1.5em;
    letter-spacing: -0.73px;
    text-align: justify;
    color: #000000;
}

.product-desc{
	font-size: 14px;
	line-height: 1.5em;
	padding-bottom:15px;
}

.product-price{
	font-size: 18px;
	line-height: 1.5em;
	background-color:#f5f5f5;
	padding:20px;
}

.product-stock{
	color: #5c3fbf;
	font-size: 20px;
	margin-top: 10px;
	padding:10px 10px 10px 0px;
}

.product-info{
	margin-top: 50px;
}

/*-----------------------------*/
.evValue{
	line-height: 1.23;
    letter-spacing: 0.67px;
}

/*탭메뉴*/
.tab-content {padding: 20px;}

.gap-60 {margin-bottom:80px;}
</style>

</head>

<body>
	<!--subTopMenu-->
	<c:import url="headerTop.jsp" />
	<!--subTopMenu end-->

	<c:import url="header.jsp"/>

	<!-- Portfolio item start -->
	<div class="spacing"></div>
		<div class="container">
			<!-- Portfolio item row start -->
			<div class="row">
				<!-- Portfolio item slider start -->
				<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 mainImg">
					<div class="portfolio-slider">
							<img src="eventImage/${requestScope.event.evImg}" alt="mainImg">
					</div>
					<div class="row mt-3">
                    <div class="col-md-2">
                        <span class="evTitle">
                            일시
                        </span>
                    </div>
                    <div class="col-md-10">
                        <span class="evValue">
                           
							<fmt:formatDate value="${requestScope.event.evTime.evStartTime}"
								pattern="yyyy/MM/dd hh:mm" /> ~ 
							
							<fmt:formatDate value="${requestScope.event.evTime.evEndTime}"
								pattern="yyyy/MM/dd hh:mm" />
                            
                        </span>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-md-2">
                        <span class="evTitle">
                            장소
                        </span>
                    </div>
                    <div class="col-md-10">
                            <span class="evValue">
                                <span>${requestScope.evAddr}</span>
                            </span>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-md-2">
                        <span class="evTitle">
                            <span class="evTitle">
                                신청
                            </span>
                        </span>
                    </div>
                   <div class="col-md-10">
                    	<span class="evValue">
							<fmt:formatDate
								value="${requestScope.event.evTime.evBookStartTime}"
								pattern="yyyy/MM/dd hh:mm" /> ~ 
							<fmt:formatDate
								value="${requestScope.event.evTime.evBookEndTime}"
								pattern="yyyy/MM/dd hh:mm" />
                    	</span>
                    </div>
				</div>
				
				<div class="row mt-4" >
                    <div class="col-md-12 product-info">
                        
                        	
					<ul class="nav nav-tabs nav_tabs" id="myTab" role="tablist">
					  <li class="nav-item">
					    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#detail" role="tab" aria-controls="detail" aria-selected="true">상세정보</a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" id="cancel-tab" data-toggle="tab" href="#cancel" role="tab" aria-controls="cancel" aria-selected="false">취소 및 환불 규정</a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">문의하기</a>
					  </li>
					</ul>
	
				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active" id="detail" role="tabpanel" aria-labelledby="home-tab">
						<div class="gap-40"></div>
						<div class="row">
							<img src="eventImage/${requestScope.event.evImgDetail}" alt="mainImg">
						</div>
						<div class="gap-40"></div>	
						<div class="row">
							<span>${requestScope.event.evDescription} </span>
						</div>			  
					</div>
					
					<div class="tab-pane fade" id="cancel" role="tabpanel" aria-labelledby="cancel-tab">
						
						
							-행사의 취소/환불 기간은 행사 호스트가 설정한 신청기간과 동일합니다.<br/>
							-신청한 행사의 신청 정보 수정 및 취소/환불은 ‘마이페이지-신청내역관리’에서 할 수 있습니다.<br/>
							-결제 수단, 환불 신청 시점, 환불 사유에 따라 환불 수수료가 부과될 수 있습니다.<br/>
							-위에 대한 자세한 내용은 ‘취소 및 환불규정’에서 확인할 수 있습니다.<br/>
							-신청기간 마감 이후의 신청 정보 수정 및 취소/환불은 행사 호스트에게 문의 부탁드립니다.<br/>
							-행사에 관련된 사항은 하단의 ‘문의하기’를 통해 행사 호스트에게 문의 부탁드립니다.<br/>
							*이벤터스는 통신판매 중개자이며, 해당 행사의 호스트가 아닙니다.<br/>

					</div>
					
					<div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="profile-tab">
							<div class="contact-toggle" style="max-width:80%">
                            <table class="txt-14" style="border:1px solid #e5e5e5">
                                <tbody>
                                    <tr style="border-bottom:1px solid #e5e5e5">
                                        <td style="padding:20px;background-color:#d4d8d8;width:167px">담당자</td>
                                        <td style="padding:20px">토르</td>
                                    </tr>
                                    <tr style="border-bottom:1px solid #e5e5e5">
                                        <td style="padding:20px;background-color:#d4d8d8;width:167px">이메일</td>
                                        <td style="padding:20px">another11@email</td>
                                    </tr>
                                    <tr v-if="projectData.ManagerNumber">
                                        <td style="padding:20px;background-color:#d4d8d8;width:167px">전화번호</td>
                                        <td style="padding:20px">
                                            <div class="d-flex align-items-center">
                                                <span>000-0000-0000</span>
                                                <a :class="{'pl-2':ManagerNumber}" @click="ManagerNumber = projectData.ManagerNumber" v-if="!ManagerNumber">확인하기</a>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div><!-- end -->
                    
                    
				</div><!-- tab end -->
			</div><!-- tab container -->
	
                        
             
			</div>
			</div><!-- col 8좌측설명 -->
			
			
			
			
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 sticky-top" id="sideBar">
					<div class="rightSidebar fixed">
					
						<div class="product-title">${requestScope.event.evName}</div>
						<div class="product-desc">${requestScope.event.category.cateName}</div>

						<div class="product-price">${requestScope.event.channel.chName}</div>
						<div class="product-stock">${requestScope.event.channel.chDescription} 행사설명</div>
						<hr>
					
							
							<%
								if ((boolean) request.getAttribute("isManager") == true) {
							%>
							<div class="btn-group cart">
								<a href="front?key=selectUserByBookedEvNo&evNo=${requestScope.event.evNo}"
									class="project-btn btn btn-primary">참여 인원</a>
							</div>
							<div class="btn-group wishlist">
								<a href="front?key=enterUpdateEvent&evNo=${requestScope.event.evNo}"
									class="project-btn btn btn-primary">행사 수정</a>
							</div>
							<div class="btn-group delete">
								<a href="front?key=deleteEvent&chNo=${requestScope.event.channel.chNo}&evNo=${requestScope.event.evNo}"
									class="project-btn btn btn-primary">행사 삭제</a>
							</div>
							<%
								} else {
									if ((boolean) request.getAttribute("isBook") == true) {
							%>
							<div class="btn-group cancleEv">
								<a href="front?key=deleteBookController&evNo=${requestScope.event.evNo}"
									class="project-btn btn btn-primary">행사신청취소</a>
							</div>
							<%
								} else {
							%>
							<div class="btn-group reqEv">
								<a href="front?key=insertBookController&evNo=${requestScope.event.evNo}"
									class="project-btn btn btn-primary">행사신청하기</a>
							</div>
							<%
								}
									if ((boolean) request.getAttribute("isFavor") == true) {
							%>
							<div class="btn-group cancleFavEv">
								<a href="front?key=deleteFavoriteEvent&evNo=${requestScope.event.evNo}"
									class="project-btn btn btn-primary">관심행사취소</a>
							</div>
							<%
								} else {
							%>
							<div class="btn-group insertFavEv">
								<a href="front?key=favoriteEvent&evNo=${requestScope.event.evNo}"
									class="project-btn btn btn-primary">관심행사등록</a>
							</div>
							<%
								}
								}
							%>
						</div>
					</div>
			<!-- row -->
	
				</div>
	
			<!-- Portfolio item row end -->
		</div>
		<!-- Container end -->


	<div class="gap-60"></div>
	<!-- Body inner end -->
	<!-- footer -->
	<c:import url="footer.jsp"/>
</body>

</html>