<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/buy.jsp</title>
</head>
<body>
<%
	String code=request.getParameter("code");
%>
<p> <strong><%=code %></strong> 번 상품을 주문 했습니다.</p>
</body>
</html>




