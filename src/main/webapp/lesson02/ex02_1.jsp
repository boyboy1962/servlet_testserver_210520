<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GET Method </title>
</head>
<body>
	<%-- request 객체는 jsp에서 바로 사용할 수 있다. --%>
	<b>아이디</b>
	<%= request.getParameter("user_id") %>
	<br>
	<strong>이름</strong>
	<%= request.getParameter("name") %>
	<br>
	<strong>나이</strong>
	<%= request.getParameter("age") %>
</body>
</html>