<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/insertform.jsp</title>
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
		<li class="breadcrumb-item active">추가양식</li>
	</ol>
	<h1>회원 정보 추가 폼 입니다.</h1>
	<form action="insert.jsp" method="post">
		<div class="form-group">
			<label for="name">이름</label>
			<input class="form-control" type="text" name="name" id="name"/>
		</div>
		<div class="form-group">
			<label for="addr">주소</label>
			<input class="form-control" type="text" name="addr" id="addr"/>
		</div>
		<button class="btn btn-outline-primary btn-sm" type="submit">추가</button>
		<button class="btn btn-outline-warning btn-sm" type="reset">취소</button>
	</form>
</div>
</body>
</html>







