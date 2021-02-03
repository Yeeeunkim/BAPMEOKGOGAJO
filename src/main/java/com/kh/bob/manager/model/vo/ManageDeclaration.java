package com.kh.bob.manager.model.vo;

import java.sql.Date;

public class ManageDeclaration {
	private int dNo;
	private String memberId;
	private char dStatus;
	private int sNo;
	private String sName;
	private String dComment;
	private Date dWrite;
	
	public ManageDeclaration() {}

	public ManageDeclaration(int dNo, String memberId, char dStatus, int sNo, String sName, String dComment,
			Date dWrite) {
		super();
		this.dNo = dNo;
		this.memberId = memberId;
		this.dStatus = dStatus;
		this.sNo = sNo;
		this.sName = sName;
		this.dComment = dComment;
		this.dWrite = dWrite;
	}

	public int getdNo() {
		return dNo;
	}

	public void setdNo(int dNo) {
		this.dNo = dNo;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public char getdStatus() {
		return dStatus;
	}

	public void setdStatus(char dStatus) {
		this.dStatus = dStatus;
	}

	public int getsNo() {
		return sNo;
	}

	public void setsNo(int sNo) {
		this.sNo = sNo;
	}

	public String getsName() {
		return sName;
	}

	public void setsName(String sName) {
		this.sName = sName;
	}

	public String getdComment() {
		return dComment;
	}

	public void setdComment(String dComment) {
		this.dComment = dComment;
	}

	public Date getdWrite() {
		return dWrite;
	}

	public void setdWrite(Date dWrite) {
		this.dWrite = dWrite;
	}

	@Override
	public String toString() {
		return "ManageDeclaration [dNo=" + dNo + ", memberId=" + memberId + ", dStatus=" + dStatus + ", sNo=" + sNo
				+ ", sName=" + sName + ", dComment=" + dComment + ", dWrite=" + dWrite + "]";
	}
	
}