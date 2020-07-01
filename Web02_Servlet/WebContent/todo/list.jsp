<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/todo/list.jsp</title>
</head>
<body>
<%
	//DB 에서 읽어온 할일 목록이라고 가정하자
	List<String> list=new ArrayList<String>();
	list.add("html 공부하기");
	list.add("css 공부하기");
	list.add("javascript 공부하기");
%>
	<h1>오늘 할일</h1>
	<ul>
	<%for(int i=0;i<list.size(); i++){ %>
		<li><%=list.get(i) %></li>
	<%} %>
	<%for(String tmp:list){ %>
		<li><%=tmp %></li>
	<%} %>
	</ul>
</body>
</html>






