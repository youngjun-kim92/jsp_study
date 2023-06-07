<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, jspAction.ex01.*"
    %>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="memberVO" class="jspAction.ex01.MemberVO" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="memberVO" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 목록창</title>
</head>
<body>
	<h2 align="center">회원 정보</h2>
	<table border="1" align="center">
		<tr align="center" bgcolor="lightgreen" width="700">
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>이메일</th>
			<th>가입일</th>
			<th>삭제</th>
		</tr>
		<tr align="center">
			<td><jsp:getProperty property="id" name="memverVO"/></td>
			<td><jsp:getProperty property="pwd" name="memverVO"/></td>
			<td><jsp:getProperty property="name" name="memverVO"/></td>
			<td><jsp:getProperty property="email" name="memverVO"/></td>
		</tr>
	</table>
</body>
</html>