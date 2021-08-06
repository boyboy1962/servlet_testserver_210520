package com.test.lesson01;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz06")
public class GetMethoudJSONQuiz06 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		PrintWriter out = response.getWriter();
		Integer number1 = Integer.valueOf(request.getParameter("number1"));
		Integer number2 = Integer.valueOf(request.getParameter("number2"));

		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/json");
		out.print("{\"addtion\":\"" + (number1 + number2) + "\","
				+ " \"subtraction\":\"" + (number1 - number2) + "\","
				+ " \"multiplication\":\"" + (number1 * number2) + "\","
				+ " \"division\":" + (number1 / number2) + "}");
		//out.print("{\"user_id\":\"" + (number1 + number2) + "}");
		
		
	}
}