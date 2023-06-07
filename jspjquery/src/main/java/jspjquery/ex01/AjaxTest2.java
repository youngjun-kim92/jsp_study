package jspJquery.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ajax2")
public class AjaxTest2 extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHadle(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHadle(request, response);
	}
	
	private void doHadle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");		
		PrintWriter out = response.getWriter();
		out.print("<main>");
		out.print("<book>");
		out.print("<title>JS jQuery 입문</title>");
		out.print("<writer>한빛미디어 : 윤인성</writer>");
		out.print("<image>http://127.0.0.1:8090/jspJquery/images/jajq.png</image>");
		out.print("</book>");
		
		out.print("<book>");
		out.print("<title>Node.js 프로그래밍</title>");
		out.print("<writer>한빛미디어 : 윤인성</writer>");
		out.print("<image>http://127.0.0.1:8090/jspJquery/images/node.jpg</image>");
		out.print("</book>");
		out.print("</main>");
	}
}
