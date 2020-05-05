<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@page import="kosta.mvc.model.dao.FavoriteEvDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

</style>
<script>

</script>
</head>
<body>
<%
FavoriteEvDAO favEvDAO = new FavoriteEvDAO();
Set<Integer> set = new HashSet();
set.add(1);
set.add(5);
set.add(6);
favEvDAO.selectEventByEventNumbers(set);
%>
</body>
</html>