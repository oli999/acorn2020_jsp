<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String email=request.getParameter("email");
	String phone=request.getParameter("phone");
	System.out.println(email+" | "+phone);
	//작업의 성공여부라고 가정하자 
	boolean result=true;
	//클라이언트에게 응답할 문자열이라고 가정하자
	String name="김구라";
%>
{"isSuccess":<%=result %>,"name":"<%=name %>"}