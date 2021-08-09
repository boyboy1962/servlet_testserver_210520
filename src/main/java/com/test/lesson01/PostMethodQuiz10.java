package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz10")
public class PostMethodQuiz10 extends HttpServlet{
	
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "boyboy1962");
	        put("password", "1234");
	        put("name", "장재훈");
	    }
	};
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		PrintWriter out = response.getWriter();
		
		out.print("<html><head><title>완료</title></head><body>");
		//out.print(userMap.get("id"));
		
		// 되도록이면 IF ELSE 문으로 연결해서 RETURN을 쓰지 않도록 하자 마지막 라인이 않먹힌다.
		if(!id.equals(userMap.get("id"))) {
			out.print("아이디가 일치하지 않습니다.");
			return;
		}
		
		if(!pw.equals(userMap.get("password"))) {
			out.print("password가 일치하지 않습니다.");
			return;
		}
		
		out.print(userMap.get("name") + "님 환영합니다!!");
		
		out.print("</body></html>");
		
		
		out.print(""); //이슈를 위한 불필요한 코드
		
	}

}
