<%@page import="test.todo.dao.TodoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 할일을 삭제 해야 하는데 몇번글을 삭제 하지???
	
	//GET 방식 파라미터로 전달되는 삭제할 글번호를 읽어와서 숫자로 바꿔준다.
	// delete.jsp?num=x
	int num=Integer.parseInt(request.getParameter("num"));	
    //DB 에서 실제로 삭제한다.
    TodoDao.getInstance().delete(num);
    //응답한다. 
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/todo/delete.jsp</title>
</head>
<body>
	<script>
		alert("삭제 했습니다.");
		//javascript 를 이용해서 클라이언트에게 특정 경로로 요청을 다시 하도록 강요하기
		location.href="${pageContext.request.contextPath }/todo/list.jsp";
	</script>
</body>
</html>




