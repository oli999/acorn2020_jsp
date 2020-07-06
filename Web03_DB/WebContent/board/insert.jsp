<%@page import="test.board.dao.BoardDao"%>
<%@page import="test.board.dto.BoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//요청 인코딩 설정(한글 깨지지 않게)
	request.setCharacterEncoding("utf-8");
	//폼 전송 파리미터 읽어오기
	String writer=request.getParameter("writer");
	String title=request.getParameter("title");
	String content=request.getParameter("content");
	//작성자, 제목, 내용을 BoardDto 객체에 담는다.
	BoardDto dto=new BoardDto();
	dto.setWriter(writer);
	dto.setTitle(title);
	dto.setContent(content);
	//BoardDao 객체를 이용해서 DB 에 저장하고 성공 여부를 리턴 받는다
	boolean isSuccess=BoardDao.getInstance().insert(dto);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/board/insert.jsp</title>
</head>
<body>
	<h1>알림</h1>
	<%if(isSuccess){ %>
		<p> 
			<strong><%=writer %></strong> 님이 작성한 글이 저장되었습니다.
			<a href="list.jsp">확인</a> 
		</p>
	<%}else{ %>
		<p>
			글 저장이 실패 되었습니다. 
			<a href="insertform.jsp">다시 작성하기</a>
		</p>
	<%} %>
</body>
</html>




