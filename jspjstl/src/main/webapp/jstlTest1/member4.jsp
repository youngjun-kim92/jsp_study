<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="id" value="hong" scope="page" />
<c:set var="pwd" value="1234" scope="page" />
<c:set var="name" value="${'홍길동'}" scope="page" />
<c:set var="age" value="${25}" scope="page" />
<c:set var="height" value="${175}" scope="page" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 출력창</title>
</head>
<body>
	<c:if test="${id == 'hong' }">
		<h2>안녕하세요 ${name}님!!</h2>
	</c:if>
	<c:if test="${age>=65}">
		<!-- 지금은 age에 25가 들어있으므로 수행 X -->
		<a href="http://www.kbs.co.kr">복지 혜택 알아보기</a>
	</c:if>
	<c:if test="${height>170}">
		<h2>${name }님의 키는 170cm보다 큽니다.</h2>
	</c:if>
</body>
</html>