<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������ ���</title>
<style>
	table{
		width: 70%;
		margin-left:15%
	}
	thead {
		background-color: rgb(240, 237, 250);
		color:rgb(92, 98, 208);
		text-align: center;
		font-weight: bold;
	}
}
</style>
<link href="css/style.css" rel="stylesheet">
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
		<!-- interest event top -->
		<div class="row">
			<div class="col-md-12 heading text-center">
				<h2 class="title2" style="text-align: center; font-weight: bold;">������ ���
				<span class="title-desc">����̸�</span>
				</h2>
			</div>
		</div><!-- Title row end -->
<hr>
<table id="table" class="table">
	<thead>
		<td>�̸�</td>
		<td>ID</td>
		<td>����ó</td>
		<td>��������</td>
		<td>����</td>
	</thead>
	<tbody>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
	</tbody>
</table>

<!-- footer -->
<c:import url="footer.jsp"></c:import>
</body>
</html>