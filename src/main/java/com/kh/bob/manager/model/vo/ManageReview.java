package com.kh.bob.manager.model.vo;

import java.sql.Date;

public class ManageReview {
	private int rNo;
	private String rContents;
	private Date rWrite;
	private int rScore;
	private int shopNo;
	private String memberId;
	private String originalFilename;
	private String renameFilename;
	private char rStatus;
	
	public ManageReview() {}

	public ManageReview(int rNo, String rContents, Date rWrite, int rScore, int shopNo, String memberId,
			String originalFilename, String renameFilename, char rStatus) {
		super();
		this.rNo = rNo;
		this.rContents = rContents;
		this.rWrite = rWrite;
		this.rScore = rScore;
		this.shopNo = shopNo;
		this.memberId = memberId;
		this.originalFilename = originalFilename;
		this.renameFilename = renameFilename;
		this.rStatus = rStatus;
	}
	

	public int getrNo() {
		return rNo;
	}

	public void setrNo(int rNo) {
		this.rNo = rNo;
	}

	public String getrContents() {
		return rContents;
	}

	public void setrContents(String rContents) {
		this.rContents = rContents;
	}

	public Date getrWrite() {
		return rWrite;
	}

	public void setrWrite(Date rWrite) {
		this.rWrite = rWrite;
	}

	public int getrScore() {
		return rScore;
	}

	public void setrScore(int rScore) {
		this.rScore = rScore;
	}

	public int getShopNo() {
		return shopNo;
	}

	public void setShopNo(int shopNo) {
		this.shopNo = shopNo;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getOriginalFilename() {
		return originalFilename;
	}

	public void setOriginalFilename(String originalFilename) {
		this.originalFilename = originalFilename;
	}

	public String getRenameFilename() {
		return renameFilename;
	}

	public void setRenameFilename(String renameFilename) {
		this.renameFilename = renameFilename;
	}

	public char getrStatus() {
		return rStatus;
	}

	public void setrStatus(char rStatus) {
		this.rStatus = rStatus;
	}

	@Override
	public String toString() {
		return "ManageReview [rNo=" + rNo + ", rContents=" + rContents + ", rWrite=" + rWrite + ", rScore=" + rScore
				+ ", shopNo=" + shopNo + ", memberId=" + memberId + ", originalFilename=" + originalFilename
				+ ", renameFilename=" + renameFilename + ", rStatus=" + rStatus + "]";
	}
	
	
}
