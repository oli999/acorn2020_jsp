<%@page import="test.users.dao.UsersDao"%>
<%@page import="test.users.dto.UsersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//세션에 저장된 아이디
	String id=(String)session.getAttribute("id");
	//수정할 회원의 정보를 읽어온다.
	UsersDto dto=UsersDao.getInstance().getData(id);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/private/updateform.jsp</title>
</head>
<body>
<div class="container">
	<h1>회원정보 수정 폼 입니다.</h1>
	<form action="update.jsp" method="post">
		<div class="form-group">
			<label for="id">아이디</label>
			<input type="text" id="id" value="<%=dto.getId()%>" disabled/>
		</div>
		<div class="form-group">
			<label for="email">이메일</label>
			<input type="text" id="email" name="email" value="<%=dto.getEmail() %>" />
		</div>
		<button type="submit">수정확인</button>
		<button type="reset">취소</button>
	</form>
</div>
</body>
</html>







