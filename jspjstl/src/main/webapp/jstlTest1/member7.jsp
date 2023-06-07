<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, jspjstl.ex01.*"
    isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	List memberList = new ArrayList();
	MemberVO mem1 = new MemberVO("son", "1234", "손흥민", "son@gmail.com");
	MemberVO mem2 = new MemberVO("lee", "2222", "이강인", "lee@gmail.com");
	MemberVO mem3 = new MemberVO("kim", "5555", "김민재", "kim@gmail.com");
	memberList.add(mem1);
	memberList.add(mem2);
	memberList.add(mem3);	
%>
<c:set var="memList" value="<%= memberList %>"/>
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
		<c:forEach var="member" items="${memList}">
			<tr align="center">
				<td>${member.id}</td>
				<td>${member.pwd}</td>
				<td>${member.name}</td>
				<td>${member.email}</td>
			</tr>		
		</c:forEach>	
	</table>	
</body>
</html>