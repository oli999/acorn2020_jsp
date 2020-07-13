<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/loginform.jsp</title>
</head>
<body>
<%
	// url 파라미터가 넘어오는지 읽어와 보기 
	String url=request.getParameter("url");
	if(url==null){//목적지 정보가 없다면
		String cPath=request.getContextPath();
		url=cPath+"/index.jsp"; //로그인후 인덱스 페이지로 가도록 하기 위해 
	}
%>
<div class="container">
	<h1>로그인 폼</h1>
	<form action="login.jsp" method="post">
		<%-- 원래 가려던 목적지 정보를 url 이라는 파라미터 명으로 가지고 간다 --%>
		<input type="hidden" name="url" value="<%=url %>" />
		<div class="form-group">
			<label for="id">아이디</label>
			<input type="text" name="id" id="id"/>
		</div>
		<div class="form-group">
			<label for="pwd">비밀번호</label>
			<input type="password" name="pwd" id="pwd" />
		</div>
		<button type="submit">로그인</button>
	</form>
</div>
</body>
</html>





