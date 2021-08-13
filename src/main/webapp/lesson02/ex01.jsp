<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<!-- html 주석: 소스보기에서 보인다. -->
	<%-- JSP 주석: 소스보기에서 보이지 않는다. --%>
	
<%// 스크립틀릿(Scriptlet): 안쪽에는 자바 문법을 쓸 수 있다.
	// 자바 주석이 먹힌다.
	
	int sum = 0;
	for (int i = 1; i <= 10; i++){
		sum += i;
	}
%>

<b>합계:</b>
<input type="text" value="<%= sum %>">
<br>

<%!
	// field 정의를 하는 것이라고 생각하면 됨 
	private int num = 100;

	//method
	public String getHelloWorld(){
		return "hello world!!!";
	}
	
%>

<%= getHelloWorld() %>
<br>
<%= 100 + (num + 200) * 3 %>

</body>
</html>

<!-- 해당 파일 연동 실험  -->






