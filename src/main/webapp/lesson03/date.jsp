<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> <!-- 이 페이지 정보는 항상 있어야한다.  -->
<p>
	현재 시간: <%= Calendar.getInstance().getTime() %>
</p>
