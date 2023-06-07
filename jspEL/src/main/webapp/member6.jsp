<%@page import="jspEL.ex01.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, jspEL.ex01.*"
 %>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="memVo" class="jspEL.ex01.MemberVO"/>
<jsp:setProperty property="*" name="memVo"/>
<jsp:useBean id="memberList" class="java.util.ArrayList"/>
<jsp:useBean id="memberMap" class="java.util.HashMap"></jsp:useBean>
<%
	memberMap.put("id","park");
	memberMap.put("pwd","4515");
	memberMap.put("name","박지성");
	memberMap.put("email","park@gmail.com");
	MemberVO memVo2=new MemberVO("min","1222","김민재","min@a.com");
	memberList.add(memVo);
	memberList.add(memVo2);
	memberMap.put("memberList",memberList);
%>
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
			<td>${memberMap.id}</td>
			<td>${memberMap.pwd}</td>
			<td>${memberMap.name}</td>
			<td>${memberMap.email}</td>
		</tr>
		<tr align="center">
			<td>${memberMap.member[0].id}</td>
			<td>${memberMap.member[0].pwd}</td>
			<td>${memberMap.member[0].name}</td>
			<td>${memberMap.member[0].email}</td>
		</tr>
		<tr align="center">
			<td>${memberMap.member[1].id}</td>
			<td>${memberMap.member[1].pwd}</td>
			<td>${memberMap.member[1].name}</td>
			<td>${memberMap.member[1].email}</td>
		</tr>
	</table>
	<p align="center"><a href="/jspAction/memberForm.html">새 회원 등록하기</a></p>
</body>
</html>