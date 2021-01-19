package com.kh.bob.notice.model.vo;

import java.sql.Date;

public class Comment {
	private int cNo;			// 댓글 번호
	private String cContents;	// 댓글 내용
	private Date cWrite;		// 댓글 작성일
	private int bNo;			// 게시글 번호
	private String mId;			// 댓글 작성자
	
	public Comment() {}

	public Comment(int cNo, String cContents, Date cWrite, int bNo, String mId) {
		super();
		this.cNo = cNo;
		this.cContents = cContents;
		this.cWrite = cWrite;
		this.bNo = bNo;
		this.mId = mId;
	}

	public int getcNo() {
		return cNo;
	}

	public void setcNo(int cNo) {
		this.cNo = cNo;
	}

	public String getcContents() {
		return cContents;
	}

	public void setcContents(String cContents) {
		this.cContents = cContents;
	}

	public Date getcWrite() {
		return cWrite;
	}

	public void setcWrite(Date cWrite) {
		this.cWrite = cWrite;
	}

	public int getbNo() {
		return bNo;
	}

	public void setbNo(int bNo) {
		this.bNo = bNo;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	@Override
	public String toString() {
		return "Comment [cNo=" + cNo + ", cContents=" + cContents + ", cWrite=" + cWrite + ", bNo=" + bNo + ", mId="
				+ mId + "]";
	}
}
