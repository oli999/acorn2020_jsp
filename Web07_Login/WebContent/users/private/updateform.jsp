<%@page import="test.users.dao.UsersDao"%>
<%@page import="test.users.dto.UsersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//세션에 저장된 아이디
	String id=(String)session.getAttribute("id");
	//수정할 회원의 정보를 읽어온다.
	UsersDto dto=UsersDao.getInstance().getData(id);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/private/updateform.jsp</title>
<style>
	/* 프로필 업로드 폼을 화면에서 숨긴다. */
	#profileForm{
		display:none;
	}
	/* 이미지를 작은 원형으로 만든다. */
	#profileImage{
		width: 50px;
		height: 50px;
		border: 1px solid #cecece;
		border-radius: 50%;
		cursor: pointer;
	}
</style>
</head>
<body>
<div class="container">
	<h1>회원정보 수정 폼 입니다.</h1>
	<%if(dto.getProfile()==null){ %>
		<a id="profileLink" href="javascript:"><img id="profileImage" src="${pageContext.request.contextPath }/images/yellowbird.png"/></a>
	<%}else{ %>
		<a id="profileLink" href="javascript:"><img id="profileImage" src="${pageContext.request.contextPath }<%=dto.getProfile()%>"/></a>
	<%} %>
	<form action="update.jsp" method="post">
		<input type="hidden" name="profile" id="profile" 
				value="<%=dto.getProfile()%>"/>
		<div class="form-group">
			<label for="id">아이디</label>
			<input type="text" id="id" value="<%=dto.getId()%>" disabled/>
		</div>
		<div class="form-group">
			<label for="email">이메일</label>
			<input type="text" id="email" name="email" value="<%=dto.getEmail() %>" />
		</div>
		<button type="submit">수정확인</button>
		<button type="reset">취소</button>
	</form>
	
	<form action="profile_upload.jsp" method="post" 
		enctype="multipart/form-data" id="profileForm">
		<input type="file" name="image" 
			accept=".jpg, .jpeg, .png, .JPG, .JPEG" id="image"/>
	</form>
</div>
<script src="${pageContext.request.contextPath }/js/jquery-3.5.1.js"></script>
<script src="${pageContext.request.contextPath }/js/jquery.form.min.js"></script>
<script>
	//프로필 링크를 클릭했을때 실행할 함수 등록 
	$("#profileLink").on("click", function(){
		//input type="file" 을 강제 클릭한다.
		$("#image").click();
	});
	
	//이미지를 선택했을때 실행할 함수 등록
	$("#image").on("change", function(){
		//폼을 강제 제출한다.
		$("#profileForm").submit();
	});
	
	//폼이 ajax 로 제출될수 있도록 플러그인을 동작 시킨다.
	$("#profileForm").ajaxForm(function(data){
		//프로필 이미지를 업데이트 한다. data => {imageSrc:"/upload/xxx.jpg"}
		$("#profileImage")
		.attr("src","${pageContext.request.contextPath }"+data.imageSrc);
		//회원정보 수정폼 전송될때 같이 전송 되도록한다.
		$("#profile").val(data.imageSrc);// input type="hidden" 의 value값
	});
</script>
</body>
</html>







