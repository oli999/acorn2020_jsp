<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test4/main.jsp</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	<%
		//header.jsp 페이지와 별개의 main.jsp 페이지이기 때문에
		//서로 coding 내용에 영향을 받지 않는다. 
		String name="해골";
	%>
	<h1>main.jsp 페이지 입니다. <strong><%=name %></strong></h1>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod quidem minus possimus illo hic. Rem quasi illo quaerat voluptatem ullam laboriosam impedit qui numquam iure quisquam facilis quod tempora assumenda!</p>
	<a href="other.jsp">다른 페이지</a>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>



