<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다운로드 요청창</title>
</head>
<body>
	<form action="download.jsp" method="get">
		<input type="hidden" name="param1" value="cat.jpg">
		<input type="hidden" name="param1" value="dog.jpg">
		<input type="submit" value="이미지 다운로드">
	</form>
</body>
</html>