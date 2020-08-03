<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/regular_ex6.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
</head>
<body>
<div class="container">
	<h1>가입 폼 입니다.</h1>
	<form action="insert.jsp" method="post" id="myForm">
		<div class="form-group">
			<label for="id">아이디</label>
			<input class="form-control" type="text" id="id" name="id" placeholder="아이디 입력..."/>
			<div class="invalid-feedback">영문자 소문자로 시작을 하고 최소 5글자에서 최대 10글자 이내로 작성하세요</div>
		</div>
		<div class="form-group">
			<label for="phone">휴대폰 번호</label>
			<input class="form-control" type="text" id="phone" name="phone" placeholder="010-1111-2222"/>
			<div class="invalid-feedback">휴대폰 번호 형식에 맞게 입력 하세요.</div>		
		</div>
		<button class="btn btn-primary" type="submit">가입</button>
	</form>
</div>
<script src="${pageContext.request.contextPath }/js/jquery-3.5.1.js"></script>
<script>
	//아이디를 검증할수 있는 정규 표현식
	var reg_id=/^[a-z].{4,9}$/;
	//휴대폰 번호를 검증할수 있는 정규 표현식
	var reg_phone=/^010-[0-9]{4}-[0-9]{4}$/;
	//id 유효성
	var isIdValid=false;
	//phone 유효성
	var isPhoneValid=false;
	//form 유효성
	var isFormValid=false;
	
	$("#id").on("input", function(){
		//입력한 아이디를 읽어와서 검증한다.
		var inputId=$("#id").val();
		isIdValid=reg_id.test(inputId);
		if(isIdValid){//아이디가 유효하다면
			// is-invalid 클래스를 제거한다.
			$(this).removeClass("is-invalid");
		}else{//아이디가 유효하지 않다면
			// is-invalid 클래스를 추가한다.
			$(this).addClass("is-invalid");
		}
		
	});
	$("#phone").on("input", function(){
		//입력한 전화 번호를 읽어와서 검증한다.
		var inputPhone=$("#phone").val();
		isPhoneValid=reg_phone.test(inputPhone);
		if(isPhoneValid){
			$(this).removeClass("is-invalid");
		}else{
			$(this).addClass("is-invalid");
		}
	});
	
	$("#myForm").on("submit", function(){
		//폼 전체의 유효성 여부
		isFormValid=isIdValid && isPhoneValid;
		if(!isFormValid){//폼이 유효 하지 않으면 
			return false;//폼 제출을 막아준다.
		}
	});
	

</script>
</body>
</html>







