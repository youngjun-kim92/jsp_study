package jspBase.ex02;

import java.sql.Date;

public class MemberVO {
//	필드
	private String id;
	private String pwd;
	private String name;
	private String email;
	private Date joinDate;
	
//	생성자
	public MemberVO() {
		System.out.println("MemberVO 객체 생성");
	}
	
// 	메서드
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}
	
}