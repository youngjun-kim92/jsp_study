<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
     isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 창</title>
</head>
<body>
	<form action="result2.jsp" method="post">
		아이디 : <input type="text" name="id"><br>
		비밀번호 : <input type="password" name="pwd"><br>
		<input type="submit" value="로그인">
		<input type="reset" value="다시입력">
	</form>
	<br>
	<!-- <a href="/jspJstl/jstlTest1/memberForm.html">회원가입하기</a> -->
	<!-- <a href="${pageContext.request.contextPath}/jstlTest1/memberForm.html">회원가입하기</a> -->	 
	<a href="${contextPath}/jstlTest1/memberForm.html">회원가입하기</a>
</body>
</html>