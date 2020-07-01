<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/signup_form.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
<style>
	/* legend 요소의 글자 크기를 label 요소의 글자 크기와 같게 한다. */
	fieldset legend{
		font-size: 1rem;
	}
</style>
</head>
<body>
<div class="container">
	<h1>회원가입 폼 입니다.</h1>
	<form action="${pageContext.request.contextPath }/users/signup.jsp" method="post">
		<div class="form-group">
			<label for="id">아이디</label>
			<input class="form-control" type="text" name="id" id="id" />
			<small class="form-text text-muted">5 글자 이상 입력하세요.</small>
		</div>
		<div class="form-group">
			<label for="pwd">비밀번호</label>
			<input class="form-control" type="password" name="pwd" id="pwd"/>
		</div>
		<fieldset>
			<legend>성별 선택</legend>
			<div class="form-check form-check-inline">
				<label>
					<input class="form-check-input" type="radio" name="gender" value="man" checked/> 남
				</label>
			</div>
			<div class="form-check form-check-inline">
				<label>
					<input class="form-check-input" type="radio" name="gender" value="woman"/> 여
				</label>
			</div>
		</fieldset>
		<div class="form-group">
			<label for="job">직업 선택</label>
			<select class="form-control" name="job" id="job">
				<option value="">선택</option>
				<option value="doctor">의사</option>
				<option value="programmer">프로그래머</option>
				<option value="etc">기타</option>
			</select>
		</div>
		<fieldset>
			<legend>관심사 체크</legend>
			<div class="form-check form-check-inline">
				<label>
					<input class="form-check-input" type="checkbox" name="like" value="java"/> 자바
				</label>
			</div>
			<div class="form-check form-check-inline">
				<label>
					<input class="form-check-input" type="checkbox" name="like" value="javascript"/> 자바스크립트
				</label>
			</div>
			<div class="form-check form-check-inline">
				<label>
					<input class="form-check-input" type="checkbox" name="like" value="css"/> 스타일시트
				</label>
			</div>
		</fieldset>
		<div class="form-group">
			<label for="comment">하고 싶은말</label>
			<textarea class="form-control" name="comment" id="comment" rows="3"></textarea>
		</div>
		<button class="btn btn-primary" type="submit">가입</button>
		<button class="btn btn-danger" type="reset">취소</button>
	</form>
</div>
</body>
</html>





