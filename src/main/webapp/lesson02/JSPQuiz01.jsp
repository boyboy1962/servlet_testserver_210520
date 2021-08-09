<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트 요소 - JSP</title>
</head>
<body>
<%
//하나의 jsp 파일에 문제를 푸세요.
//스크립트 요소를 이용해 기능을 구현하고, 태그로 결과를 출력하세요.

//2. 점수들의 평균 구하기
//스크립틀릿(scriptlet) <% 문법을 사용해서 주어진 점수들의 평균을 구하세요.
int[] scores = {80, 90, 100, 95, 80};
double avg = 0;
for (int i = 0; i < scores.length; i++){
	avg += scores[i]*1.0/scores.length;
}


//3. 채점 결과
//아래 채점표로 시험점수가 몇점인지 구하세요.
List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
int score = 0;
for (int i = 0; i < scoreList.size(); i++){
	if (scoreList.get(i).equals("O")){
		score += 100/scoreList.size();
	}
}


//4. 나이 구하기
//주어진 생년월일을 가진 사람의 나이를 구하세요.
String birthDay = "20010820";

String year =  birthDay.substring(0, 4);
//out.print(year);
int yearInt = Integer.valueOf(year);
%>

<%!

//1. 1부터 n까지의 합계를 구하는 함수
//jsp의 선언문 <%! 문법을 사용해서 1부터 N까지의 합을 구하는 함수를 만드세요.

public int sum(int n){
	int sum = 0;
	
	for (int i = 1; i <= n; i++){
		sum += i;
	}
	
	return sum;
}

%>

1 부터 50까지의 합은 <%= sum(50) %>입니다.
<br><br>
평균 점수는 <%= avg %>입니다.
<br><br>
채점 결과는 <%= score %>점 입니다. 
<br><br>
<%= birthDay %>의 나이는 <%= 2021 - yearInt +1 %> 입니다.

</body>
</html>