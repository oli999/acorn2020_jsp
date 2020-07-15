<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. GET 방식 파라미터로 전달되는 다운로드 시켜줄 파일의 번호를 읽어온다.
	int num=Integer.parseInt(request.getParameter("num"));
	//2. DB 에서 해당 파일의 정보를 select 해 온다.
	
	//3. 해당 파일을 실제로 다운로드 시켜준다(응답)
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/file/download.jsp</title>
</head>
<body>

</body>
</html>