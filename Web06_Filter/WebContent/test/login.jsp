<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 폼 전송되는 아이디 비밀번호를 읽어온다.
	String id=request.getParameter("id");
	String pwd=request.getParameter("pwd");
	//2. DB 에서 해당 회원정보가 있는지 select 를 해본다.
	boolean isValid=false; //유효한 정보인지 여부
	if(id.equals("gura") && pwd.equals("1234")){//가상의 유효한 정보라고 가정
		isValid=true;
		//로그인 했다는 의미에서 세션 영역에 id 라는 키값으로 아이디를 담는다. 
		session.setAttribute("id", id);
	}
	//3. 회원정보가 맞으면 로그인 처리후 응답 틀리면 로그인 실패라고 응답
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/login.jsp</title>
</head>
<body>
<%if(isValid){ %>
	<p> <%=id %> 님 로그인 되었습니다. <a href="../index.jsp">확인</a></p>
<%}else{ %>
	<p> 아이디 혹은 비밀번호가 틀려요 <a href="../index.jsp">다시 시도</a></p>
<%} %>
</body>
</html>











