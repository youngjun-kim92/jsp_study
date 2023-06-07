package jspFile.ex01;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/download.do")
public class FileDownload extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}
	
	private void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		//파일이 저장되어 있는 경로
		String filePath = "D:\\mornstarY\\file_upload";
		//받아갈 파일 이름 (request는 객체이므로 String 캐스팅)
		String fileName = (String)request.getParameter("fileName");
		
		// OutputStream : 파일을 내려받는 것  // InputStream : 외부 파일을 읽어오는 것 
		OutputStream outS = response.getOutputStream();
		String downFile = filePath + "\\" + fileName;
		// file  객체를 
		File file = new File(downFile);
		
		//다운받을 수 있게 헤더 준비
		response.setHeader("Cache-Control", "no-cache");
		//추가시킬 이미지
		response.addHeader("Content-disposition", "attachment; fileName=" + fileName);
		
		FileInputStream finputS = new FileInputStream(file);
		//읽어들이는 기본 크기 설정 (1024=1kb) 8kb 씩 읽음
		byte[] buffer = new byte[1024*8];
		
		while(true) {
			int count = finputS.read(buffer);
			if(count == -1) { //더 이상 읽을 것이 없으면 -1 => while문 탈출
				break; 
			}
			//0부터 count까지 다운로드
			outS.write(buffer, 0, count);
		}
		finputS.close();
		outS.close();		
	}//doHandle() End
}
