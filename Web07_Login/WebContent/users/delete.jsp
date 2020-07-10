<%@page import="test.users.dao.UsersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 탈퇴할 회원의 아이디를 읽어온다. 
	String id=(String)session.getAttribute("id");
	//2. DB 에서 삭제한다.
	UsersDao.getInstance().delete(id);
	//3. 로그아웃 처리를 한다.
	session.invalidate();
	//4. 응답한다.
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/delete.jsp</title>
</head>
<body>
<div class="container">
	<p>
		<strong><%=id %></strong> 님 탈퇴 처리 되었습니다. 
		<a href="${pageContext.request.contextPath }/index.jsp">확인</a>
	</p>
</div>
</body>
</html>





