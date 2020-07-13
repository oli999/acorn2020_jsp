<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/ajax/test01.jsp</title>
</head>
<body>
<button id="getBtn">요청하기</button>
<script src="${pageContext.request.contextPath }/js/jquery-3.5.1.js"></script>
<script>
	// id 가 getBtn 인 곳에 "click" 이벤트가 일어났을때 호출되는 함수 등록
	$("#getBtn").on("click", function(){
		//jquery 의 기능을 이용해서 ajax  요청하기 
		$.ajax({
			method:"GET",
			url:"${pageContext.request.contextPath }/ajax/getmsg.jsp",
			data:"num=1&name=kimgura",
			success:function(responseData){
				console.log(responseData);
			}
		});
	});
</script>
</body>
</html>








