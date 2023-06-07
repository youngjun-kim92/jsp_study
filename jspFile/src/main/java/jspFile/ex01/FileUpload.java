package jspFile.ex01;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

@WebServlet("/upload.do")
public class FileUpload extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}
	
	private void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		//이미지 이름이 한글이어도 깨지지 않도록
		String encoding = "utf-8";
		//업로드 할 파일 경로 지정
		File currentPath = new File("D:\\mornstarY\\file_upload");
		//저장소 관련 클래스 (FileItem 오브젝트 생성 클래스)
		DiskFileItemFactory factory = new DiskFileItemFactory();
		//저장소 지정
		factory.setRepository(currentPath);
		//최대 업로드 가능한 파일 크기 1MB로 설정
		factory.setSizeThreshold(1024*1024);
		//업로드 준비
		ServletFileUpload upload = new ServletFileUpload(factory);
		//파일 업로드&다운로드 시 무조건 try-catch
		try {
			List items = upload.parseRequest(request);
			for(int i=0; i<items.size(); i++) {
				FileItem fileItem = (FileItem)items.get(i);
				//FormField : 글자데이터, 그렇지 않으면 : file데이터
				if(fileItem.isFormField()) {
					//getFieldName() : 필드명(name, title, content)
					//getString() : 데이터가 폼데이터(글자데이터)인 경우 입력된 값을 인코딩하여 리턴
					System.out.println(fileItem.getFieldName() + " : " + fileItem.getString(encoding));
				} else {
					//getFieldName() : 필드명(file1, file2)
					System.out.println("매개변수명 : " + fileItem.getFieldName());
					//getName() : 업로드한 파일명 혹은 파일경로 리턴
					System.out.println("파일명 : " + fileItem.getName());
					//getSize() : 업로드한 파일의 크기 반환
					System.out.println("파일명 : " + fileItem.getSize() + "bytes");
					//이미지가 0보다 클 때만 받음
					if(fileItem.getSize() > 0) {
						//업로드 하려는 사진 파일 경로
						int idx = fileItem.getName().lastIndexOf("\\");						
						if(idx == -1) { // "\\"를 발견하지 못했다.
							//운영체제에 따라 경로를 입력시 \\대신 /를 입력하기도 하므로
							idx = fileItem.getName().lastIndexOf("/");									
						}
						//진짜 파일 이름						
						String fileName = fileItem.getName().substring(idx + 1);
						File uploadFile = new File(currentPath + "\\" + fileName);
						//저장소에 파일 업로드(쓴다)
						fileItem.write(uploadFile);						
					}
				}
			}
		} catch (Exception e) {
			System.out.println("파일 업로드 실패 : " + e.getMessage());
		} 
	} //dohandle() End

}
