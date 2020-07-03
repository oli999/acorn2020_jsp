<%@page import="test.member.dao.MemberDao"%>
<%@page import="test.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. form 전송되는 수정할 회원의 정보를 읽어온다.
	//한글 깨지지 않도록
	request.setCharacterEncoding("utf-8");
	int num=Integer.parseInt(request.getParameter("num"));
 	String name=request.getParameter("name");
 	String addr=request.getParameter("addr");
	//2. DB 에 수정 반영한다.
	MemberDto dto=new MemberDto(num, name, addr);
	//수정반영하고 성공여부를 boolean type 으로 리턴 받는다. 
	boolean isSuccess=MemberDao.getInstance().update(dto);
	//3. 응답한다.
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/update.jsp</title>
</head>
<body>
	<%if(isSuccess){ %>
		<script>
			alert("<%=dto.getNum() %>  번 회원의 정보를 수정했습니다.");
			location.href="list.jsp";
		</script>
	<%}else{ %>
		<script>
			alert("수정 실패!");
			location.href="updateform.jsp?num=<%=dto.getNum() %>";
		</script>
	<%} %>
</body>
</html>






