<%@page import="kosta.mvc.vo.User"%>
<%@page import="kosta.mvc.vo.Channel"%>
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
 1. 연결 test: <%=DbUtil.getConnection() %><br>
 2. 채널검색: 
<%--  	<%
 	ChannelDAO dao = new ChannelDAO();
 	out.print(dao.selectAllChannel());
	%> --%>
	<%ChannelDAO dao = new ChannelDAO();
	out.print(dao.selectAllChannel());%><br>
3. 채널수정
<%--  	<%
		User user = new User();
		user.setUserNo(1);
		Channel c = new Channel(16, user, "수정되나", null, 1, "수정");
		try{
			dao.updateChannel(c);
			out.print("수정성공");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	%> --%>
<br>
4. 채널삭제
 	<%
		try{
			dao.deleteChannel(16);
			out.print("삭제성공");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	%> 
</body>
</html>