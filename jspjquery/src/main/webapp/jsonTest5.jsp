<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<c:set var="contextPath" value="${PageContext.request.ContextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서버로 JSON 데이터 전송</title>
</head>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	function fn_json_send() {
		let jsonData='{"name":"홍길동","age":50,"job":"도적"}';
		$.ajax({
			type:"post",
			async:false,
			url:"${contextPath}/json1"
			data:(jsonInfo:jsonDatra),
			success: function (data, textStatus) {
				
			},
			error: function (data, textStatus) {
				alert("에러가 발생!!");
			}
		});
	}
</script>
<body>
	<input type="button" value="서버로 JSON데이터 전송" onclick="fn_json_send()">
</body>
</html>