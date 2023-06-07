<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>다국어 페이지</title>
</head>
<body>
	<a href="main_ko.jsp">한국어</a> <a href="main_en.jsp">영어</a>
	<%-- 한국어를 기본으로 사용하겠다 --%>
	<fmt:setLocale value="ko_KR"/>
	<%-- 확장자는 쓰지 않고, resource.main에 있는 것을 쓰겠다 --%>
	<fmt:bundle basename="resource.main">
		<h1><fmt:message key="mem.title" /></h1>
		<h2><fmt:message key="mem.name" /></h2>
		<h2><fmt:message key="mem.address" /></h2>
		<h2><fmt:message key="mem.job" /></h2>
	</fmt:bundle>	
</body>
</html>