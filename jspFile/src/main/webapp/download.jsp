<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<c:set var="file1" value="${param.img1}"/>
<c:set var="file2" value="${param.img2}"/>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다운로드 창</title>
</head>
<body>
	첫번째 이미지 <c:out value="${fil1}"/>
	<c:if test="${not empty file1}">
		<img alt="" src="${contextPath}/download.do?fileName=${file1}" width=400 height=250><br>
		<a href="${contextPath}/download.do?fileName=${file1}">파일 내려받기</a>
	</c:if>
	<br><br>
	두번째 이미지 <c:out value="${fil2}"/>
	<c:if test="${not empty file2}">
		<img alt="" src="${contextPath}/download.do?fileName=${file2}" width=400 height=250><br>
		<a href="${contextPath}/download.do?fileName=${file2}">파일 내려받기</a>
	</c:if>
</body>
</html>