<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
 %>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="memVo" class="jspEL.ex01.MemberVO"/>
<jsp:setProperty property="*" name="memVo"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보창</title>
</head>
<body>
	<h2 align="center">회원 정보 출력</h2>
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
			<td><%=memVo.getId() %></td>
			<td><%=memVo.getPwd() %></td>
			<td><%=memVo.getName() %></td>
			<td><%=memVo.getEmail() %></td>
		</tr>
	</table>
	<p align="center"><a href="/jspAction/memberForm.html">새 회원 등록하기</a></p>
</body>
</html>