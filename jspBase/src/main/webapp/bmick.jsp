<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	Double height = Double.parseDouble(request.getParameter("height"));
	Double weight = Double.parseDouble(request.getParameter("weight"));
	Double std = (height-100)*0.9;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비만도 간단 체크 결과</title>
</head>
<body>
	<h2>비만도 간단 체크 결과</h2>
	<%
		String result="";
		String imgName="";
		if(weight>std+5) {
			result = "비만입니다. 운동하세요.";
			imgName = "ob.jpg";
		} else if(weight>=std-5) {
			result = "표준입니다. 꾸준히 유지하세요.";
			imgName = "good.png";
		} else {
			result = "마른체형입니다. 밥 많이 드세요.";
			imgName = "thin.jpg";
		}
	%>	
		<h3><%= result %></h3>
		<img src="./images/<%=imgName%>" alt="">
	<%--
	<%
		if(weight < std-5) {
	%>
		<h3>마른체형입니다. 밥 많이 드세요.</h3>
		<img src="./images/thin.jpg"><br>
	<%
		} else if(weight <= std+5) {
	%>
		<h3>표준입니다. 꾸준히 유지하세요.</h3>
		<img src="./images/good.png"><br>
	<%
		} else {
	%>
		<h3>비만입니다. 운동하세요.</h3>
		<img src="./images/ob.jpg"><br>
	<%
		}
	%> --%>
	<br><a href="bmick.html">입력창으로 이동</a>
</body>
</html>