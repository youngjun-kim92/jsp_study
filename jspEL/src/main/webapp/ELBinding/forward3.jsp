<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="jspEL.ex01.*, java.util.*"%>
<%
	request.setCharacterEncoding("utf-8");
	List memberList=new ArrayList();
	MemberVO memVo1=new MemberVO("park","1234","박찬호","park@gmail.com");
	MemberVO memVo2=new MemberVO("son","1234","손흥민","son@gmail.com");
	memberList.add(memVo1);
	memberList.add(memVo2);
	request.setAttribute("memberList", memberList);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>바인딩 실습</title>
</head>
<body>
	<jsp:forward page="member1.jsp"/>
</body>
</html>