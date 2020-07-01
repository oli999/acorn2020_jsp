package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/sub/fortune")
public class FortuneServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, 
			HttpServletResponse resp) throws ServletException, IOException {
		//응답 인코딩 설정
		resp.setCharacterEncoding("utf-8");
		//응답 컨텐트 type  설정
		resp.setContentType("text/html;charset=utf-8");
		
		//클라이언트의 웹브라우저에 문자열을 출력할수 있는 객체의 참조값 얻어오기 
		PrintWriter pw=resp.getWriter();
		pw.println("<!doctype html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta charset='utf-8'/>");
		pw.println("<title>오늘의 운세 페이지</title>");
		pw.println("</head>");
		pw.println("<body>");
		//sample  운세 5개를 미리 배열에 준비하기
		String[] fortunes= {"동쪽으로 가면 귀인을 만나요",
				"로또가 당첨 될꺼에요","세엣","네엣","다섯"};
		//Random 객체
		Random ran=new Random();
		// 0~4  사이의 렌덤한 정수 얻어내기 
		int ranNum=ran.nextInt(5);
		pw.println("<p> 오늘의 운세 :"+fortunes[ranNum]+"</p>");
		pw.println("<img src='../images/kim1.png'/>");
		pw.println("<img src='/Web02_Servlet/images/kim1.png'/>");
		pw.println("</body>");
		pw.println("</html>");
		pw.close();
	}
}





