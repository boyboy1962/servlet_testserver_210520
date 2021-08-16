<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
      <!-- bootstrap CDN link -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </head>
<body>
<%
	Calendar this_month = Calendar.getInstance();
	this_month.add(Calendar.MONTH, -5);
	this_month.set(Calendar.DATE, 1);
	int fixed_month = this_month.get(Calendar.MONTH);
	SimpleDateFormat sdf_title = new SimpleDateFormat("yyyy-MM");
	SimpleDateFormat sdf_day = new SimpleDateFormat("d");
	int DayOfWeek = this_month.get(Calendar.DAY_OF_WEEK);
	// out.print(DayOfWeek);
	// 선생님 풀이
	// 월의 첫날 구하기
	Calendar firstDateOfMonth = Calendar.getInstance();
	firstDateOfMonth.set(Calendar.MONTH, Calendar.JUNE);
	firstDateOfMonth.set(Calendar.DAY_OF_MONTH, 1);
	
	// 일:1, 월:2,
	int firstDayOfMonth = firstDateOfMonth.get(Calendar.DAY_OF_WEEK);
	
	// 월의 말일 구하기
	int lastDateOfMonth = firstDateOfMonth.getActualMaximum(Calendar.DAY_OF_MONTH);
%>
	<div class="container">
		<h1 class="text-center"><%= sdf_title.format(this_month.getTime()) %></h1>
		<table class="table text-center"> <!-- mt-3 -->
			<thead>
				<tr>
					<th class="text-danger">일</th>
					<th>월</th>
					<th>화</th>
					<th>수</th>
					<th>목</th>
					<th>금</th>
					<th>토</th>
				</tr>
			</thead>
			<tbody>
				<%
				boolean startOfMonth = true;
				while (this_month.get(Calendar.MONTH) == fixed_month){ 
					if(startOfMonth){ 
					%>
						<tr>
						<%
						for (int i = 1; i < DayOfWeek; i++){
						%>
							<th> </th>
						<%
						} 
						for (int i = DayOfWeek; i <= 7; i++){ 
						%>
							<th class="display-4"><%= sdf_day.format(this_month.getTime()) %></th>
							<% this_month.add(Calendar.DATE, +1); 
						}
						startOfMonth = false;
						%>		
						</tr>
					<%
					}
					%>
					<tr>
					<%
					for (int i = 1; i <= 7; i++){ 
						if(this_month.get(Calendar.MONTH) == fixed_month){
					%>
							<th class="display-4"><%= sdf_day.format(this_month.getTime()) %><%-- <%= March.get(Calendar.MONTH) %><%= this_month %> --%></th>
							<% this_month.add(Calendar.DATE, +1);
						} else {
						%>
							<th> </th>
						<%	
						}
					}
					%>
					</tr>
				<%
				} 
				%>
			</tbody>
			<!-- 선생님 풀이 -->
			<tbody>
			<%
				int day = 1 - (firstDayOfMonth - 1);
				for (int i = 0; i < 6; i++) {
					out.print("<tr>");
					for (int j = 0; j < 7; j++){
						out.print("<td>");
						if (day > 0){
							out.print(day);
						}
						out.print("</td>");
						
						day++;
						
						if (day > lastDateOfMonth) {
							break;
						}
					}
					
					if (day > lastDateOfMonth) {
						break;
					}
					
					out.print("</tr>");
				}
			%>
			</tbody>
		</table>
	</div>
</body>
</html>