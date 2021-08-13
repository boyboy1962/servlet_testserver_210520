<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
</head>
<body>
<%
	Calendar today = Calendar.getInstance();
	out.println(today);
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 HH:mm:ss");
	out.print("오늘 날짜: " + sdf.format(today.getTime()) + "<br>"); // Calendar -> Date  객체롤 변환 -> format 적용 
	
	// 어제 말짜
	SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy년 MM월 dd일");
	Calendar yesterday = Calendar.getInstance();
	yesterday.add(Calendar.DATE, -1); // 하루 전
	// yesterday.add(Calendar.MONTH, -1); // 한달 전
	// yesterday.add(Calendar.YEAR, -1); // 1년 전
	out.print("어제 날짜:" + sdf2.format(yesterday.getTime()) + "<br>");
%>
</body>
</html>