<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//request : 클라이언트가 넘겨줘야만 됨
	request.setCharacterEncoding("utf-8");
	request.setAttribute("id", "hong");
	request.setAttribute("pwd", "1234");
//session : 같은 브라우저에서 보이는 것
	session.setAttribute("name", "홍길동");
//application: 같은 컨텍스트에서 보이는 것
	application.setAttribute("email", "hong@gmail.com");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현언어로 하는 바인딩 실습</title>
</head>
<body>
	<jsp:forward page="member1.jsp" />
</body>
</html>