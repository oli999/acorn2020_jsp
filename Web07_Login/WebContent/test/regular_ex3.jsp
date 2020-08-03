<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/regular_ex3.jsp</title>
<style>
	.error-feedback{
		color:red;
		font-size: 10px;
		display: none;
	}
</style>
</head>
<body>
<form action="insert.jsp" method="post" id="myForm">
	<input type="text" id="id" name="id" placeholder="아이디 입력..."/>
	<div class="error-feedback">영문자 소문자로 시작을 하고 최소 5글자에서 최대 10글자 이내로 작성하세요</div>
	<button type="submit">가입</button>
</form>
<br/>
<a href="regular_ex4.jsp">다음예제</a>
<script src="${pageContext.request.contextPath }/js/jquery-3.5.1.js"></script>
<script>
	//아이디를 검증할수 있는 정규 표현식
	var reg_id=/^[a-z].{4,9}$/;
	//form 에 submit 이벤트가 일어 났을때 
	$("#myForm").on("submit", function(){
		//입력한 아이디를 읽어와서 검증한다.
		var inputId=$("#id").val();
		//만일 입력한 아이디가 아이디 검증 정규표현식과 부합되지 않으면
		if(!reg_id.test(inputId)){
			//1. 에러 메세지를 띄우고
			//alert("영문자 소문자로 시작을 하고 최소 5글자에서 최대 10글자 이내로 작성하세요");
			$(".error-feedback").show();
			//2. 잘못 입력한 곳으로 focus 를 주고 
			$("#id").focus();
			//3. 폼이 전송되지 않도록 막아준다.
			return false;
		}
	});
</script>
</body>
</html>







