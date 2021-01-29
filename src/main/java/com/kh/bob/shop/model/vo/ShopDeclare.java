package com.kh.bob.shop.model.vo;

import java.sql.Date;

public class ShopDeclare {
	
	private int declareNo;
	private String memberId;
	private char declareStatus;
	private int shopNo;
	private String shopName;
	private String shopDeclareComment;
	private Date declareDate;
	
	public ShopDeclare() {}

	public ShopDeclare(String memberId, int shopNo, String shopName, String shopDeclareComment) {
		super();
		this.memberId = memberId;
		this.shopNo = shopNo;
		this.shopName = shopName;
		this.shopDeclareComment = shopDeclareComment;
	}

	public ShopDeclare(int declareNo, String memberId, char declareStatus, int shopNo, String shopName,
			String shopDeclareComment, Date declareDate) {
		super();
		this.declareNo = declareNo;
		this.memberId = memberId;
		this.declareStatus = declareStatus;
		this.shopNo = shopNo;
		this.shopName = shopName;
		this.shopDeclareComment = shopDeclareComment;
		this.declareDate = declareDate;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public int getShopNo() {
		return shopNo;
	}

	public void setShopNo(int shopNo) {
		this.shopNo = shopNo;
	}

	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	public String getShopDeclareComment() {
		return shopDeclareComment;
	}

	public void setShopDeclareComment(String shopDeclareComment) {
		this.shopDeclareComment = shopDeclareComment;
	}

	public Date getDeclareDate() {
		return declareDate;
	}

	public void setDeclareDate(Date declareDate) {
		this.declareDate = declareDate;
	}

	public int getDeclareNo() {
		return declareNo;
	}

	public void setDeclareNo(int declareNo) {
		this.declareNo = declareNo;
	}

	public char getDeclareStatus() {
		return declareStatus;
	}

	public void setDeclareStatus(char declareStatus) {
		this.declareStatus = declareStatus;
	}

	@Override
	public String toString() {
		return "ShopDeclare [declareNo=" + declareNo + ", memberId=" + memberId + ", declareStatus=" + declareStatus
				+ ", shopNo=" + shopNo + ", shopName=" + shopName + ", shopDeclareComment=" + shopDeclareComment
				+ ", declareDate=" + declareDate + "]";
	}

	
	
	
	
	
	
}
