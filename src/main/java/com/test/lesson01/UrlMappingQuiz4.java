package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz04")
public class UrlMappingQuiz4 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter();
		out.print("<!DOCTYPE html>\r\n"
				+ "\r\n"
				+ "<html>\r\n"
				+ "    <head>\r\n"
				+ "        <title>리스트 출력</title>\r\n"
				+ "    </head>\r\n"
				+ "    <body>\r\n"
				+ "        <ul>\r\n");
		for (int i = 1; i <=30; i++) {
			out.print("<li>" + i +"번째리스트</li>\r\n");
		}
		out.print("        </ul>\r\n"
				+ "    </body>\r\n"
				+ "</html>");
	}
}
