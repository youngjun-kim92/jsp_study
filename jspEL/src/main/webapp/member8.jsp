<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, jspEL.ex02.*"
%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%-- MemberBean 클래스를 memBean 이라는 객체로 생성한 것 --%>
<jsp:useBean id="memBean" class="jspEL.ex02.MemberBean" scope="page" />
<%-- * => 이름이 같은것 세팅해줌 --%>
<jsp:setProperty property="*" name="memBean" />

<%-- Address 클래스를 addr 이라는 객체로 생성한 것 --%>
<jsp:useBean id="addr" class="jspEL.ex02.Address" scope="page" />
<%-- 바로 세팅하기 --%>
<jsp:setProperty property="city" name="addr" value="서울"/>
<jsp:setProperty property="zipcode" name="addr" value="01234"/>

<%
	memBean.setAddr(addr);
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
			<th>아이디</th><th>비밀번호</th><th>이름</th><th>이메일</th><th>도시</th><th>우편번호</th>
		</tr>		
		<tr align="center">
			<%-- 표현식으로 .get()연산자를 통해 필드에 접근 --%>
			<td><%= memBean.getId() %></td>
			<td><%= memBean.getPwd() %></td>
			<td><%= memBean.getName() %></td>
			<td><%= memBean.getEmail() %></td>
			<td><%= memBean.getAddr().getCity() %></td>
			<td><%= memBean.getAddr().getZipcode() %></td>
		</tr>		
		<tr align="center">
			<%-- 표현언어로 .연산자를 통해 필드에 접근 --%>
			<td>${memBean.id}</td>
			<td>${memBean.pwd}</td>
			<td>${memBean.name}</td>
			<td>${memBean.email}</td>
			<td>${memBean.addr.city}</td>
			<td>${memBean.addr.zipcode }</td>			
		</tr>
	</table>
	<p align="center"><a href="/jspEL/memberForm.html">새 회원 등록하기</a></p>
</body>
</html>