package com.kh.bob.manager.model.vo;

import java.sql.Date;

public class DeclationReple {
	private int dNo;
	private String dRComment;
	private Date dRWrite;
	
	public DeclationReple() {}

	public DeclationReple(int dNo, String dRComment, Date dRWrite) {
		super();
		this.dNo = dNo;
		this.dRComment = dRComment;
		this.dRWrite = dRWrite;
	}

	public int getdNo() {
		return dNo;
	}

	public void setdNo(int dNo) {
		this.dNo = dNo;
	}

	public String getdRComment() {
		return dRComment;
	}

	public void setdRComment(String dRComment) {
		this.dRComment = dRComment;
	}

	public Date getdRWrite() {
		return dRWrite;
	}

	public void setdRWrite(Date dRWrite) {
		this.dRWrite = dRWrite;
	}

	@Override
	public String toString() {
		return "DeclationReple [dNo=" + dNo + ", dRComment=" + dRComment + ", dRWrite=" + dRWrite + "]";
	}
	
}
