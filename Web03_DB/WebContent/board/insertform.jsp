<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/board/insertform.jsp</title>
</head>
<body>
	<h1>새글 작성 폼 입니다.</h1>
	<form action="insert.jsp" method="post">
		<label for="writer">작성자</label>
		<input type="text" name="writer" id="writer"/> <br/>
		<label for="title">제목</label>
		<input type="text" name="title" id="title"/> <br/>
		<label for="content">내용</label> <br/>
		<textarea name="content" id="content" cols="20" rows="5"></textarea> <br/>
		<input type="submit" value="등록"/>
		<input type="reset" value="취소"/>
	</form>
</body>
</html>







