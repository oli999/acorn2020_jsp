<%@page import="test.member.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 삭제할 회원의 번호를 읽어온다.   delete.jsp?num=삭제할번호
	int num=Integer.parseInt(request.getParameter("num"));
	//2. MemberDao  객체를 이용해서 삭제 
	MemberDao.getInstance().delete(num);
	//3. 응답 
	//리다일렉트 이동시키기 위해 context path 를 먼저 읽어온다.
	String cPath=request.getContextPath();
	//회원 목록보기 요청을 하도록 강요 하는 응답을 한다. (리다일렉트 이동 시키기)	
	response.sendRedirect(cPath+"/member/list.jsp");
%>
