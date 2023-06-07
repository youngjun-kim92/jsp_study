<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"
    import="java.util.*, jspjstl.ex01.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="memberList" class="java.util.ArrayList"/>
<jsp:useBean id="memberMap" class="java.util.HashMap"></jsp:useBean>
<%
	memberMap.put("id","park");
	memberMap.put("pwd","4515");
	memberMap.put("name","박지성");
	memberMap.put("email","park@gmail.com");
	MemberVO memVo1=new MemberVO("son","5555","손흥민","son@gmail.com");
	MemberVO memVo2=new MemberVO("min","1222","김민재","min@a.com");
	memberList.add(memVo1);
	memberList.add(memVo2);
	memberMap.put("memberList",memberList);
%>
<c:set var="memberList" value="${memberMap.memberList}"/>
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
		</tr>
		<tr align="center">
			<td>${memberMap.id}</td>
			<td>${memberMap.pwd}</td>
			<td>${memberMap.name}</td>
			<td>${memberMap.email}</td>
		</tr>
		<tr align="center">
			<td>${memberList[0].id}</td>
			<td>${memberList[0].pwd}</td>
			<td>${memberList[0].name}</td>
			<td>${memberList[0].email}</td>
		</tr>
		<tr align="center">
			<td>${memberList[1].id}</td>
			<td>${memberList[1].pwd}</td>
			<td>${memberList[1].name}</td>
			<td>${memberList[1].email}</td>
		</tr>
	</table>
	<p align="center"><a href="/jspAction/memberForm.html">새 회원 등록하기</a></p>
</body>
</html>