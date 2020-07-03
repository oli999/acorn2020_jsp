<%@page import="test.todo.dto.TodoDto"%>
<%@page import="java.util.List"%>
<%@page import="test.todo.dao.TodoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//TodoDao 객체의 참조값 얻어오기 
	TodoDao dao=TodoDao.getInstance();
	//DB 에서 할일 목록을 얻어온다.
	List<TodoDto> list=dao.getList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/todo/list.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
</head>
<body>
<div class="container">
	<div class="navbar navbar-expand-sm navbar-dark bg-primary">
		<a class="navbar-brand" href="${pageContext.request.contextPath }/">Acorn</a>

		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/member/list.jsp">Member</a></li>
			<li class="nav-item"><a class="nav-link active" href="${pageContext.request.contextPath }/todo/list.jsp">Todo</a></li>
		</ul>

	</div>
	<h1>할일 목록 입니다.</h1>
	<form action="insert.jsp" method="post">
		<div class="form-row mb-2">
			<div class="col">
				<input type="text" class="form-control" name="content"/>
			</div>
			<div class="col">
				<button class="btn btn-primary" type="submit">추가</button>
			</div>
		</div>
	</form>
	<table class="table table-hover table-sm">
		<thead class="thead-dark">
			<tr class="d-flex">
				<th class="col-2">번호</th>
				<th class="col-5">내용</th>
				<th class="col-3">등록일</th>
				<th class="col-2">삭제</th>
			</tr>
		</thead>
		<tbody>
		<%for(TodoDto tmp:list){ %>
			<tr class="d-flex">
				<td class="col-2"><%=tmp.getNum() %></td>
				<td class="col-5"><%=tmp.getContent() %></td>
				<td class="col-3"><%=tmp.getRegdate() %></td>
				<td class="col-2"><a href="delete.jsp?num=<%=tmp.getNum() %>">삭제</a></td>
			</tr>
		<%} %>
		</tbody>
	</table>
</div>
</body>
</html>







