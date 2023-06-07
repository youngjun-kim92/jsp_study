<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    isELIgnored="false"
    %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포맷팅 태그 라이브러리</title>
</head>
<body>
	<h2>
		<c:set var="price" value="3500000" />
		<fmt:formatNumber var="priceNum" value="${price}" type="number"/>
		상품가격 : ${priceNum} 원  | 비교) 상품가격 : ${price}
	</h2>
	<h2>
		<c:set var="rate" value="0.2" />
		<fmt:formatNumber var="rateNum" value="${rate}" type="percent" />
		할인률 : ${rateNum}  | 비교)할인률 : ${rate}
	</h2>
	<h2>
		<c:set var="price2" value="2300" />
		<%-- <fmt:formatNumber var="priceNum2" value="${price2}" type="currency" /> --%>
		<%-- <fmt:formatNumber var="priceNum2" value="${price2}" type="currency" currencySymbol="$"/> --%>
		<fmt:formatNumber var="priceNum2" value="${price2}" type="currency" currencySymbol="$" groupingUsed="false"/>
		상품가격 : ${priceNum2}  | 비교) 상품가격 : ${price2}
	</h2>
	<h2>
		<c:set var="now" value="<%= new Date() %>" />
		<fmt:formatDate var="fnow" value="${now}" type="date" />
		<fmt:formatDate var="fnow2" value="${now}" type="date" dateStyle="full"/>
		<fmt:formatDate var="fnow3" value="${now}" type="date" dateStyle="short"/>
		오늘(전) : ${now} <br>
		오늘(후) : ${fnow} <br>
		오늘(full) : ${fnow2} <br>
		오늘(short) : ${fnow3} <br><br>
		<fmt:formatDate var="fnow4" value="${now}" type="time" timeStyle="short"/>
		<fmt:formatDate var="fnow5" value="${now}" type="time" timeStyle="full"/>		
		현재시간(short): ${fnow4} <br>
		현재시간(full): ${fnow5} <br>
		<fmt:formatDate var="fnow6" value="${now}" type="both" dateStyle="full" timeStyle="full"/>
		한국 현재 날짜와시간(full): ${fnow6} <br>
		<fmt:timeZone value="America/New York">
			<fmt:formatDate var="fnow7" value="${now}" type="both" dateStyle="full" timeStyle="full"/>
			미국(뉴욕) 현재 날짜와시간(full): ${fnow7} <br>
		</fmt:timeZone>		
	</h2>
</body>
</html>