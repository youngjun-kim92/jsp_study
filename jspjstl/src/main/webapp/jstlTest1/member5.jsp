<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<c:set var="id" value="hong" scope="page" />
<c:set var="pwd" value="1234" scope="page" />
<c:set var="name" value="" scope="page" />
<c:set var="age" value="${25}" scope="page" />
<c:set var="height" value="${175}" scope="page" />
<c:remove var="age"/>
<c:remove var="height"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보출력창</title>
</head>
<body>
	<h2 align="center">회원 정보 출력</h2>
	<table border="1" align="center">
		<tr align="center" bgcolor="lightgreen" width="700">
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>나이</th>
			<th>키</th>
		</tr>
		<c:choose>
			<c:when test="${empty name}">
				<tr align="center">
					<td colspan="5">이름을 입력해주세요</td>
				</tr>
			</c:when>
			<c:otherwise>
				<tr align="center">
					<td>${id}</td>
					<td>${pwd}</td>
					<td>${name}</td>
					<td>${age}</td>
					<td>${height}</td>
				</tr>
			</c:otherwise>
		</c:choose>
	</table>
	<p align="center"><a href="/jspAction/memberForm.html">새 회원 등록하기</a></p>
</body>
</html>