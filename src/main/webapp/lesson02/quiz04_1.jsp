<%@page import="java.math.RoundingMode"%>
<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산기</title>
      <!-- bootstrap CDN link -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </head>
<body>
	<% 
		String rightSide = request.getParameter("rightSide");
		String arithmetic = request.getParameter("arithmetic");
		String leftSide = request.getParameter("leftSide");
	%>
	<div class="container">
		<h1>계산 결과</h1>
		<div class="display-1">
			<%= rightSide %> 
			<%= arithmetic %>
			<%= leftSide %>
			=
			<span class="text-primary">
				<%
					double num1 = Double.valueOf(rightSide);
					double num2 = Double.valueOf(leftSide);
					double ans = 0;
					
					/* double result = 0;
					String printOperator;
					switch (operator){
					case "plus":
						result = number1 + number2;
						printOperator = "+";
						break;
					case "minus":
						result = number1 - number2;
						printOperator = "-";
						break;
					case "multiple":
						result = number1 * number2;
						printOperator = "X";
						break;
					case "divide":
						result = number1 / number2;
						printOperator = "/";
					} */
					
					if(arithmetic.equals("+")){
						ans = num1 + num2;
					} else if(arithmetic.equals("-")){
						ans = num1 - num2;
					} else if(arithmetic.equals("×")){
						ans = num1 * num2;
					} else if(arithmetic.equals("÷")){
						ans = num1 / num2;
					} else {
						ans = 500;
					}
					DecimalFormat df = new DecimalFormat("#.##");
					df.setRoundingMode(RoundingMode.CEILING);
					out.print(df.format(ans));
				%>
			</span>
		</div>
	</div>
</body>
</html>