<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	List dataList=new ArrayList();
	dataList.add("홍길동");
	dataList.add(50);
	dataList.add(true);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>반복문</title>
</head>
<body>
	<c:set var="list" value="<%=dataList %>"/>
	<c:forEach var="i" begin="1" end="10" step="2" varStatus="loop">
		<c:if test="${loop.first}">
			<p>=======================================</p>
		</c:if>
		<h2> 안녕하세요(i값=${i}) => 반복횟수 : ${loop.count} </h2>
		<c:if test="${loop.last}">
			<p>=======================================</p>
		</c:if>
	</c:forEach>
	<c:forEach var="data" items="${list}" varStatus="idx">
		<h2>${data} ----- ${idx.index}</h2>
	</c:forEach>
	<c:set var="fruits" value="참외, 수박, 포도, 메론, 키위, 사과, 바나나"/>
	<c:forTokens var="token" items="${fruits}" delims=",">
		<h2>${token}</h2>
	</c:forTokens>
</body>
</html>