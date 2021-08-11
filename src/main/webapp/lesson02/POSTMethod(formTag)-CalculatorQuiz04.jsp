<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POST Method(폼 태그) - 계산기</title>
      <!-- bootstrap CDN link -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </head>
<body>
	<div class="container">
		<h1>사칙 연산 계산기</h1>
		<form class="d-flex" method="post" action="/lesson02/quiz04_1.jsp">
			<input type="text" class="form-control col-2 m-2" name="rightSide">
			<select class="form-control col-1 m-2" name="arithmetic">
				<option>+</option> <!-- option 안쪽에 value 지정할 수 있다. 하지만 하지 않아도 무관하다.  -->
				<option>-</option>
				<option>×</option>
				<option>÷</option>
			</select>
			<input type="text" class="form-control col-2 m-2" name="leftSide">
			<input type="submit" class="btn btn-success m-2" value="계산하기">
		</form>
	</div>
</body>
</html>