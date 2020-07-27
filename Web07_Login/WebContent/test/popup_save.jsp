<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/popup_save.jsp</title>
</head>
<body>
<%
	//"no" 혹은 null 이다 
	String canPopup=request.getParameter("canPopup");
	//만일 팝업을 띄우지 않겠다고 체크박스를 체크를 했다면
	if(canPopup != null){
		//canPopup 이라는 키값으로 no 라는 문자열을 담고 (no라는 문자열을 사용하지는 않는다.)
		Cookie cook=new Cookie("canPopup", canPopup);
		//쿠키 유지 시간을 초단위로 담고 
		cook.setMaxAge(60);
		//쿠키가 응답될수 있도록 HttpServletResponse 객체에 담는다. 
		response.addCookie(cook);
	}
%>
<script>
	//창이 닫아지도록 한다
	self.close();
</script>
</body>
</html>









