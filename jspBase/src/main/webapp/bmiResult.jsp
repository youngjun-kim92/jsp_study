<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 	request.setCharacterEncoding("utf-8");
	double height=Double.parseDouble(request.getParameter("height"));
	double weight=Double.parseDouble(request.getParameter("weight"));
	double sdweight=(height-100)*0.9;
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비만도 체크 결과</title>
</head>
<body>
	<%
		if(weight>sdweight+5) {
	%>
	<h2>비만입니다. 운동하세요</h2>
	<img alt="" src="./images/ob.jpg">
	<%
		}
		else if(weight>=sdweight-5) {
	%>
	<h2>표준입니다. 꾸준히 유지하세요</h2>
	<img alt="" src="./images/good.jpg">
	<%
		}
		else {
	%>
	<h2>마른체형입니다. 밥 많이 드세요</h2>
	<img alt="" src="./images/thin.jpg">
	<%
		}
	%>
</body>
</html>