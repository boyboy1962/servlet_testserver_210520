package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/ex02_insert")
public class Lesson04Ex02Servlet extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 파라미터에서 값을 꺼낸다.
		String name = request.getParameter("name");
		String yyyymmdd = request.getParameter("yyyymmdd");
		String email = request.getParameter("emial");
		String introduce = request.getParameter("introduce");
		
		// DB 연결
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		
		// 쿼리 insert
		String insertQuery = "insert into `new_user` (name, yyyymmdd, email, introduce)"
				+ "values('" + name + "','" + yyyymmdd + "','" + email +"','" + introduce +"')";
		System.out.println(insertQuery);
		
		try {
			mysqlService.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB 연결 해제
		mysqlService.disconnect();
		
		//리다이렉트
		response.sendRedirect("/lesson04/ex02_1.jsp");
		
	}
}
