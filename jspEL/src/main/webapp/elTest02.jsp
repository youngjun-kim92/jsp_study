<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>second EL</title>
</head>
<body>
	<h1>표현 언어로 여러가지 데이터 출력(산술연산자)</h1>
	<h2>
		<%-- 표현언어의 기호 \ : 문자처럼 출력하겠다는 뜻--%>
		\${ 50+30 } : ${ 50+30 } <br>
		\${ 50-30 } : ${ 50-30 } <br>
		\${ 7*5 } : ${ 7*5 } <br>
		\${ 10/3 } : ${ 10/3 } <br><%-- 10/3 = 3.333 으로 나옴 --%>
		\${ 30/5 } : ${ 30/5 } <br><%-- 나누기는 실수값으로 나옴 --%>
		<%-- div 작성 중에 나오는 에러는 진짜 에러가 아님 --%>
		<%-- 영문으로 된 연산자는 앞뒤로 한칸씩 꼭 띄어야 함(아닐경우 변수로 여김) --%>
		<%-- 기호 연산자 는 숫자와 띄어도 되고 안띄어도 됨 --%>
		\${ 30 div 5 } : ${ 30 div 5 } <br>
		\${ 10%3 } : ${ 10%3 } <br>
		\${ 10 mod 3 } : ${ 10 mod 3 } <br>
	</h2>
</body>
</html>