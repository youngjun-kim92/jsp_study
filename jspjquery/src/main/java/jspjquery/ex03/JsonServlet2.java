package jspjquery.ex03;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;


@WebServlet("/json2")
public class JsonServlet2 extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}
	
	private void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		//문자열로 만들기 위해 정보를 다 담을 JSON객체 생성
		JSONObject totalMember = new JSONObject(); 
		
		//JSON객체를 저장할 JSON배열 생성
		JSONArray memberArray = new JSONArray();
		
		//회원정보가 들어갈 memberInfo JSON객체 생성
		JSONObject memberInfo = new JSONObject();
		//put("key", value)
		memberInfo.put("name", "홍길동");
		memberInfo.put("age", 50);
		memberInfo.put("job", "도적");
		//memberInfo를 배열(memberArray)에 넣기
		memberArray.add(memberInfo);
		
		//회원정보가 들어갈 memberInfo 2번째 JSON객체 생성
		memberInfo = new JSONObject();
		memberInfo.put("name", "손흥민");
		memberInfo.put("age", 31);
		memberInfo.put("job", "축구선수");
		memberArray.add(memberInfo);
		
		//회원정보가 들어갈 memberInfo 3번째 JSON객체 생성
		memberInfo = new JSONObject();
		memberInfo.put("name", "김철수");
		memberInfo.put("age", 25);
		memberInfo.put("job", "영업사원");		
		memberArray.add(memberInfo);
				
		//out.print(보낼 JSON을 문자열로 변환);
		//데이터가 한개일 때는 memberInfo.toString(); 하면 됐는데, 지금은 정보를 다 담을 JSON객체 생성 = totalMember
		//정보를 totalMember에 다 담음 
		totalMember.put("members", memberArray);
		//문자열로 변환
		String jsonInfo = totalMember.toJSONString();
		//출력
		out.print(jsonInfo);		
	}
}
