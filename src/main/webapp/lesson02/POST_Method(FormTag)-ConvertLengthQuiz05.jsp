<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POST Method(폼 태그) - 길이 변환</title>
      <!-- bootstrap CDN link -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </head>
<body>
	<div class="container ">
		<h1>길이 변환</h1>
		<form method="post" action="/lesson02/quiz05_1.jsp">
			<div class="d-flex">
				<input type="text" class="form-control col-2" name="number" placeholder="길이를 입력해주세요."> 
				<span class="mt-3"> cm </span> <!-- 마진탑을 한 3 정도 주면 아래로 네려간다. -->
			</div>
			<div>
				<label for="inch">인치</label>
				<input type="checkbox" name="length" id="inch" value="inch">
				<label for="yard" class="ml-2">야드</label>
				<input type="checkbox" name="length" id="yard" value="yard">
				<label for="feet" class="ml-2">피트</label>
				<input type="checkbox" name="length" id="feet" value="feet">
				<label for="meter" class="ml-2">미터</label>
				<input type="checkbox" name="length" id="meter" value="meter">
			</div> <!-- <br> 태크 보다는 div로 그룹을 설정하는 것이 더 좋다. -->
			<input type="submit" class="btn btn-success" value="변환하기">
		</form>
	</div>
</body>
</html>