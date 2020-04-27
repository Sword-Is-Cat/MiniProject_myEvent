<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <c:import url="header.jsp"></c:import>
  <!-- <title>My Event :: 행사와 함께 하는 모든 순간</title> -->

</head>

<body>
	<div class="gap-50 p-3">
	<div class="row justify-content-center p-3">
		<caption>공지사항 등록</caption>
	</div>
		<div class="row justify-content-center">
			
			<div class="col-md-6">
				<form id="contact-form" action="front?key=insertNotice" method="post" role="form">
					<div class="row">
						<div class="col-md-12">
							<div class="form-group">
								<label>제목</label>
								<input class="form-control" name="subject" id="subject" placeholder="" required>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label>내용</label>
						<textarea class="form-control" name="message" id="message" placeholder="" rows="10" required></textarea>
					</div>
					<div class="text-center"><br>
						<button class="btn btn-primary solid blank" type="submit">등록하기</button>
					</div>
				</form>
			</div>

		</div>
	</div>
	</div>
	<!--/ container end -->
</section>
<!--/ Main container end -->


</div><!-- Body inner end -->

<!-- footer -->
<c:import url="footer.jsp"></c:import>
</body>

</html>