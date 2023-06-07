<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"    
    isELIgnored="false"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSON 문제</title>
</head>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	function fn_jsonProcess(_category){
		$.ajax({
			type: "post",
			async: false,
			url: "${contextPath}/json3",			
			data: {category: _category},
			success: function (data, textStatus) {
				//서버에서 온 JSON데이터를 파싱
				let jsonInfo = JSON.parse(data);
				if(_category == 'member') {										
					let memberInfo = "<h2>** 회원정보 **</h2>";
					memberInfo += "========================<br>";
					for(let i in jsonInfo.members) {
						memberInfo += "이름 : " + jsonInfo.members[i].name + "<br>";
						memberInfo += "나이 : " + jsonInfo.members[i].age + "<br>";
						memberInfo += "직업 : " + jsonInfo.members[i].job + "<br><br>";
					}
					$('#output1').append(memberInfo);
				} else if(_category == 'book') {					
					let bookInfo = "<h2>** 도서정보 **</h2>";
						bookInfo += "========================<br>";
					for(let i in jsonInfo.books) {
						bookInfo += "제목 : " + jsonInfo.books[i].title + "<br>";
						bookInfo += "작가 : " + jsonInfo.books[i].writer + "<br>";
						imgURL = jsonInfo.books[i].image;
						bookInfo += "<img src=" + imgURL + " width=300, height=450><br><br>";
					}
					$('#output2').append(bookInfo);
				}
			},
			error: function (data, textStatus, error) {
				alert("에러가 발생!" + error);	
			}		
		});
	}
</script>
<body>
	<input type="button" value="회원정보 수신하기" onclick="fn_jsonProcess('member')">
	<div id="output1">		
	</div>
	<br>
	<input type="button" value="도서정보 수신하기" onclick="fn_jsonProcess('book')">	
	<div id="output2">
	</div>
</body>
</html>