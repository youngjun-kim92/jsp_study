<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, jspEL.ex01.*"
    isELIgnored="false"
%>
    <%-- useBean : new 연산자 대신 사용 --%>
<jsp:useBean id="memVo" class="jspEL.ex01.MemberVO" scope="page" />
<jsp:setProperty property="name" name="memVo" value="홍길동" />
<jsp:useBean id="list" class="java.util.ArrayList" scope="page" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fifth EL</title>
</head>
<body>
	<h1>표현 언어로 여러가지 데이터 출력(empty 연산자)</h1>
	<h2> 	<%-- 객체가 비어있는지 물어봐서 true / false --%>
		\${ empty memVo } : ${ empty memVo } <br> <%-- 홍길동이라는 값이 있으므로 false --%>
		\${ not empty memVo } : ${ not empty memVo } <br> <%-- 홍길동이라는 값이 있으므로 true --%>
		\${ empty list } : ${ empty list } <br>
		\${ not empty list } : ${ not empty list } <br>		
		\${ empty "hello" } : ${ empty "hello" } <br>
		\${ empty null } : ${ empty null } <br>
		\${ empty "" } : ${ empty "" } <br>		
	</h2>
</body>
</html>
