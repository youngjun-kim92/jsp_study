<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="jspEL.ex01.*"
%>
<%
	//memberVO객체를 생성하고, 속성(필드)에 회원정보를 넣은 후, 그 회원정보를 member라는 이름으로 다시 setAttribute()함
	request.setCharacterEncoding("utf-8");
	MemberVO member = new MemberVO("park", "1245", "박찬호", "park@naver.com");
	//왼쪽에 있는 "member"에 오른쪽의 member(위에서 생성한 객체)를 넣는 것
	request.setAttribute("member", member); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현언어로 하는 바인딩 실습</title>
</head>
<body>
	<jsp:forward page="member2.jsp" />
</body>
</html>