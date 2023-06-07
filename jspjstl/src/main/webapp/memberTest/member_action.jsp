<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, jspJstl.ex01.*"    
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리 DB처리</title>
<%-- useBean : Bean(자바클래스 객체)을 생성하는 액션태그 --%>
<jsp:useBean id="memVo" class="jspJstl.ex01.MemberVO" />
<%-- setProperty : setter역할. 
컬럼이름과 필드이름이 같으면 property에 *해줬을 때 같은 이름을 찾아서 넣어줌 (useBean의 id를 name으로 씀) --%>
<jsp:setProperty property="*" name="memVo"/>
<%-- DB관련 작업 --%>
<%
	MemberDAO dao = new MemberDAO();
	//회원추가 메서드 : 회원정보를 받아서 쿼리 insert문 수행
	dao.addMember(memVo);
	//방금 추가된 회원정보를 포함한 회원정보 List 
	List memberList = dao.listMembers();
	//왼쪽의 key에 오른쪽의 memberList value를 담음 
	request.setAttribute("mem", memberList);
%>
</head>
<body>
	<jsp:forward page="memberList.jsp" />
</body>
</html>