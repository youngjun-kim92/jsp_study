<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, jspAction.ex01.*"    %>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="memberVO" class="jspAction.ex01.MemberVO" scope="page"/>
<jsp:useBean id="dao" class="jspAction.ex01.MemberDAO" scope="page"/>
<%
	//지금 회원가입 되어있는 사람 jsp로 보여주기	
	String command = request.getParameter("command");	
	if(command != null && command.equals("addMember")){
	/*	이번엔 이걸 이용하지 않을 것
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String email = request.getParameter("email");		
		memberVO.setId(id);
		memberVO.setPwd(pwd);
		memberVO.setName(name);
		memberVO.setEmail(email);	*/
%>
		<jsp:setProperty property="id" name="memberVO" value='<%=request.getParameter("id") %>'/>
		<jsp:setProperty property="pwd" name="memberVO" value='<%=request.getParameter("pwd") %>'/>
		<jsp:setProperty property="name" name="memberVO" value='<%=request.getParameter("name") %>'/>
		<jsp:setProperty property="email" name="memberVO" value='<%=request.getParameter("email") %>'/>
<%
		//addMember() : insert문이 수행되고 executeUpdate();로 등록 실행
		dao.addMember(memberVO); //회원정보를 테이블에 추가 
	} else if(command != null && command.equals("delMember")) {
		String id = request.getParameter("id");
		dao.delMember(id);
	}
	List memberList = dao.listMembers(); //전체 회원 정보를 조회
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 목록창</title>
</head>
<body>
	<h2 align="center">회원 목록</h2>
	<table border="1" align="center" width="700">
		<tr align="center" bgcolor="lightblue">
			<th>아이디</th><th>비밀번호</th><th>이름</th><th>이메일</th><th>가입일</th><th>삭제</th>
		</tr>
		<%
			if( memberList.size() == 0 ) { //회원이 한명도 없을 경우				
		%>
			<tr>
				<td colspan="6"><p align="center">등록된 회원이 없습니다.</p></td>
			</tr>
		<%
			} else {
				for(int i=0; i<memberList.size(); i++) {
					MemberVO vo=(MemberVO)memberList.get(i);
		%>
			<tr align="center">
				<td><%=vo.getId() %></td><td><%=vo.getPwd() %></td><td><%=vo.getName() %></td>
				<td><%=vo.getEmail() %></td><td><%=vo.getJoinDate() %></td>
				<!-- 삭제를 누르면 command에 delMember가 들어가고 id값이 넘어감 -->
				<td><a href="/jspAction/member.jsp?command=delMember&id=<%=vo.getId() %>">삭제</a></td>
			</tr>
		<%
				}//for END
			}//else END
		%>		
	</table>
	<p align="center"><a href="/jspAction/memberForm.html">새 회원 등록하기</a></p>
</body>
</html>