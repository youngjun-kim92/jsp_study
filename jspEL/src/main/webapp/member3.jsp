<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보창</title>
</head>
<body>
	<h2 align="center">회원 목록</h2>
	<table border="1" align="center" width="700">
		<tr align="center" bgcolor="lightblue">
			<th>아이디</th><th>비밀번호</th><th>이름</th><th>이메일</th><th>주소</th>
		</tr>		
		<tr align="center">
			<td>${param.id}</td>
			<td>${param.pwd}</td>
			<td>${param.name}</td>
			<td>${param.email}</td>
			<%-- requestScope : setAttribute에서 세팅한 값을 받을 수 있음--%>
			<td>${requestScope.address}</td>
		</tr>		
	</table>
	<p align="center"><a href="/jspEL/memberForm.html">새 회원 등록하기</a></p>
</body>
</html>