<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>표현 언어로 여러가지 데이터 출력</h1>
	<h2>
		숫자값=${200} <br>
		홍길동님 ${"안녕하세요"} <br>
		연산 => ${20+30} <br>
		실수값 => ${5.3} <br>
		불린값 => ${true} <br>
		연산 => ${"10"+1} <br>
		null값 => ${null+10} <br>
		<!-- 에러 => ${"안녕"+20} <br> -에러남 -->
		<!-- 문자연결 => ${"철수"+"영희"} - 에러남 -->
	</h2>
</body>
</html>