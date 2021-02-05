package com.kh.bob.notice.model.vo;

import java.sql.Date;

public class Board {
	private int bNo;			// 게시글 번호
	private String bTitle;		// 게시글 제목
	private String bContents;	// 게시글 내용
	private Date bWrite;		// 게시글 작성일
	private char bStatus;		// 게시글 상태
	private int cateCode;		// 게시글 카테고리
	private String mId;			// 게시글 작성자
	
	public Board() {}

	public Board(int bNo, String bTitle, String bContents, Date bWrite, char bStatus, int cateCode, String mId) {
		super();
		this.bNo = bNo;
		this.bTitle = bTitle;
		this.bContents = bContents;
		this.bWrite = bWrite;
		this.bStatus = bStatus;
		this.cateCode = cateCode;
		this.mId = mId;
	}

	public int getbNo() {
		return bNo;
	}

	public void setbNo(int bNo) {
		this.bNo = bNo;
	}

	public String getbTitle() {
		return bTitle;
	}

	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}

	public String getbContents() {
		return bContents;
	}

	public void setbContents(String bContents) {
		this.bContents = bContents;
	}

	public Date getbWrite() {
		return bWrite;
	}

	public void setbWrite(Date bWrite) {
		this.bWrite = bWrite;
	}

	public char getbStatus() {
		return bStatus;
	}

	public void setbStatus(char bStatus) {
		this.bStatus = bStatus;
	}

	public int getCateCode() {
		return cateCode;
	}

	public void setCateCode(int cateCode) {
		this.cateCode = cateCode;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	@Override
	public String toString() {
		return "Board [bNo=" + bNo + ", bTitle=" + bTitle + ", bContents=" + bContents + ", bWrite=" + bWrite
				+ ", bStatus=" + bStatus + ", cateCode=" + cateCode + ", mId=" + mId + "]";
	}
}