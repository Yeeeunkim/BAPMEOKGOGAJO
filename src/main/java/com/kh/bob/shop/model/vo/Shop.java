package com.kh.bob.shop.model.vo;

import java.sql.Date;

public class Shop {
	private int sNo;			// 식당 번호
	private String sName;		// 식당 이름
	private String sOpen;		// 식당 오픈시간
	private String sClose;		// 식당 폐점시간
	private String sAddress;	// 식당 주소
	private String sPhone;		// 식당 연락처
	private Date maxResTime;	// 예약 최대 시간
	private int sCategory;		// 식당 카테고리
	private int businessNum;	// 사업자 번호
	private String mId;			// 사업자 회원 아이디
	
	public Shop() {}
	
	public Shop(int sNo, String sName, String sOpen, String sClose, String sAddress, String sPhone, Date maxResTime,
			int sCategory, int businessNum, String mId) {
		super();
		this.sNo = sNo;
		this.sName = sName;
		this.sOpen = sOpen;
		this.sClose = sClose;
		this.sAddress = sAddress;
		this.sPhone = sPhone;
		this.maxResTime = maxResTime;
		this.sCategory = sCategory;
		this.businessNum = businessNum;
		this.mId = mId;
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

	public String getsOpen() {
		return sOpen;
	}

	public void setsOpen(String sOpen) {
		this.sOpen = sOpen;
	}

	public String getsClose() {
		return sClose;
	}

	public void setsClose(String sClose) {
		this.sClose = sClose;
	}

	public String getsAddress() {
		return sAddress;
	}

	public void setsAddress(String sAddress) {
		this.sAddress = sAddress;
	}

	public String getsPhone() {
		return sPhone;
	}

	public void setsPhone(String sPhone) {
		this.sPhone = sPhone;
	}

	public Date getMaxResTime() {
		return maxResTime;
	}

	public void setMaxResTime(Date maxResTime) {
		this.maxResTime = maxResTime;
	}

	public int getsCategory() {
		return sCategory;
	}

	public void setsCategory(int sCategory) {
		this.sCategory = sCategory;
	}

	public int getBusinessNum() {
		return businessNum;
	}

	public void setBusinessNum(int businessNum) {
		this.businessNum = businessNum;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	@Override
	public String toString() {
		return "Shop [sNo=" + sNo + ", sName=" + sName + ", sOpen=" + sOpen + ", sClose=" + sClose + ", sAddress="
				+ sAddress + ", sPhone=" + sPhone + ", maxResTime=" + maxResTime + ", sCategory=" + sCategory
				+ ", businessNum=" + businessNum + ", mId=" + mId + "]";
	}
}
