package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz02_insert")
public class Quiz02_insert extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 파라미터에서 값을 꺼낸다.
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		// DB 연결
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		
		//쿼리 insert
		String insertQuery = "insert into `Bookmark` (name, url)"
				+ "values('"+ name + "','" + url +"')";
		
		
		try {
			mysqlService.update(insertQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		// DB 연결 해제
		mysqlService.disconnect();
		
		// 리다이랙트 => 목록 화면으로 이동
		response.sendRedirect("/lesson04/Quiz02jspAndDB.jsp");
	}

}
