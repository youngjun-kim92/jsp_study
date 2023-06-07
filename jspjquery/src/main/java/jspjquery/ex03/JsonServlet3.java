package jspJquery.ex03;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;


@WebServlet("/json3")
public class JsonServlet3 extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}
	
	private void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String category = (String)request.getParameter("category");
		//JSONObject	totalObject= (JSONObject)parser.parse(jsonInfo);
		
		//공통으로 사용할 json객체
		JSONObject	totalObject = new JSONObject();		
		JSONArray jsonArray = new JSONArray();
		
		if(category.equals("member")) {				
			//회원정보가 들어갈 memberInfo JSON객체 생성
			JSONObject memberInfo = new JSONObject();
			memberInfo.put("name", "홍길동");
			memberInfo.put("age", 50);
			memberInfo.put("job", "도적");
			//memberInfo를 배열(memberArray)에 넣기
			jsonArray.add(memberInfo);
			
			//회원정보가 들어갈 memberInfo 2번째 JSON객체 생성
			memberInfo = new JSONObject();
			memberInfo.put("name", "손흥민");
			memberInfo.put("age", 31);
			memberInfo.put("job", "축구선수");
			jsonArray.add(memberInfo);
			
			//회원정보가 들어갈 memberInfo 3번째 JSON객체 생성
			memberInfo = new JSONObject();
			memberInfo.put("name", "김철수");
			memberInfo.put("age", 25);
			memberInfo.put("job", "영업사원");		
			jsonArray.add(memberInfo);
			
			totalObject.put("members", jsonArray);
		} else if(category.equals("book")) {		
			//도서1
			JSONObject bookInfo = new JSONObject();
			bookInfo.put("title", "JS jQuery 입문");
			bookInfo.put("writer", "한빛미디어 : 윤인성");
			bookInfo.put("image", "http://127.0.0.1:8090/jspJquery/images/jajq.png");
			//memberInfo를 배열(memberArray)에 넣기
			jsonArray.add(bookInfo);
			
			//도서2
			bookInfo = new JSONObject();
			bookInfo.put("title", "Node.js 프로그래밍");
			bookInfo.put("writer", "한빛미디어 : 윤인성");
			bookInfo.put("image", "http://127.0.0.1:8090/jspJquery/images/node.jpg");
			//memberInfo를 배열(memberArray)에 넣기
			jsonArray.add(bookInfo);
			
			totalObject.put("books", jsonArray);
		}

		String jsonInfo = totalObject.toJSONString(); //JSON객체를 문자열로 변환
		//출력
		out.print(jsonInfo);
	}
}
