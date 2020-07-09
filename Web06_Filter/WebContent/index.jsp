<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
</head>
<body>
	<h1>인덱스 페이지 입니다.</h1>
	<form action="test/insert.jsp" method="post">
		<input type="text" name="msg" placeholder="서버에 할말 입력..."/>
		<button type="submit">전송</button>
	</form>
	<%
		//로그인된 아이디 읽어오기
		String id=(String)session.getAttribute("id");
	%>
	
	<h3>가상의 로그인 폼</h3>
	<form action="test/login.jsp" method="post">
		<input type="text" name="id" placeholder="아이디..."/>
		<input type="password" name="pwd" placeholder="비밀번호..."/>
		<button type="submit">로그인</button>
	</form>
	
	<p> <strong><%=id %></strong>님 로그인중...</p>
</body>
</html>








