<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	// DB 연결
	MysqlService mysqlService = MysqlService.getInstance();
	mysqlService.connection();
	/* String selectQuery = "select * from used_goods";
	ResultSet used_good = mysqlService.select(selectQuery);
	selectQuery = "select * from seller";
	ResultSet seller = mysqlService.select(selectQuery);
	out.print(used_good); */
	String selectQuery = "select A.*, B.* " +
						 "from seller as A " +
						 "join used_goods as B " +
						 "on A.id = B.sellerId ";
	ResultSet goodAndSeller = mysqlService.select(selectQuery);
	
%>
<section>

<%
	int count = 1;
	//for (int j = 0; j < 3; j++){
	while (goodAndSeller.next()){
%>	
	<% 
	if(count == 1){
	%>		
	<div class=" d-flex ">
	<% 
	}
	%>
		<div class="m-3 w-100">
			<div class="line w-100">
				<div class="box">
					<img alt="" src="<%= goodAndSeller.getString("picture") %>" width="100">
				</div>
			</div>
		</div>
	<% 
	if(count == 3){
		count = 1;
	%>		
	</div>
	<% 
	}
	count++;
	%>
	
<%
	}
	
%>

</section>
<%
	// DB 연결 해제
	mysqlService.disconnect();
%>

