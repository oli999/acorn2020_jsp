package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/users/login")
public class UsersLoginServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//폼 전송되는 아이디와 비밀번호 읽어내기
		String id=req.getParameter("id"); // name="id"
		String pwd=req.getParameter("pwd"); // name="pwd"
		
		//응답 인코딩 설정
		resp.setCharacterEncoding("utf-8");
		//응답 컨텐트 type  설정
		resp.setContentType("text/html;charset=utf-8");
		
		PrintWriter pw=resp.getWriter();
		pw.println("<!doctype html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta charset='utf-8'/>");
		pw.println("<title>로그인 결과 페이지</title>");
		pw.println("<link rel='stylesheet' href='/Web02_Servlet/css/bootstrap.css' />");
		pw.println("</head>");
		pw.println("<body>");
		pw.println("<div class='container'>");
		if(id.equals("gura") && pwd.equals("1234")) {//로그인 정보가 맞는경우
			pw.println("<p class='alert alert-success'>"+id+" 님 로그인 되었습니다. <a class='alert-link' href='../index.html'>확인</a></p>");	
		}else {//로그인 정보가 틀린경우 
			pw.println("<p class='alert alert-danger'>아이디 혹은 비밀번호가 틀려요. <a class='alert-link' href='../index.html'>확인</a></p>");	
		}
		pw.println("</div>");
		pw.println("</body>");
		pw.println("</html>");
		pw.close();		
	}
}











