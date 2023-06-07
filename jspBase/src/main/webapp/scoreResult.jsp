<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String name=request.getParameter("name");
	int score=Integer.parseInt(request.getParameter("score"));
%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학점 처리 프로그램</title>
</head>
<body>
	<%
		String grade="";
		if(score<=100&&score>=0) {
			if(score>=90) {
				grade="A";
			}
			else if(score>=80) {
				grade="B";
			}
			else if(score>=70) {
				grade="C";
			}
			else if(score>=60) {
				grade="D";
			}
			else {
				grade="F";
			}
	%>
	
	<h2>평가결과는 <%=grade %>학점입니다.</h2>
	<%			
		}
		else {
	%>
	<h2>시험점수를 잘못 입력했습니다.</h2>
	<%		
		}
	%>
	<a href="scoreTest.html">시험 점수 입력</a>
</body>
</html>