<%@page import="test.file.dao.FileDao"%>
<%@page import="java.util.List"%>
<%@page import="test.file.dto.FileDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/file/list.jsp</title>
</head>
<body>
<% 
	//파일 목록
	List<FileDto> list=FileDao.getInstance().getList();
	//로그인 된 아이디 읽어오기 (로그인을 하지 않으면 null 이다)
	String id=(String)session.getAttribute("id");
%>
<div class="container">
	<h1>파일 목록입니다.</h1>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>작성자</th>
				<th>제목</th>
				<th>파일명</th>
				<th>파일크기</th>
				<th>등록일</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
		<%for(FileDto tmp:list){%>
			<tr>
				<td><%=tmp.getNum() %></td>
				<td><%=tmp.getWriter() %></td>
				<td><%=tmp.getTitle() %></td>
				<td><a href="download.jsp?num=<%=tmp.getNum() %>"><%=tmp.getOrgFileName() %></a></td>
				<td><%=tmp.getFileSize() %></td>
				<td><%=tmp.getRegdate() %></td>
				<td>
					<%if(tmp.getWriter().equals(id)){ %>
						<a href="private/delete.jsp?num=<%=tmp.getNum() %>">삭제</a>
					<%} %>
				</td>
			</tr>
		<%} %>
		</tbody>
	</table>
	<a href="private/upload_form.jsp">파일 업로드</a>
</div>
</body>
</html>






