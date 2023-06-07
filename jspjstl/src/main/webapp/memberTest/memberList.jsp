<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, jspJstl.ex01.*"
    isELIgnored="false"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 목록</title>
</head>
<body>
	<table align="center" border="1">
		<tr align="center" bgcolor="lightblue">
			<th>아이디</th><th>비밀번호</th><th>이름</th><th>이메일</th><th>가입일</th>
		</tr>
		<tr>
		<c:choose>
			<%-- member_action.jsp에서 넘겨준 key의 이름을 ${}에 담기 --%>
			<c:when test="${mem == null}">
				<tr>
					<td colspan="5">등록된 회원이 없습니다.</td>
				</tr>					
			</c:when>
			<c:when test="${mem != null }">
				<c:forEach var="member" items="${mem}">
					<tr align="center">
						<td>${member.id}</td>
						<td>${member.pwd}</td>
						<td>${member.name}</td>
						<td>${member.email}</td>
						<td>${member.joinDate}</td>
					</tr>
				</c:forEach>
			</c:when>
		</c:choose>		
		</tr>		
	</table>
</body>
</html>