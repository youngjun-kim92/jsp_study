<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
     isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>단입력 창</title>
</head>
<body>
	<h2>출력할 구구단을 지정해 주세요</h2>
	<form action="forEach1.jsp" method="get">
		츌룍헐 단 : <input type="text" name="dan"><br>
		<input type="submit" value="구구단 출력하기">
		<input type="reset" value="다시입력">
	</form>
</body>
</html>