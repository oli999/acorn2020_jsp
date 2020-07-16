<%@page import="java.io.File"%>
<%@page import="test.file.dao.FileDao"%>
<%@page import="test.file.dto.FileDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 파라미터로 전달되는 삭제할 파일의 번호를 읽어온다.
	int num=Integer.parseInt(request.getParameter("num"));
	//2. DB 에서 해당 파일의 정보를 읽어온다.
	FileDto dto=FileDao.getInstance().getData(num);
	//로그인된 아이디와 글 작성자가 같을때만 삭제 되도록한다.
	String id=(String)session.getAttribute("id");
	//만일 글작성자가 로그인된 아이디와 같지 않으면
	if(!dto.getWriter().equals(id)){
		//.sendError(에러코드, 에러메세지);
		response.sendError(HttpServletResponse.SC_FORBIDDEN, 
				"남의 파일 지우기 없기임~");
		return; //메소드 끝내기 (servie() 메소드)
	}
	
	//3. 파일 시스템에서 해당 파일을 삭제한다.
	String path=application.getRealPath("/upload")+
		File.separator+dto.getSaveFileName();
	new File(path).delete();
	//4. DB 에서 해당 파일의 정보를 삭제한다.
	FileDao.getInstance().delete(num);
	//5. 응답
	String cPath=request.getContextPath();
	response.sendRedirect(cPath+"/file/list.jsp");
%>    


