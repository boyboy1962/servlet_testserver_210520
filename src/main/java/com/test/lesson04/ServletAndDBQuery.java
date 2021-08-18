package com.test.lesson04;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/ServletAndDBQuery")
public class ServletAndDBQuery extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		MysqlService mysqlService = MysqlService.getInstance();
		// DB 연결
		mysqlService.connection();
		
		// 쿼리 수행
		
		// select를 수행하여 전체 매물을 가져옵니다.
		String selectQuery = "select * from real_estate";
		PrintWriter out = response.getWriter();
		
		try {
			ResultSet result = mysqlService.select(selectQuery);
			while (result.next()) { // 결과 행이 있는 동안 수행
				out.print("매물 주소: " + result.getString("address") +", ");
				out.print("면적: " + result.getString("address") +", ");
				out.print("타입: " + result.getString("address"));
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		// DB 연결 끊기
		mysqlService.disconnect();
		
		
	}
	
}