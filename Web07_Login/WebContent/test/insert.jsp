<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/insert.jsp</title>
<style>
	#content{
		width: 768px;
		border: 1px dotted #cecece;
		box-shadow: 3px 3px 5px 6px #ccc;
	}
</style>
</head>
<body>
<%
	String title=request.getParameter("title");
	String content=request.getParameter("content");
	System.out.println(content);
%>
<p><%=title %></p>
<div id="content"><%=content %></div>
</body>
</html>




