package com.kh.bob.reserve.model.vo;

import java.sql.Date;

public class ReserveInfo {
	private int rNo;
	private Date rTime;
	private char rStatus;
	private String rName;
	private String rPhone;
	private String rComment;
	private Date rAd;
	private Date rPay;
	private String memberId;
	private int sNo;
	
	public ReserveInfo() {}

	public ReserveInfo(int rNo, Date rTime, char rStatus, String rName, String rPhone, String rComment, Date rAd,
			Date rPay, String memberId, int sNo) {
		super();
		this.rNo = rNo;
		this.rTime = rTime;
		this.rStatus = rStatus;
		this.rName = rName;
		this.rPhone = rPhone;
		this.rComment = rComment;
		this.rAd = rAd;
		this.rPay = rPay;
		this.memberId = memberId;
		this.sNo = sNo;
	}

	public int getrNo() {
		return rNo;
	}

	public void setrNo(int rNo) {
		this.rNo = rNo;
	}

	public Date getrTime() {
		return rTime;
	}

	public void setrTime(Date rTime) {
		this.rTime = rTime;
	}

	public char getrStatus() {
		return rStatus;
	}

	public void setrStatus(char rStatus) {
		this.rStatus = rStatus;
	}

	public String getrName() {
		return rName;
	}

	public void setrName(String rName) {
		this.rName = rName;
	}

	public String getrPhone() {
		return rPhone;
	}

	public void setrPhone(String rPhone) {
		this.rPhone = rPhone;
	}

	public String getrComment() {
		return rComment;
	}

	public void setrComment(String rComment) {
		this.rComment = rComment;
	}

	public Date getrAd() {
		return rAd;
	}

	public void setrAd(Date rAd) {
		this.rAd = rAd;
	}

	public Date getrPay() {
		return rPay;
	}

	public void setrPay(Date rPay) {
		this.rPay = rPay;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public int getsNo() {
		return sNo;
	}

	public void setsNo(int sNo) {
		this.sNo = sNo;
	}

	@Override
	public String toString() {
		return "ReserveInfo [rNo=" + rNo + ", rTime=" + rTime + ", rStatus=" + rStatus + ", rName=" + rName
				+ ", rPhone=" + rPhone + ", rComment=" + rComment + ", rAd=" + rAd + ", rPay=" + rPay + ", memberId="
				+ memberId + ", sNo=" + sNo + "]";
	}
	
	
}
