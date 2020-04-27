<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<c:import url="header.jsp"></c:import>
<title>My Event :: ���� �Բ� �ϴ� ��� ����</title>

</head>
<body>
<body>
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