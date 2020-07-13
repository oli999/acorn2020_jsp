<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//요청 파라미터 추출하기
	String num=request.getParameter("num");
	String name=request.getParameter("name");
	System.out.println(num+"|"+name);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/ajax/getmsg.jsp</title>
</head>
<body>
	<p>안녕 클라이언트야~</p>
</body>
</html>