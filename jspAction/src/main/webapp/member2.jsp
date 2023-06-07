<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, jspAction.ex01.*"
    %>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="memberVO" class="jspAction.ex01.MemberVO" scope="page"></jsp:useBean>
<jsp:useBean id="dao" class="jspAction.ex01.MemberDAO" scope="page"></jsp:useBean>
<% 	
	String command=request.getParameter("command");
	if(command!=null&&command.equals("addMember")) {
		String id=request.getParameter("id");
		String pwd=request.getParameter("pwd");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		memberVO.setId(id);
		memberVO.setPwd(pwd);
		memberVO.setName(name);
		memberVO.setEmail(email);
		dao.addMember(memberVO); 	//회원정보를 테이블에 추가
	}
	else if(command!=null && command.equals("delMember")) {
		String id=request.getParameter("id");
		dao.delMember(id);
	}
	List memberList=dao.listMembers();	//전체 회원 정보를 조회
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 목록창</title>
</head>
<body>
	<h2 align="center">회원 목록</h2>
	<table border="1" align="center">
		<tr align="center" bgcolor="lightgreen" width="700">
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>이메일</th>
			<th>가입일</th>
			<th>삭제</th>
		</tr>
		<% 
			if(memberList.size()==0) {
		%>
			<tr>
				<td colspan="6">
					<p align="center">등록된 회원이 없습니다</p>
				</td>
			</tr>
		<%
			}
			else {
				for(int i=0;i<memberList.size();i++) {
					MemberVO vo=(MemberVO)memberList.get(i);
		%>
			<tr align="center">
				<td><%=vo.getId() %></td>
				<td><%=vo.getPwd() %></td>
				<td><%=vo.getName() %></td>
				<td><%=vo.getEmail() %></td>
				<td><%=vo.getJoinDate() %></td>
				<td><a href="/jspAction/member.jsp?command=delMember&id=<%=vo.getId() %>">삭제</a></td>
			</tr>
		<% 	
				}
			}
		%>	
	</table>
	<p align="center"><a href="/jspAction/memberForm.html">새 회원 등록하기</a></p>
</body>
</html>