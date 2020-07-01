<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>time.jsp</title>
</head>
<body>
	<%
		Date d=new Date();
		String now=d.toString();
	%>
	<p>현재시간: <%out.print(now); %></p>
	<p>현재시간: <%=now %></p>
</body>
</html>




