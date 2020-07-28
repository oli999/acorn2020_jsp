<%@page import="test.cafe.dto.CafeDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String myName="김구라";
	//page scope  에  "myName" 이라는 키값으로 myName 담기
	//page scope 에 담은 값은 해당 페이지(jsp) 내에서만 사용할수 있다.
	pageContext.setAttribute("myName", myName);
	
	String yourName="해골";
	/*	
		request scope 에 "yourName" 이라는 키값으로 yourName 담기
		request scope 에 담은 값은 응답하기 전까지 사용할수 있다.
		(다른 페이지로 forward 이동해도 사용할수 있다)
		(다른 페이지로 redirect 이동하면 사용할수 없다)
	*/
	request.setAttribute("yourName", yourName);
	
	String ourName="원숭이";
	/*
		session scope 에  "ourName" 이라는 키값으로 ourName 담기
		session scope 에 담은 값은 세션이 유지 되는 동안 사용할수 있다.
		(다른 페이지로 forward, redirect 이동 해도 사용할수 있다)
		(웹브라우저를 닫거나 세션을 초기화 하기 전까지 사용할수 있다)
	*/
	session.setAttribute("ourName", ourName);
	
	String companyName="에이콘";
	/*
		application scope 에 "companyName" 이라는 키값으로 companyName 담기
		application scope 에 담은 내용은 서버를 끄기 전까지 사용할수 있다.
		(웹브라우저를 닫아도 지워지지 않는다)
	*/
	application.setAttribute("companyName", companyName);
	
	CafeDto dto=new CafeDto();
	dto.setNum(1);
	dto.setTitle("원숭아!");
	dto.setContent("놀자~~");
	/*
		request 영역에 "dto" 라는 키값으로 CafeDto type 인   dto 담기
	*/
	request.setAttribute("dto", dto);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/el_test2.jsp</title>
</head>
<body>
	<h1>EL 로 page scope 에 저장된 값 추출</h1>
	<p>내 이름은 <strong>${pageScope.myName }</strong></p>
	<p>내 이름은 <strong>${myName }</strong></p>
	
	<h1>EL 로 request scope 에 저장된 값 추출</h1>
	<p>너의 이름은 <strong>${requestScope.yourName }</strong></p>
	<p>너의 이름은 <strong>${yourName }</strong></p>
	
	<h1>EL 로 session scope  에 저장된 값 추출</h1>
	<p>우리 이름은 <strong>${sessionScope.ourName }</strong></p>
	<p>우리 이름은 <strong>${ourName }</strong></p>
	
	<h1>EL 로 application scope 에 저장된 값 추출</h1>
	<p>학원 이름은 <strong>${applicationScope.companyName }</strong></p>
	<p>학원 이름은 <strong>${companyName }</strong></p>
	
	<h1>EL request scope 에 담긴 dto 의 값 추출</h1>
	<p>번호 : ${requestScope.dto.getNum() }</p>
	<p>번호 : ${dto.getNum() }</p>
	<p>번호 : ${dto.num }</p>
	
	<p>제목 : ${requestScope.dto.getTitle() }</p>
	<p>제목 : ${dto.getTitle() }</p>
	<p>제목 : ${dto.title }</p>
	
	<p>내용 : ${requestScope.dto.getContent() }</p>
	<p>내용 : ${dto.getContent() }</p>
	<p>내용 : ${dto.content }</p>
	<%-- 만일 EL 을 사용하지 않는다면 아래와 같은 작업이 필요하다 --%>
	<% CafeDto dto2=(CafeDto)request.getAttribute("dto");%>
	<p> 내용 : <%=dto2.getContent() %></p>
	
	<a href="el_test3.jsp?num=1&name=kimgura">다음 예제</a>
</body>
</html>






