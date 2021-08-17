<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채널 안내</title>
      <!-- bootstrap CDN link -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<div class="container">
		<jsp:include page="header.jsp"/>
		<jsp:include page="nav.jsp"/>
		<section>
			<jsp:include page="contentA.jsp"/>
		</section>
		<jsp:include page="../ex01/footer.jsp"></jsp:include>
	</div>
	
	<div class="container">
	
		<!-- header.jsp  -->
		<header class="d-flex justify-content-center align-items-center">
			<h2 class="text-danger font-weight-bold">SK Broadband IPTV</h2>
		</header>	
		<!-- header.jsp  -->
	
		<!-- menu.jsp -->
		<nav class="bg-danger">
			<ul class="nav nav-fill">
				<li class="nav-item"><a href="Dynamic_Method-Layout_configuration.jsp" class="nav-link">전체</a></li>
				<li class="nav-item"><a href="Dynamic_Method-Layout_configuration.jsp?category=지상파" class="nav-link">지상파</a></li>
				<li class="nav-item"><a href="Dynamic_Method-Layout_configuration.jsp?category=드라마" class="nav-link">드라마</a></li>
				<li class="nav-item"><a href="Dynamic_Method-Layout_configuration.jsp?category=예능" class="nav-link">예능</a></li>
				<li class="nav-item"><a href="Dynamic_Method-Layout_configuration.jsp?category=영화" class="nav-link">영화</a></li>
				<li class="nav-item"><a href="Dynamic_Method-Layout_configuration.jsp?category=스포츠" class="nav-link">스포츠</a></li>
			</ul>
		</nav>
		<!-- menu.jsp -->
		
		<!-- contents.jsp -->
		<section class="contents">
			<%
			    List<Map<String, String>> list = new ArrayList<>();
			    Map<String, String> map = new HashMap<String, String>() {{ put("ch", "5"); put("name", "SBS"); put("category", "지상파"); } };
			    list.add(map);
			    map = new HashMap<String, String>() {{ put("ch", "7"); put("name", "KBS2"); put("category", "지상파"); } };
			    list.add(map);
			    map = new HashMap<String, String>() {{ put("ch", "9"); put("name", "KBS1"); put("category", "지상파"); } };
			    list.add(map);
			    map = new HashMap<String, String>() {{ put("ch", "11"); put("name", "MBC"); put("category", "지상파"); } };
			    list.add(map);
			
			    map = new HashMap<String, String>() {{ put("ch", "54"); put("name", "OCN"); put("category", "영화"); } };
			    list.add(map);
			    map = new HashMap<String, String>() {{ put("ch", "56"); put("name", "Screen"); put("category", "영화"); } };
			    list.add(map);
			    map = new HashMap<String, String>() {{ put("ch", "57"); put("name", "Mplex"); put("category", "영화"); } };
			    list.add(map);
			
			    map = new HashMap<String, String>() {{ put("ch", "30"); put("name", "KBS 드라마"); put("category", "드라마"); } };
			    list.add(map);
			    map = new HashMap<String, String>() {{ put("ch", "32"); put("name", "MBC 드라마"); put("category", "드라마"); } };
			    list.add(map);
			    map = new HashMap<String, String>() {{ put("ch", "34"); put("name", "Olive"); put("category", "드라마"); } };
			    list.add(map);
			
			    map = new HashMap<String, String>() {{ put("ch", "3"); put("name", "tvN"); put("category", "예능"); } };
			    list.add(map);
			    map = new HashMap<String, String>() {{ put("ch", "28"); put("name", "MBC Every1"); put("category", "예능"); } };
			    list.add(map);
			    map = new HashMap<String, String>() {{ put("ch", "48"); put("name", "JTBC2"); put("category", "예능"); } };
			    list.add(map);
			    map = new HashMap<String, String>() {{ put("ch", "49"); put("name", "E채널"); put("category", "예능"); } };
			    list.add(map);
			
			    map = new HashMap<String, String>() {{ put("ch", "120"); put("name", "SPOTV"); put("category", "스포츠"); } };
			    list.add(map);
			    map = new HashMap<String, String>() {{ put("ch", "121"); put("name", "KBSN 스포츠"); put("category", "스포츠"); } };
			    list.add(map);
			%>
			<table class="table text-center">
				<thead>
					<tr>
						<th>채널</th>
						<th>채널명</th>
						<th>카테고리</th>
					</tr>
				</thead>
				<tbody>
					<%
						String category = request.getParameter("category");
					
						for (Map<String, String> item : list){
							
							if (category != null && item.get("category").equals(category) == false) {
								// 카테고리의 값이 있고, 카테고리가 일치하지 않으면 skip => 출력 안함
								continue;
							}
					%>
					<tr>
						<td><%= item.get("ch") %></td>
						<td><%= item.get("name") %></td>
						<td><%= item.get("category") %></td>
					</tr>
					<%		
						}
					%>
				</tbody>
			</table>
		</section>
		<!-- contents.jsp -->		
		
		<!-- footer.jsp -->
		<footer class="bg d-flex justify-content-center align-items-center">
			<small>Copyright 2021, sk broadband All Rights Reserved</small>
		</footer>
		<!-- footer.jsp -->
		
	</div>
</body>
</html>