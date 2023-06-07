<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--<%! 
	String name;
	int score;
	String result;
%>
<%
	name = request.getParameter("name");
	score = Integer.parseInt(request.getParameter("score"));	
%>--%>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	int score = Integer.parseInt(request.getParameter("score"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학점 결과 출력창</title>
</head>
<body>
	<%-- <h1>평가결과</h1> --%>
	<%-- 
	<%
		if(score>=0 && score<=100){
			if(score>=90){
				result = "A";
			} else if(score>=80){
				result = "B";
			} else if(score>=70){
				result = "C";
			} else if(score>=60){
				result = "D";
			} else {
				result = "F";
			}
	%>
		<h2><%=name %>님의 시험점수는 <%=score %>입니다.</h2>
		<h2>평가결과는 <%=result %>학점입니다.</h2>
	<%
		} else {
	%>
		<p>시험점수를 잘못 입력하셨습니다.</p>
	<%		
		}
	%>
	<p><a href="/jspBase/scoreTest.html">시험점수입력</a></p>
	--%>
	<%
		String grade="";
		if(score>=0 && score<=100){
			if(score>=90){
				grade = "A";
			} else if(score>=80){
				grade = "B";
			} else if(score>=70){
				grade = "C";
			} else if(score>=60){
				grade = "D";
			} else {
				grade = "F";
			}	
	%>	
		<h2><%=name %>님의 시험점수는 <%=score %>입니다.</h2>
		<h2>평가결과는 <%=grade %>학점입니다.</h2>		
	<%
		} else {
	%>
		<h2>시험점수를 잘못 입력하셨습니다.</h2>
	<%		
		}
	%>
		<a href="/jspBase/scoreTest.html">시험점수입력</a>
	
</body>
</html>