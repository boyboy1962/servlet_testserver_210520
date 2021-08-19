<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자들</title>
</head>
<body>
	<%
		// DB 연결
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		
		String SelectQuery = "select * from new_user";
		ResultSet result = mysqlService.select(SelectQuery);
	%>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>생년월일</th>
				<th>이메일</th>
				<th>소개</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
		<%
			while(result.next()){
		%>
			<tr>
				<th><%= result.getInt("id") %></th>
				<th><%= result.getString("name") %></th>
				<th><%= result.getString("yyyymmdd") %></th>
				<th><%= result.getString("email") %></th>
				<th><%= result.getString("introduce") %></th>
				<th><a href="/lesson04/ex02_delete?id=<%= result.getInt("id") %>">삭제하기</a></th>
			</tr>
		<%
			}
		%>
		</tbody>
	</table>
</body>
</html>