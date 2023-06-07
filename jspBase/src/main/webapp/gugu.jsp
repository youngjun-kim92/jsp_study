<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	int dan = Integer.parseInt(request.getParameter("dan"));
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 출력창</title>
</head>
<body>	
<%-- 
	<%
	request.setCharacterEncoding("utf-8");	
	int dan = Integer.parseInt(request.getParameter("dan"));
	int result;
	%>
	<h2> ** <%=dan %>단 ** </h2>
	<%	
	for(int i=1; i<=9; i++) {
		result = dan * i;
	%>
		 <p><%=dan %> x <%=i %> = <%=result %></p>
	<%
	}
	%>
		<a href="/jspBase/gugu.html">다른 단 입력</a>--%>
	<table border="1" width="200">
		<tr align="center" bgcolor="lightgreen">
			<th colspan="2">** <%=dan %>단 **</th>
		</tr>
		<%
			for(int i=1; i<=9; i++) {							
		%>
		<tr>
				<td width="100"><%=dan %> x <%=i %></td>
				<td width="100"><%=dan*i %></td>
		</tr>
		<%
			}
		%>		
	</table>
	<a href="gugu.html">단 입력창으로 이동</a>
</body>
</html>