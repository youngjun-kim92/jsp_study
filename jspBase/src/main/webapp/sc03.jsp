<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String name = request.getParameter("name");
	// int age = Integer.parseInt(request.getParameter("age")); 연산할 게 아니므로 안해도 됨 ㅎ;
	String age = request.getParameter("age");
%>
<html>
<head>
<meta charset="UTF-8">
<title>jsp 스크립트 요소 </title>
</head>
<body>
	<h1><%= name %>님 환영합니다.</h1>
	<h2>당신의 나이는 <%=age %>세 이군요</h2>
</body>
</html>