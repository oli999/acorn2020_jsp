<%@page import="test.member.dto.MemberDto"%>
<%@page import="test.member.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. GET 방식 파리미터로 전달되는 수정할 회원의 번호를 읽어온다.
	int num=Integer.parseInt(request.getParameter("num"));
	//2. DB 에서 해당회원 한명의 정보를 읽어온다.
	MemberDao dao=MemberDao.getInstance();
	MemberDto dto=dao.getData(num);
	//3. 읽어온 회원한명의 정보를 form 에 출력해서 응답한다. 
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/updateform.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
</head>
<body>
<div class="navbar navbar-expand-sm navbar-dark bg-primary">
	<a class="navbar-brand" href="${pageContext.request.contextPath }/">Acorn</a>

	<ul class="navbar-nav">
		<li class="nav-item"><a class="nav-link active" href="${pageContext.request.contextPath }/member/list.jsp">Member</a></li>
		<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/todo/list.jsp">Todo</a></li>
	</ul>

</div>
<div class="container">
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="../index.jsp">Home</a></li>
		<li class="breadcrumb-item"><a href="list.jsp">회원목록</a></li>
		<li class="breadcrumb-item active">수정양식</li>
	</ol>
	<h1>회원정보 수정 폼 입니다.</h1>
	<form action="update.jsp" method="post">
		<%-- form 을 제출했을때 회원의 번호가 전송되도록 input type="hidden" 
		에 회원 번호를 출력해 놓는다. --%>
		<input type="hidden" name="num" value="<%=dto.getNum() %>"/>
		<div class="form-group">
			<label for="num">번호</label>
			<!-- disabled 속성이 추가된 input 요소는 수정이 불가하고 form 을
			제출했을때 전송도 되지 않는다 -->
			<input class="form-control" type="text" id="num" value="<%=dto.getNum()%>" disabled/>
		</div>
		<div class="form-group">
			<label for="name">이름</label>
			<input class="form-control" type="text" name="name" id="name" value="<%=dto.getName() %>"/>
		</div>
		<div class="form-group">
			<label for="addr">주소</label>
			<input class="form-control" type="text" name="addr" id="addr" value="<%=dto.getAddr() %>"/>
		</div>
		<button class="btn btn-outline-primary btn-sm" type="submit">수정</button>
		<button class="btn btn-outline-warning btn-sm" type="reset">취소</button>
	</form>
</div>
</body>
</html>





