<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="jspEL.ex01.*, java.util.*"
%>
<%	
	request.setCharacterEncoding("utf-8");
	List memberList = new ArrayList();
	MemberVO memVo1 = new MemberVO("son", "1234", "손흥민", "son@gmail.com");
	MemberVO memVo2 = new MemberVO("lee", "5555", "이영표", "lee@gmail.com");
	//memberList에 집어넣기 add !
	memberList.add(memVo1);
	memberList.add(memVo2);
	request.setAttribute("memberListN", memberList);	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현언어로 하는 바인딩 실습</title>
</head>
<body>
	<jsp:forward page="member3.jsp" />
</body>
</html>