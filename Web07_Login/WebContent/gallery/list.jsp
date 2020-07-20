<%@page import="test.gallery.dao.GalleryDao"%>
<%@page import="test.gallery.dto.GalleryDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/gallery/list.jsp</title>
</head>
<body>
<%
	List<GalleryDto> list=GalleryDao.getInstance().getList();
%>
<div class="container">
	<a href="private/upload_form.jsp">업로드 하러 가기</a>
	<h1>겔러리 목록 입니다.</h1>
	<%for(GalleryDto tmp:list) {%>
		<div class="wrapper">
			<img src="${pageContext.request.contextPath }<%=tmp.getImagePath() %>"/>
			<p><%=tmp.getCaption() %></p>
			<p>
				<strong><%=tmp.getWriter() %></strong>
				<i><%=tmp.getRegdate() %></i>
			</p>
		</div>
	<%} %>
</div>
</body>
</html>






