<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 출력창</title>
</head>
<body>
	<h2 align="center">회원 정보 출력</h2>
	<table border="1" align="center" width="700">
		<tr align="center" bgcolor="lightblue">
			<th>아이디</th><th>비밀번호</th><th>이름</th><th>이메일</th>
		</tr>
		<tr align="center">
			<%-- 회원정보를 담아서 넘어온 객체정보에 .을 찍어서 접근 가능 --%>
			<td>${ member.id }</td>
			<td>${ member.pwd }</td>
			<td>${ member.name }</td>
			<td>${ member.email }</td>
		</tr>
	</table>
	<p align="center"><a href="/jspEL/memberForm.html">새 회원 등록하기</a></p>

</body>
</html>