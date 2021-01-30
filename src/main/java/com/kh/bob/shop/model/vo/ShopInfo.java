package com.kh.bob.shop.model.vo;

public class ShopInfo {
	
	private int shopNo; 				// 식당번호
	private String shopName; 			// 식당이름
	private String shopIntro; 			// 식당 소개글
	private String shopOpen; 			// 오픈시간
	private String shopClose; 			// 폐점시간
	private String shopAddress; 		// 식당주소
	private String shopPhone; 			// 식당연락처
	private String shopBreakStart; 		// 브레이크타임 시작시간
	private String shopBreakClose; 		// 브레이크타임 종료시간
	private String shopOffday;			// 식당 휴무일
	private String maxReservationTime; 	// 최대예약시간
	private String shopOrigin; 			// 식당 기존 파일명
	private String shopRename; 			// 식당 리네임 파일명
	private int shopCate; 				// 식당 카테고리
	private int businessNumber; 		// 사업자 번호
	private String memberId; 			// 회원아이디
		
	public ShopInfo() {}

	public ShopInfo(int shopNo, String shopName, String shopIntro, String shopOpen, String shopClose,
			String shopAddress, String shopPhone, String shopBreakStart, String shopBreakClose, String shopOffday,
			String maxReservationTime, String shopOrigin, String shopRename, int shopCate, int businessNumber,
			String memberId) {
		super();
		this.shopNo = shopNo;
		this.shopName = shopName;
		this.shopIntro = shopIntro;
		this.shopOpen = shopOpen;
		this.shopClose = shopClose;
		this.shopAddress = shopAddress;
		this.shopPhone = shopPhone;
		this.shopBreakStart = shopBreakStart;
		this.shopBreakClose = shopBreakClose;
		this.shopOffday = shopOffday;
		this.maxReservationTime = maxReservationTime;
		this.shopOrigin = shopOrigin;
		this.shopRename = shopRename;
		this.shopCate = shopCate;
		this.businessNumber = businessNumber;
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

	public String getShopIntro() {
		return shopIntro;
	}

	public void setShopIntro(String shopIntro) {
		this.shopIntro = shopIntro;
	}

	public String getShopOpen() {
		return shopOpen;
	}

	public void setShopOpen(String shopOpen) {
		this.shopOpen = shopOpen;
	}

	public String getShopClose() {
		return shopClose;
	}

	public void setShopClose(String shopClose) {
		this.shopClose = shopClose;
	}

	public String getShopAddress() {
		return shopAddress;
	}

	public void setShopAddress(String shopAddress) {
		this.shopAddress = shopAddress;
	}

	public String getShopPhone() {
		return shopPhone;
	}

	public void setShopPhone(String shopPhone) {
		this.shopPhone = shopPhone;
	}

	public String getShopBreakStart() {
		return shopBreakStart;
	}

	public void setShopBreakStart(String shopBreakStart) {
		this.shopBreakStart = shopBreakStart;
	}

	public String getShopBreakClose() {
		return shopBreakClose;
	}

	public void setShopBreakClose(String shopBreakClose) {
		this.shopBreakClose = shopBreakClose;
	}

	public String getShopOffday() {
		return shopOffday;
	}

	public void setShopOffday(String shopOffday) {
		this.shopOffday = shopOffday;
	}

	public String getMaxReservationTime() {
		return maxReservationTime;
	}

	public void setMaxReservationTime(String maxReservationTime) {
		this.maxReservationTime = maxReservationTime;
	}

	public String getShopOrigin() {
		return shopOrigin;
	}

	public void setShopOrigin(String shopOrigin) {
		this.shopOrigin = shopOrigin;
	}

	public String getShopRename() {
		return shopRename;
	}

	public void setShopRename(String shopRename) {
		this.shopRename = shopRename;
	}

	public int getShopCate() {
		return shopCate;
	}

	public void setShopCate(int shopCate) {
		this.shopCate = shopCate;
	}

	public int getBusinessNumber() {
		return businessNumber;
	}

	public void setBusinessNumber(int businessNumber) {
		this.businessNumber = businessNumber;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	@Override
	public String toString() {
		return "ShopInfo [shopNo=" + shopNo + ", shopName=" + shopName + ", shopIntro=" + shopIntro + ", shopOpen="
				+ shopOpen + ", shopClose=" + shopClose + ", shopAddress=" + shopAddress + ", shopPhone=" + shopPhone
				+ ", shopBreakStart=" + shopBreakStart + ", shopBreakClose=" + shopBreakClose + ", shopOffday="
				+ shopOffday + ", maxReservationTime=" + maxReservationTime + ", shopOrigin=" + shopOrigin
				+ ", shopRename=" + shopRename + ", shopCate=" + shopCate + ", businessNumber=" + businessNumber
				+ ", memberId=" + memberId + "]";
	}

	


}
