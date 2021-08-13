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
	Calendar March = Calendar.getInstance();
	March.set(Calendar.MONTH, Calendar.MARCH);
	March.set(Calendar.DATE, 1);
	SimpleDateFormat sdf_title = new SimpleDateFormat("yyyy-MM");
	SimpleDateFormat sdf_day = new SimpleDateFormat("d");
	int DayOfWeek = March.get(Calendar.DAY_OF_WEEK);
	// out.print(DayOfWeek);
%>
	<div class="container">
		<h1 class="text-center"><%= sdf_title.format(March.getTime()) %></h1>
		<table class="table text-center">
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
				while (March.get(Calendar.MONTH) == 2){ 
					if(startOfMonth){ 
					%>
						<tr>
						<%
						for (int i = 1; i < DayOfWeek; i++){
						%>
							<th>A<th>
						<%
						} 
						for (int i = DayOfWeek; i <= 7; i++){ 
						%>
							<th><%= sdf_day.format(March.getTime()) %><th>
							<% March.add(Calendar.DATE, +1); 
						}
						startOfMonth = false;
						%>
								
						</tr>
					<%
					} 
					%>
				<%} %>
			</tbody>
		</table>
	</div>
</body>
</html>