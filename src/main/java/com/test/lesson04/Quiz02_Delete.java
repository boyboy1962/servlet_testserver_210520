package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz02_delete")
public class Quiz02_Delete extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// request에서 삭제할 아이디를 꺼냄
		int id = Integer.valueOf(request.getParameter("id"));
		
		// DB 연결
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		
		// DELETE 쿼리를 수행
		String deleteQuery = "delete from Bookmark where id = " + id;
		try {
			mysqlService.update(deleteQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// DB 연결 해제
		mysqlService.disconnect();
		
		response.sendRedirect("/lesson04/Quiz02jspAndDB.jsp");
	}
}
