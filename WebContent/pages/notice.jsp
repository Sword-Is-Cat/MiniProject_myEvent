<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.css">
<link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css">
</head>
<body>
<body>
<h3>��������</h3>
	<table class="table table-hover">
		<thead>
			<tr>
				<th>��ȣ</th>
				<th>����</th>
				<th>��¥</th>
				<th>����</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}"  var="notice" varStatus="state">
			<tr class="accordion-toggle" data-toggle="collapse" data-target="#no${notice.no}" >
				<td>${notice.no}</td>
				<td>${notice.title}</td>
				<td>${notice.date}</td>
				<td><input type="button" value="����"/></td>
				
			</tr>
			<tr class="accordion-body collapse" id="no5">
				<td></td>
				<td >${notice.contents}</td>
				<td></td>
				<td></td>
			</tr>
        	</c:forEach>
        
        
			<!-- <tr class="accordion-toggle" data-toggle="collapse" data-target="#no4">
				<td>4</td>
				<td>sssssssssss</td>
				<td></td>
			</tr>
			<tr class="accordion-body collapse" id="no4">
				<td></td>
				<td >���볻�볻��22	</td>
				<td></td>
			</tr>
 -->
		</tbody>
		
	</table>
	
<!-- jQuery -->
<script src="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.js"></script>
<script src="plugins/jQuery/jquery.min.js"></script>
<!-- Bootstrap JS -->
<script src="plugins/bootstrap/bootstrap.min.js"></script>
</body>
</html>