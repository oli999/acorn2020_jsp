package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/todo/list")
public class TodoListServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//DB 에서 읽어온 할일 목록이라고 가정하자
		List<String> list=new ArrayList<String>();
		list.add("html 공부하기");
		list.add("css 공부하기");
		list.add("javascript 공부하기");
		//응답 인코딩 설정
		resp.setCharacterEncoding("utf-8");
		//응답 컨텐트 type  설정
		resp.setContentType("text/html;charset=utf-8");
		
		PrintWriter pw=resp.getWriter();
		pw.println("<!doctype html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta charset='utf-8'/>");
		pw.println("<title>할일 목록 페이지</title>");
		pw.println("</head>");
		pw.println("<body>");
		pw.println("<h1>오늘 할일</h1>");
		pw.println("<ul>");
		for(int i=0 ;i<list.size() ;i++) {
			pw.println("<li>"+list.get(i)+"</li>");
		}
		//확장  for 문을 활용하면
		for(String tmp:list) {
			pw.println("<li>"+tmp+"</li>");
		}
		pw.println("</ul>");
		pw.println("</body>");
		pw.println("</html>");
		pw.close();		
		
	}
}











