<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포맷팅 태그 라이브러리</title>
</head>
<body>
	<c:set var="title" value="computer"/>
	<c:set var="title2" value="KOREA"/>
	<c:set var="str" value="mp"/>
	<h2>
		문자열의 길이 : ${fn:length(title)} <br>
		문자를 대문자로 : ${fn:toUpperCase(title)} <br>
		문자를 소문자로 : ${fn:toLowerCase(title2)} <br>
		일부 문자만 : ${fn:substring(title,3,6)} <br>
		문자 위치 : ${fn:indexOf(title,str)} <br>
		문자 포함여부 : ${fn:contains(title,str)} <br>
		대체하기 : ${fn:replace(title,"o","i")} <br>
	</h2>
</body>
</html>