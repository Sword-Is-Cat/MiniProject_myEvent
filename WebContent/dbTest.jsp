<%@page import="kosta.mvc.model.dao.ChannelDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="kosta.mvc.util.DbUtil"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>
 1. ���� test: <%=DbUtil.getConnection() %>
 2. ä�ΰ˻�: 
 	<%
 	ChannelDAO dao = new ChannelDAO();
 	out.print(dao.selectAllChannel());
	%>
</body>
</html>