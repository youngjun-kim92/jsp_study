<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>third EL</title>
</head>
<body>
	<h1>표현 언어로 여러가지 데이터 출력(비교연산자)</h1>
	<h2> 	<%-- true / false --%>
			
			<%-- 같다 / 같지 않다 --%>
		\${ 20 == 20 } : ${ 20 == 20 } <br>
		\${ 20 eq 20 } : ${ 20 eq 20 } <br>
		\${ "kbs"=="kbs" } : ${ "kbs"=="kbs" } <br>
		\${ "kbs"eq"kbs" } : ${ "kbs"eq"kbs" } <br>

		\${ 20 != 20 } : ${ 20 != 20 } <br>
		\${ 20 ne 20 } : ${ 20 ne 20 } <br><%-- not equal --%>
		\${ "korea"!="hello" } : ${ "korea"!="hello" } <br>
		\${ "korea"ne"hello" } : ${ "korea"ne"hello" } <br>
		
			<%-- 크다 / 작다 --%>
		\${ 30 > 20 } : ${ 30 > 20 } <br>
		\${ 30 gt 20 } : ${ 30 gt 20 } <br> <%-- greater than --%>
		
		\${ 30 < 20 } : ${ 30 < 20 } <br>
		\${ 30 lt 20 } : ${ 30 lt 20 } <br> <%-- less than --%>
		
		\${ 30 >= 20 } : ${ 30 >= 20 } <br>
		\${ 30 ge 20 } : ${ 30 ge 20 } <br> <%-- great equal --%>
		
		\${ 30 <= 20 } : ${ 30 <= 20 } <br>
		\${ 30 le 20 } : ${ 30 le 20 } <br> <%-- less equal --%>
		
					
				
	</h2>
</body>
</html>