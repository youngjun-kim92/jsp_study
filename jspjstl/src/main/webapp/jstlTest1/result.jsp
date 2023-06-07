<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="name" value="${param.name}" scope="page" />
<c:set var="score" value="${param.score}" scope="page" />
<c:set var="rank" value="" scope="page" />
<c:set var="contextPath" value="${pageContext.request.contextPath}" scope="page" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학점 결과 창</title>
</head>
<body>	
	<c:choose>
		<c:when test="${ score >=0 && score <= 100}">
			<c:choose>
				<c:when test="${score >=90 }"><c:set var="rank" value="A"/></c:when>
				<c:when test="${score >=80 }"><c:set var="rank" value="B"/></c:when>
				<c:when test="${score >=70 }"><c:set var="rank" value="C"/></c:when>
				<c:when test="${score >=60 }"><c:set var="rank" value="D"/></c:when>
				<c:when test="${score < 60 }"><c:set var="rank" value="F"/></c:when>				
			</c:choose>
			<h2> 학점 결과 </h2>
			<h3>${name}님의 시험 점수는 ${score}점 입니다.</h3>
			<h3>결과 : ${rank}학점</h3>
		<!-- 	<c:choose>			
				<c:when test="${score >=90 }"><h3>결과 : A학점</h3></c:when>
				<c:when test="${score >=80 }"><h3>결과 : B학점</h3></c:when>
				<c:when test="${score >=70 }"><h3>결과 : C학점</h3></c:when>
				<c:when test="${score >=60 }"><h3>결과 : D학점</h3></c:when>
				<c:when test="${score < 60 }"><h3>결과 : F학점</h3></c:when>							
			</c:choose> -->				
		</c:when>
		<c:otherwise>
			<h2> 점수를 잘못 입력했습니다. 다시 입력해주세요. </h2>
			<a href="${contextPath}/jstlTest1/score.jsp">다시 입력하기</a>
		</c:otherwise>		
	</c:choose>
</body>
</html>