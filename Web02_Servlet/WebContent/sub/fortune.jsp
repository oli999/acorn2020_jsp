<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/sub/fortune.jsp</title>
</head>
<body>
<%
	//sample  운세 5개를 미리 배열에 준비하기
	String[] fortunes= {"동쪽으로 가면 귀인을 만나요",
				"로또가 당첨 될꺼에요","세엣","네엣","다섯"};
	//Random 객체
	Random ran=new Random();
	// 0~4  사이의 렌덤한 정수 얻어내기 
	int ranNum=ran.nextInt(5);
%>
<p>오늘의 운세 : <%=fortunes[ranNum] %></p>
</body>
</html>



