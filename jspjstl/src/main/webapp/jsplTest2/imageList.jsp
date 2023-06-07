<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품목록리스트</title>
</head>
<body>
	<h2 align="center">상품목록리스트</h2>
	<table border="1" width="900" align="center">
		<tr align="center" bgcolor="lightgreen" width="700">
			<th>상품이미지</th>
			<th>상품명</th>
			<th>선택하기</th>
		</tr>
		<c:forEach var="i" begin="0" end="4" step="1">
			<tr align="center">
			<td width="300">
				<img alt="1" src="../images/${i}.png">
			</td>
			<td width="300">
				냉장고 ${i}
			</td>
			<td width="300">
				<input name="chk${i}" type="checkbox">
			</td>
		</tr>
		</c:forEach>
	</table>
	
</body>
</html>