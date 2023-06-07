package jspjquery.ex03;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

@WebServlet("/json1")
public class JsonServlet1 extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}
	
	private void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String jsonInfo = (String)request.getParameter("jsonInfo");
		
		//json 데이터를 처리하기 위해 JSONParser 객체 생성
		JSONParser parser = new JSONParser();
		//데이터를 주고받을 때는 무조건 try-catch
		try {
			 //전송된 json데이터를 파싱(분석해서 분리)
			JSONObject	jsonObject = (JSONObject)parser.parse(jsonInfo);
			System.out.println(" ** 회원정보 ** ");
			System.out.println("이름: " + jsonObject.get("name"));
			System.out.println("나이: " + jsonObject.get("age"));
			System.out.println("직업: " + jsonObject.get("job"));
		} catch (Exception e) {
			System.out.println("JSON 데이터 처리 중 오류!!!");
			e.printStackTrace();
		}
	}
}
