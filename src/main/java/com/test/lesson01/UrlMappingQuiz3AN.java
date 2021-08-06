package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz03an")
public class UrlMappingQuiz3AN extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		
		Date now = new Date();
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		PrintWriter out = response.getWriter();
		out.print("<html>"
				+ "<head>"
				+ "<title>뉴스</title>"
				+ "</head>"
				+ "<body>"
				+ "<h1>[단독] 고양이가 야용해</h1>"
				+ "기사 입력 시간 : " + sdf.format(now)
				+ "<hr>"
				+ "끝"
				+ "</body></html>");
	}
}
