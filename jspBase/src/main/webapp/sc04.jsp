<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! 
	String name="홍길동";
	int age=50;
%>
<% String score=request.getParameter("score"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp 스크립트 요소</title>
</head>
<body>
	<h1>안녕하세요 <%=name %>님!!</h1>
	<h1>나이는 <%=age %>세 입니다</h1>
	<h1>키는 <%=173 %>cm입니다</h1>
	<h1>시험점수는 <%=Integer.parseInt(score)+10 %>점 입니다</h1>
</body>
</html>