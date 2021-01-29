package com.kh.bob.member.model.vo;

import java.sql.Date;

public class Member {
	private String member_id;
	private String member_pwd;
	private String member_name;
	private String phone;
	private String email;
	private String gender;
	private Date member_enroll;
	private String member_status;
	private String member_birth; 
	private int auth_code;
	
	public Member() {}

	public Member(String member_id, String member_pwd, String member_name, String phone, String email, String gender,
			Date member_enroll, String member_status, String member_birth, int auth_code) {
		super();
		this.member_id = member_id;
		this.member_pwd = member_pwd;
		this.member_name = member_name;
		this.phone = phone;
		this.email = email;
		this.gender = gender;
		this.member_enroll = member_enroll;
		this.member_status = member_status;
		this.member_birth = member_birth;
		this.auth_code = auth_code;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMember_pwd() {
		return member_pwd;
	}

	public void setMember_pwd(String member_pwd) {
		this.member_pwd = member_pwd;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getMember_enroll() {
		return member_enroll;
	}

	public void setMember_enroll(Date member_enroll) {
		this.member_enroll = member_enroll;
	}

	public String getMember_status() {
		return member_status;
	}

	public void setMember_status(String member_status) {
		this.member_status = member_status;
	}

	public String getMember_birth() {
		return member_birth;
	}

	public void setMember_birth(String member_birth) {
		this.member_birth = member_birth;
	}

	public int getAuth_code() {
		return auth_code;
	}

	public void setAuth_code(int auth_code) {
		this.auth_code = auth_code;
	}

	@Override
	public String toString() {
		return "Member [member_id=" + member_id + ", member_pwd=" + member_pwd + ", member_name=" + member_name
				+ ", phone=" + phone + ", email=" + email + ", gender=" + gender + ", member_enroll=" + member_enroll
				+ ", member_status=" + member_status + ", member_birth=" + member_birth + ", auth_code=" + auth_code
				+ "]";
	}
}

