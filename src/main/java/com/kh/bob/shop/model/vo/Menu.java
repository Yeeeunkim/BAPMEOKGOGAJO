package com.kh.bob.shop.model.vo;

public class Menu {
	private int mNo;		// 메뉴 번호
	private String mName;	// 메뉴 이름
	private String mPrice;	// 메뉴 가격
	private char mStatus;	// 메뉴 주문 여부
	private int sNo;		// 식당 번호
	
	public Menu() {}

	public Menu(int mNo, String mName, String mPrice, char mStatus, int sNo) {
		super();
		this.mNo = mNo;
		this.mName = mName;
		this.mPrice = mPrice;
		this.mStatus = mStatus;
		this.sNo = sNo;
	}

	public int getmNo() {
		return mNo;
	}

	public void setmNo(int mNo) {
		this.mNo = mNo;
	}

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

	public String getmPrice() {
		return mPrice;
	}

	public void setmPrice(String mPrice) {
		this.mPrice = mPrice;
	}

	public char getmStatus() {
		return mStatus;
	}

	public void setmStatus(char mStatus) {
		this.mStatus = mStatus;
	}

	public int getsNo() {
		return sNo;
	}

	public void setsNo(int sNo) {
		this.sNo = sNo;
	}

	@Override
	public String toString() {
		return "Menu [mNo=" + mNo + ", mName=" + mName + ", mPrice=" + mPrice + ", mStatus=" + mStatus + ", sNo=" + sNo
				+ "]";
	}
}
