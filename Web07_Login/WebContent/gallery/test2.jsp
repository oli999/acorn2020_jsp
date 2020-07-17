<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/gallery/test2.jsp</title>
</head>
<body>
<h1>이미지 파일 업로드 테스트</h1>
<form id="myForm" action="test_upload2.jsp" method="post" enctype="multipart/form-data">
	<input type="text" name="title" placeholder="설명 입력..."/><br/>
	<input type="file" name="image" 
		accept=".jpg, .jpeg, .png, .JPG, .JPEG"/><br/>
	<button type="submit">업로드</button>
</form>
<div id="wrapper">

</div>
<!-- jquery 로딩 -->
<script src="${pageContext.request.contextPath }/js/jquery-3.5.1.js"></script>
<!-- jquery 플러그인 로딩 -->
<script src="${pageContext.request.contextPath }/js/jquery.form.min.js"></script>
<!-- custom javascript 코딩 -->
<script>
	// id  가  myForm  인 form 에 submit 이벤트가 일어나면 페이지 전환 없이 제출하기(ajax) 
	$("#myForm").ajaxForm(function(data){
		//data 는 {imageSrc:"/upload/xxx.jpg"} 형식의 object 이다.
		console.log(data);
		
		$("<img/>")
		.attr("src","${pageContext.request.contextPath }"+data.imageSrc)
		.appendTo("#wrapper");
	});
</script>
</body>
</html>











