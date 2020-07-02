<%@page import="test.todo.dao.TodoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 1. 폼 전송되는 할일을 읽어온다.
	request.setCharacterEncoding("utf-8");
	String content=request.getParameter("content");
	// 2. DB 에 저장한다.
	TodoDao dao=TodoDao.getInstance();
	dao.insert(content);
	// 3. 클라이언트 웹브라우저에 응답한다.
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/todo/insert.jsp</title>
</head>
<body>
	<p>할일을 추가 했습니다. <a href="list.jsp">확인 해볼래?</a></p>
</body>
</html>

