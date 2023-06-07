<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<c:set var="contextPath" value="${PageContext.request.ContextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSON</title>
</head>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	function fn_jsonprocess(_kind) {
		$.ajax({
			type:"post",
			async:false,
			url:"${contextPath}/json3",
			data:{kind:_kind},
			success: function (data, textStatus) {
				let jsonInfo=JSON.parse(data);			//서버에서 온 JSON데이터를 파싱
				if(_kind=='member') {
					let memberInfo="<h2>** 회원 정보 **</h2>";
					memberInfo+="=================<br>";
					for(let i in jsonInfo.members) {
						memberInfo+="이름 : "+jsonInfo.members[i].name+"<br>";
						memberInfo+="나이 : "+jsonInfo.members[i].age+"<br>";
						memberInfo+="직업 : "+jsonInfo.members[i].job+"<br>";
					}
					$('#output1').html(memberInfo);	
				}
				else if(_kind=='book') {
					let bookInfo="<h2>** 도서 정보 **</h2>";
					bookInfo+="=================<br>";
					for(let i in jsonInfo.books) {
						bookInfo+="제목 : " +jsonInfo.books[i].title+"<br>";
						bookInfo+="출판사 : " +jsonInfo.books[i].title+"<br>";
						imgURL=jsonInfo.books[i].image;
						bookInfo+="<img src=" +imgURL+"width=300, height=450><br><br>";
					}
					$('#output2').html(bookInfo);
				}
			},
			error: function (data, textStatus) {
				alert("에러가 발생!!");
			}
		});
	}
	
</script>
<body>
	<input type="button" value="회원정보 수신하기" onclick="fn_jsonprocess('member')">
	<div id="output1">
	</div>
	<input type="button" value="도서정보 수신하기" onclick="fn_jsonprocess('book')">
	<div id="output2">
	</div>
</body>
</html>