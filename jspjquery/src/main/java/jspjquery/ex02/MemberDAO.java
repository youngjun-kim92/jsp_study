package jspjquery.ex02;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private DataSource dataFactory;
	
	public MemberDAO() {
		try {
			//커넥션 풀은 JNDI(Java Naming Directory Interface)를 이용
			// JNDI : 필요한 자원을 키와 값의 쌍으로 저장 한 후, 키를 이용하여 값을 얻는 방식
			Context ctx = new InitialContext();
			Context envContext = (Context)ctx.lookup("java:/comp/env");
			//Datasource : Servers - context.xml에 있는 resource 부분을 읽어옴
			dataFactory = (DataSource)envContext.lookup("jdbc/oracle");			
		} catch (Exception e) {
			//연결오류 메시지가 난다면 이 메시지가 뜨고 Servers프로젝트 - context.xml확인
			System.out.println("DB연결오류");
		}
	}
	//ID 중복 체크 메서드
	public boolean overlappedID(String id) {
		boolean result = false;
		try {
			conn=dataFactory.getConnection();
			String query = "select decode(count(*), 1, 'true', 'false') as result from membertbl where id=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			//처음으로 돌려놓음
			rs.next();
			result = Boolean.parseBoolean(rs.getString("result"));
			rs.close();
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			System.out.println("ID 중복체크 처리 중 에러 발생!!");
		}
		return result;
	}
	
}
