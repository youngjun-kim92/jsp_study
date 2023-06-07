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
			//JNDI(Java Naming and Directory Interface)를 이용
			//필요한 자원을 키/값의 쌍으로 저장한 후 필요한 키를 이용해 값을 얻는 방법
			Context ctx=new InitialContext();
			Context envContext=(Context)ctx.lookup("java:/comp/env");
			dataFactory=(DataSource)envContext.lookup("jdbc/oracle");
		} catch (Exception e) {
			System.out.println("DB연결 오류");
		}
	}
	
	//ID중복 체크 메소드
	public boolean overlappedID(String id) {
		boolean result=false;
		try {
			conn=dataFactory.getConnection();
			String query="select decode(count(*), 1, 'true', 'false' as result from membertbl where id=?";
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, id);
			ResultSet rs=pstmt.executeQuery();
			rs.next();
			result=Boolean.parseBoolean(rs.getString("result"));
			rs.close();
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			System.out.println("DB 처리중 에러발생");
		}
		return result;
	}
}
