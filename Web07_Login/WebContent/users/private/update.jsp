<%@page import="test.users.dao.UsersDao"%>
<%@page import="test.users.dto.UsersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id=(String)session.getAttribute("id");
	//수정할 이메일 주소
	String email=request.getParameter("email");
	//수정할 프로파일
	String profile=request.getParameter("profile");
	if(profile.equals("null")){//프로필 이미지를 수정하지 않으면 
		profile=null;
	}
	
	//수정할 정보를 UsersDto 객체에 담고 
	UsersDto dto=new UsersDto();
	dto.setId(id);
	dto.setEmail(email);
	dto.setProfile(profile);
	//UsersDao 객체를 이용해서 수정 반영한다.
	UsersDao.getInstance().update(dto);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/private/update.jsp</title>
</head>
<body>
	<script>
		alert("수정 했습니다.");
		location.href="${pageContext.request.contextPath }/users/private/info.jsp";
	</script>
</body>
</html>


