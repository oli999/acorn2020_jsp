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
	<ul>
		<li><a href="fortune">오늘의 운세</a></li>
		<li><a href="member">회원의 한명의 정보보기</a></li>
		<li><a href="test/play.jsp">놀러가기</a></li>
	</ul>
	<form action="test/save.jsp" method="post">
		<input type="text" name="nick" placeholder="닉네임 입력..."/>
		<button type="submit">닉네임 기억 시키기</button>
	</form>
	<a href="test/delete.jsp">닉네임 삭제하기</a>
</body>
</html>






