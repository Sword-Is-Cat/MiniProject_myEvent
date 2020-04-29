<%@page import="kosta.mvc.service.CategoryService"%>
<%@page import="kosta.mvc.vo.Category"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta charset="UTF-8">
  <title>My Event :: 행사와 함께 하는 모든 순간</title>

   <!-- mobile responsive meta -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  
   <!-- ** Plugins Needed for the Project ** -->
   <!-- jQuery -->
<script src="plugins/jQuery/jquery.min.js"></script>
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
  
  <link href="css/createEvent.css" rel="stylesheet">

 <!--Favicon-->
	<link rel="icon" href="./images/favicon/32.png" type="image/x-icon" />
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="./images/favicon/144.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="./images/favicon/72.png">
	<link rel="apple-touch-icon-precomposed" href="./images/favicon/54.png">
  <!-- webFont -->
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
  <!-- KAKAO -->
  <script	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <script src="js/signUp.js"></script>
  <script src="./plugins/jQuery/jquery.min.js"></script>
<script>
	$(function(){
		$('button[type=submit]').click(function(){
			$('#contact-form').submit();
		});
	});
</script>
</head>

<body>
	<c:import url="headerTop.jsp" />
	<c:import url="header.jsp" />

	<div id="banner-area">
		<img src="images/banner/banner1.jpg" alt="" />
		<div class="parallax-overlay"></div>
		<!-- Subpage title start -->
		<div class="banner-title-content">
			<div class="text-center">
				<h2>행사 개설</h2>
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb justify-content-center">
						<li class="breadcrumb-item"><a href="#"> 홈으로 </a></li>
						<li class="breadcrumb-item text-white" aria-current="page">
							행사 개설</li>
					</ol>
				</nav>
			</div>
		</div>
		<!-- Subpage title end -->
	</div>
	<!-- Banner area end -->


		<!-- Main container start -->
		<section id="main-container">
			<div class="container">

				<div class="gap-40"></div>

				<div class="row">
					<div class="col-md-7">
						<form id="contact-form" action="../front?key=createEvent"
							method="post" role="form" enctype="multipart/form-data">
							<div class="row">
								<div class="col-md-8">
									<div class="form-group">
										<label> 행사명 </label> 
										<input class="form-control" name="evName" id="name" placeholder="행사명" type="text" required>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label> 개설채널 </label> 
										<input class="form-control"	name="chName" id="chName" type="text" value="${param.chName}"
											required readonly> <input name="chNo" id='chNo'
											type='hidden' value="${param.chNo}">
									</div>
								</div>
							</div>
							<%
								List<Category> cateList = CategoryService.selectAll();
							%>
							<div class="row">
								<div class="col-md-8">
									<div class="form-group">
										<label> 카테고리 </label> <select class="form-control"
											name="cateNo" id="cateNo" required>
											<option>선택</option>
											<c:forEach items='<%=cateList%>' var='listCate'>
												<option value="${listCate.cateNo}">${listCate.cateName}</option>
											</c:forEach>
										</select>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label> 정원 </label> 
										<input class="form-control" name="evBookMax" id="evBookMax" type="number" placeholder="인원수(명)" required>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label> 행사 설명 </label>
								<textarea class="form-control" name="evDescription" id="message" placeholder="" rows="10" required></textarea>
							</div>

							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label> 행사 이미지 선택 </label>
										<input type="file" class="btn btn-light" name="evImage" id="file" accept="image/gif, image/jpeg, image/png"  multiple="multiple">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label> 상세 이미지 선택 </label>
										<input type="file" class="btn btn-light" name="evImageDetail" id="file" accept="image/gif, image/jpeg, image/png"  multiple="multiple">
									</div>
								</div>
								
							<!-- 	<div class="col-md-6">
									<div class="form-group ">
										<label class="btn-file"> 상세 이미지 선택  
										<input type="file" class="btn btn-light" name="evImageDetail" id="file" accept="image/gif, image/jpeg, image/png"  multiple="multiple">
										</label>
									</div>
								</div> -->
					
						</div><!--fileUpload row end-->

							<div class="gap-40"></div>
							<h3 >행사 접수 기간</h3>
							<div class="row">
								
								<div class="col-md-6">
									<div class="form-group">
										<label> 접수 시작 </label> 
										<input class="form-control"	name="evBookStart" id="evBookStart" type="datetime-local">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label> 접수 종료 </label> 
										<input class="form-control" name="evBookEnd" id="evBookEnd" type="datetime-local">
									</div>
								</div>
							</div>
							
							
							<div class="gap-40"></div>
							<h3>행사 진행 기간</h3>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label> 행사 시작 </label> 
										<input class="form-control" name="evStart" id="evBookStart" type="datetime-local" required>
									</div>
								</div>

								
								<div class="col-md-6">
									<div class="form-group">
										<label> 행사 종료 </label> 
										<input class="form-control"	name="evEnd" id="evBookEnd" type="datetime-local" required>
									</div>
								</div>
							</div>
<!-- 							
							<div class="row">addr row

								<div class="col-md-3.5">
									<div class="form-group">
										<label for="postalcode">주소</label><br> <input type="text" id="postcode" name="postalCode" placeholder="우편번호"> 
										<input type="button" id="userAddrBtn" value="우편번호 찾기"><br>
									</div>
								</div>
							</div>
							addr row end -->
							
							
							<div class="form-group d-flex ">
								<div class="form-wrapper addPadding">
									<label for="postalcode">주소</label> <input type="text"
										class="form-control" id="postcode" name="postalCode"
										placeholder="우편번호" readonly>
								</div>
								<div class="form-wrapper addPaddingLeft">
									<button class="btn btn-info signBtn" id="userAddrBtn" type="button">우편번호
										찾기</button>
								</div>
							</div>
						<div class="form-group d-flex ">
							<div class="form-wrapper addPadding">
								<input type="text" class="form-control" id="roadAddress"
									name="reaodAddress" placeholder="도로명주소" readonly>
							</div>
							<div class="form-wrapper addPaddingLeft">
								<span id="guide" style="color: #999; display: none"></span> <input
									class="form-control" id="extraAddress" name="extraAddress"
									type="text" disabled>
							</div>
						</div>
					<div class="form-wrapper">
						<input class="form-control" id="detailAddress" name="detailAddress"
							placeholder="상세주소" type="text">
					</div>
							<div class="gap-40"></div>
							<h3>행사 담당자 연락처</h3>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label> 휴대폰 </label> 
										<input class="form-control" name="evPhone" id="name" placeholder="010-0000-0000" type="text" required>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label> 이메일 </label> 
										<input class="form-control"	name="evEmail" id="channel" type="text"
											placeholder="abcde@abcde.com" required>
									</div>
								</div>
							</div>
							
						<div class="row" style="margin-top:40px">
				           <div class="col s12">
				                <button type="submit" class="btn btn-info eventBtn">개설하기</button>
				           </div>
				        </div>	
	
						</form>
					</div>


<!-- 주의사항 start -->
	<div class="col-md-5">
		<div class="contact-info">
			<div class="pageTitle">
		    	<h3 class="createChTitle"> 주의사항</h3>
			</div>
			<ul class="chkList">
				<li>행사명은 한글 15자까지 입력</li>
				<li>이미지는, 상세이미지는 100 Mb 까지 업로드</li>
				<li>이미지는 jpg, png, gif 파일만 등록할 수 있습니다</li>
				<li>채널 설명은 한글 250자까지 입력</li>
				<li>접수기간 미입력 시 게시일 ~ 행사전일 로 설정됩니다</li>
				<li>할말이 더 있던가요</li>
			</ul>
			

		</div>
	</div><!-- 주의사항 end -->


							
							</p>

						</div>
					</div>
				</div>
			</div>
			<!--/ container end -->
		</section>
		<!--/ Main container end -->



<!-- footer.jsp -->
<c:import url="footer.jsp"/>


<!------------선택된파일보기-------------------->
<!-- <script>
$('.file-submit').on('change', function() {
  var selected = $('.file-submit')[0].files.length;
  var text = (selected) ? selected + ' 개 파일 선택됨' : '선택된 파일 없음';
  $(this).closest('.btn-wrapper').find('span').text(text);
  alert(text);
}); -->



</script>
</body>

</html>