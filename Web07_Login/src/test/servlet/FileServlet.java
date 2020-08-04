package test.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.file.dao.FileDao;
import test.file.dto.FileDto;

@WebServlet("/file")
public class FileServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException {
		//1. 파일 정보를 얻어오는 비즈니스 로직을 수행한다. 
		//sample 데이터 얻어오기 
		FileDto dto=FileDao.getInstance().getData(1);
		//2. 비즈니스 로직의 수행결과 데이터(모델) 을 request 영역에 담고
		req.setAttribute("dto", dto);
		//3. view 페이지(jsp)로 forward 이동해서 응답
		RequestDispatcher rd=
				req.getRequestDispatcher("/views/file/detail.jsp");
		rd.forward(req, resp);
	}
}












