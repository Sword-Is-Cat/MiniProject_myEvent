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
 1. ���� test: <%=DbUtil.getConnection() %><br>
 2. ä�ΰ˻�: 
<%--  	<%
 	ChannelDAO dao = new ChannelDAO();
 	out.print(dao.selectAllChannel());
	%> --%>
	<%ChannelDAO dao = new ChannelDAO();
	out.print(dao.selectAllChannel());%><br>
3. ä�μ���
<%--  	<%
		User user = new User();
		user.setUserNo(1);
		Channel c = new Channel(16, user, "�����ǳ�", null, 1, "����");
		try{
			dao.updateChannel(c);
			out.print("��������");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	%> --%>
<br>
4. ä�λ���
 	<%
		try{
			dao.deleteChannel(16);
			out.print("��������");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	%> 
</body>
</html>