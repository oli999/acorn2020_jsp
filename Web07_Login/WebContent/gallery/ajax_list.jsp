<%@page import="test.gallery.dao.GalleryDao"%>
<%@page import="test.gallery.dto.GalleryDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//한 페이지에 나타낼 row 의 갯수
	final int PAGE_ROW_COUNT=5;
	
	//ajax 요청 파라미터로 전달되는 추가로 보여줄 페이지의 번호
	int pageNum=Integer.parseInt(request.getParameter("pageNum"));
	
	//보여줄 페이지 데이터의 시작 ResultSet row 번호
	int startRowNum=1+(pageNum-1)*PAGE_ROW_COUNT;
	//보여줄 페이지 데이터의 끝 ResultSet row 번호
	int endRowNum=pageNum*PAGE_ROW_COUNT;
	
	//전체 row 의 갯수를 읽어온다.
	int totalRow=GalleryDao.getInstance().getCount();
	//전체 페이지의 갯수 구하기
	int totalPageCount=
			(int)Math.ceil(totalRow/(double)PAGE_ROW_COUNT);
	
	// GalleryDto 객체에 위에서 계산된 startRowNum 과 endRowNum 을 담는다.
	GalleryDto dto=new GalleryDto();
	dto.setStartRowNum(startRowNum);
	dto.setEndRowNum(endRowNum);
	
	//1. DB 에서 글 목록을 얻어온다.
	List<GalleryDto> list=GalleryDao.getInstance().getList(dto);
	//2. 글 목록을 응답한다.
%>
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




