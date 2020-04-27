<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <c:import url="header.jsp"></c:import>
  <!-- <title>My Event :: ���� �Բ� �ϴ� ��� ����</title> -->

</head>

<body>
	<div class="gap-50 p-3">
	<div class="row justify-content-center p-3">
		<caption>�������� ���</caption>
	</div>
		<div class="row justify-content-center">
			
			<div class="col-md-6">
				<form id="contact-form" action="front?key=insertNotice" method="post" role="form">
					<div class="row">
						<div class="col-md-12">
							<div class="form-group">
								<label>����</label>
								<input class="form-control" name="subject" id="subject" placeholder="" required>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label>����</label>
						<textarea class="form-control" name="message" id="message" placeholder="" rows="10" required></textarea>
					</div>
					<div class="text-center"><br>
						<button class="btn btn-primary solid blank" type="submit">����ϱ�</button>
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