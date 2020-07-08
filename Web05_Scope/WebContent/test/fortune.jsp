<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/fortune.jsp</title>
</head>
<body>
<%
	// FortuneServlet 에서 "fortuneToday" 라는 키값으로 담은 String type 얻어오기
	String fortuneToday=(String)request.getAttribute("fortuneToday");
%>
<p> 오늘의 운세 : <strong><%=fortuneToday %></strong></p>
</body>
</html>





