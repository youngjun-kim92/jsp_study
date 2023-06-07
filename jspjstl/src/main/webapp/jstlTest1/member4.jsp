<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<c:set var="id" value="hong" scope="page" />
<c:set var="pwd" value="1234" scope="page" />
<c:set var="name" value="${'홍길동'}" scope="page" />
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
	<c:if test="${id=='hong'}">
		<h2>안녕하세요 ${name}님!!</h2>
	</c:if>
	<c:if test="${age>=65}">
		<a href="http://www.kbs.co.kr">복지 혜택 알아보기</a>
	</c:if>
	<c:if test="${height>170}">
		<h2>${name}님은 170보다 큽니다</h2>
	</c:if>
	<h2 align="center">회원 정보 출력</h2>
	<table border="1" align="center">
		<tr align="center" bgcolor="lightgreen" width="700">
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>나이</th>
			<th>키</th>
		</tr>
		<tr align="center">
			<td>${id}</td>
			<td>${pwd}</td>
			<td>${name}</td>
			<td>${age}</td>
			<td>${height}</td>
		</tr>
	</table>
	<p align="center"><a href="/jspAction/memberForm.html">새 회원 등록하기</a></p>
</body>
</html>