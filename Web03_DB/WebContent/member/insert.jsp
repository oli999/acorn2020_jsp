<%@page import="test.member.dao.MemberDao"%>
<%@page import="test.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 폼 전송되는 이름과, 주소를 읽어온다.
	request.setCharacterEncoding("utf-8");
	// input name="name" 여기에 입력한 이름 
	String name=request.getParameter("name");
	// input name="addr" 여기에 입력한 주소 
	String addr=request.getParameter("addr");
	//2. MemberDao 객체를 이용해서 DB 에 저장한다.
	//추가할 회원 정보를 MemberDto 객체에 담는다.
	MemberDto dto=new MemberDto();
	dto.setName(name);
	dto.setAddr(addr);
	MemberDao dao=MemberDao.getInstance();
	dao.insert(dto);
	//3. 응답한다.
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/insert.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
</head>
<body>
<div class="container">
	<h1>알림</h1>
	<p class="alert alert-success"> 
		<strong><%=dto.getName() %></strong> 회원의 정보가 추가 되었습니다.
		<a class="alert-link" href="list.jsp">확인</a>
	</p>
</div>	
</body>
</html>







