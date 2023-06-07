<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, jspEL.ex01.*"
%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%-- 회원정보를 저장할 MemberVO 객체를 memVo이름으로 생성한 것 --%>
<jsp:useBean id="memVo" class="jspEL.ex01.MemberVO" />
<jsp:setProperty property="*" name="memVo" />
<jsp:useBean id="memberList" class="java.util.ArrayList" />
<jsp:useBean id="memberMap" class="java.util.HashMap" />
<%
	memberMap.put("id","park");
	memberMap.put("pwd", "4515");
	memberMap.put("name", "박지성");
	memberMap.put("email", "parkjs@naver.com");
	MemberVO memVo2 = new MemberVO("min", "1222", "김민재", "minjae@gmail.com");
	//memVo : memberForm에서 넘어온 자료
	memberList.add(memVo);
	memberList.add(memVo2);
	//이 값을 넣은 memberList 객체 자체를 해시맵에 넣을 수도 있음
	memberMap.put("member", memberList);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보창</title>
</head>
<body>
	<h2 align="center">회원 목록</h2>
	<table border="1" align="center" width="700">
		<tr align="center" bgcolor="lightblue">
			<th>아이디</th><th>비밀번호</th><th>이름</th><th>이메일</th>
		</tr>		
		<tr align="center">
			<%-- 자료가 많으면 for문 돌림 --%>
			<td>${memberMap.id}</td>
			<td>${memberMap.pwd}</td>
			<td>${memberMap.name}</td>
			<td>${memberMap.email}</td>
		</tr>		
		<tr align="center">
			<td>${memberMap.member[0].id}</td>
			<td>${memberMap.member[0].pwd}</td>
			<td>${memberMap.member[0].name}</td>
			<td>${memberMap.member[0].email}</td>
		</tr>
		<tr align="center">
			<td>${memberMap.member[1].id}</td>
			<td>${memberMap.member[1].pwd}</td>
			<td>${memberMap.member[1].name}</td>
			<td>${memberMap.member[1].email}</td>
		</tr>
	</table>
	<p align="center"><a href="/jspEL/memberForm.html">새 회원 등록하기</a></p>
</body>
</html>