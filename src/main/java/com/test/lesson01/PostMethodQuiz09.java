package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz09")
public class PostMethodQuiz09 extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		String name = request.getParameter("name");
		String introduce = request.getParameter("introduce");
		
		
		PrintWriter out = response.getWriter();
		
		out.print("\r\n"
				+ "<html>\r\n"
				+ "<head>\r\n"
				+ "    <meta charset=\"UTF-8\">\r\n"
				+ "    <title>입사 지원</title>\r\n"
				+ "<body>\r\n"
				+ "    <div class=\"container\">\r\n");
		
		out.print("<b>" + name +"</b>" + "님 지원dl 완료하였습니다.");
		out.print("<h4>지원 내용</h4>");
		out.print(introduce);
		out.print("    </div>\r\n"
				+ "</body>\r\n"
				+ "</html>");
		
	}
}
