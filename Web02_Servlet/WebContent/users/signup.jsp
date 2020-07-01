<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//전송되는 문자열에 한글이 있다면 깨지지 않도록
	request.setCharacterEncoding("utf-8");
	
	// input type="text" name="id" 에 입력한 문자열
	String id=request.getParameter("id");
	// input type="password" name="pwd" 에 입력한 문자열
	String pwd=request.getParameter("pwd");
	// input type="radio" name="gender" 에 선택한 value
	String gender=request.getParameter("gender"); //man or woman
	// select name="job" 에 선택된 option 의 value 
	// select 된게 없으면 빈문자열 "" 이 리턴된다.
	String job=request.getParameter("job"); // doctor or programmer or etc
	// input type="checkbox" name="like" 에 체크된 value 목록
	// check  된게 없으면 null 이 리턴된다.
	String[] like=request.getParameterValues("like");
	// textarea name="comment" 에 입력한 문자열
	String comment=request.getParameter("comment");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/signup.jsp</title>
</head>
<body>
	<p> 아이디 : <%=id %></p>
	<p> 비밀번호 : <%=pwd %></p>
	<p> 성별 : <%=gender %></p>
	<p> 직업 : <%=job %></p>
	<p> 관심사 </p>
	<ul>
		<%for(String tmp:like){ %>
			<li><%=tmp %></li>
		<%} %>
	</ul>
	<p> 하고 싶은말 :  <%=comment %></p>
	<a href="signup_form.jsp">다시 입력해보기</a>
</body>
</html>






