package com.kh.bob.shop.model.vo;

import java.sql.Date;

public class ReserveInfo {
	private int reserveNo;			// 예약번호
	private Date reserveDate;		// 예약날짜
	private String reserveTime;		// 예약시간
	private int reservePeople;		// 예약인원
	private int totalPrice;		// 총 가격
	private char reserveStatus;		// 예약상태
	private String reserveName;		// 예약자명
	private String reservePhone;	// 예약자연락처
	private String reserveComment;	// 요청사항
	private Date reserveAd;			// 승인시간
	private String reservePay;		// 결제시간
	private String memberId;		// 회원아이디
	private int shopNo;				// 식당번호
	
	public ReserveInfo() {}


	

	public ReserveInfo(Date reserveDate, String reserveTime, int reservePeople, String reserveName, String reservePhone,
			int shopNo) {
		super();
		this.reserveDate = reserveDate;
		this.reserveTime = reserveTime;
		this.reservePeople = reservePeople;
		this.reserveName = reserveName;
		this.reservePhone = reservePhone;
		this.shopNo = shopNo;
	}

	

	public ReserveInfo(int reserveNo, Date reserveDate, String reserveTime, int reservePeople, int totalPrice,
			char reserveStatus, String reserveName, String reservePhone, String reserveComment, Date reserveAd,
			String reservePay, String memberId, int shopNo) {
		super();
		this.reserveNo = reserveNo;
		this.reserveDate = reserveDate;
		this.reserveTime = reserveTime;
		this.reservePeople = reservePeople;
		this.totalPrice = totalPrice;
		this.reserveStatus = reserveStatus;
		this.reserveName = reserveName;
		this.reservePhone = reservePhone;
		this.reserveComment = reserveComment;
		this.reserveAd = reserveAd;
		this.reservePay = reservePay;
		this.memberId = memberId;
		this.shopNo = shopNo;
	}




	public int getReserveNo() {
		return reserveNo;
	}

	public void setReserveNo(int reserveNo) {
		this.reserveNo = reserveNo;
	}

	public Date getReserveDate() {
		return reserveDate;
	}

	public void setReserveDate(Date reserveDate) {
		this.reserveDate = reserveDate;
	}

	public String getReserveTime() {
		return reserveTime;
	}

	public void setReserveTime(String reserveTime) {
		this.reserveTime = reserveTime;
	}

	public int getReservePeople() {
		return reservePeople;
	}

	public void setReservePeople(int reservePeople) {
		this.reservePeople = reservePeople;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	public char getReserveStatus() {
		return reserveStatus;
	}

	public void setReserveStatus(char reserveStatus) {
		this.reserveStatus = reserveStatus;
	}

	public String getReserveName() {
		return reserveName;
	}

	public void setReserveName(String reserveName) {
		this.reserveName = reserveName;
	}

	public String getReservePhone() {
		return reservePhone;
	}

	public void setReservePhone(String reservePhone) {
		this.reservePhone = reservePhone;
	}

	public String getReserveComment() {
		return reserveComment;
	}

	public void setReserveComment(String reserveComment) {
		this.reserveComment = reserveComment;
	}

	public Date getReserveAd() {
		return reserveAd;
	}

	public void setReserveAd(Date reserveAd) {
		this.reserveAd = reserveAd;
	}

	public String getReservePay() {
		return reservePay;
	}

	public void setReservePay(String reservePay) {
		this.reservePay = reservePay;
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




	@Override
	public String toString() {
		return "ReserveInfo [reserveNo=" + reserveNo + ", reserveDate=" + reserveDate + ", reserveTime=" + reserveTime
				+ ", reservePeople=" + reservePeople + ", totalPrice=" + totalPrice + ", reserveStatus=" + reserveStatus
				+ ", reserveName=" + reserveName + ", reservePhone=" + reservePhone + ", reserveComment="
				+ reserveComment + ", reserveAd=" + reserveAd + ", reservePay=" + reservePay + ", memberId=" + memberId
				+ ", shopNo=" + shopNo + "]";
}
}
