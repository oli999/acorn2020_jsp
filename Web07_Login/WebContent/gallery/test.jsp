<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/gallery/test.jsp</title>
</head>
<body>
<h1>이미지 파일 업로드 테스트</h1>
<form action="test_upload.jsp" method="post" enctype="multipart/form-data">
	<input type="text" name="title" placeholder="설명 입력..."/><br/>
	<input type="file" name="image" 
		accept=".jpg, .jpeg, .png, .JPG, .JPEG"/><br/>
	<button type="submit">업로드</button>
</form>
</body>
</html>





