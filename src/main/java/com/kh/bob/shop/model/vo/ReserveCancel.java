package com.kh.bob.shop.model.vo;

import java.sql.Date;

public class ReserveCancel {
	private int reserveNo;			// 예약번호
	private String cancelReason;	// 취소사유
	private Date cancelDate;		// 취소일
	
	public ReserveCancel() {}

	public ReserveCancel(int reserveNo, String cancelReason, Date cancelDate) {
		super();
		this.reserveNo = reserveNo;
		this.cancelReason = cancelReason;
		this.cancelDate = cancelDate;
	}

	public int getReserveNo() {
		return reserveNo;
	}

	public void setReserveNo(int reserveNo) {
		this.reserveNo = reserveNo;
	}

	public String getCancelReason() {
		return cancelReason;
	}

	public void setCancelReason(String cancelReason) {
		this.cancelReason = cancelReason;
	}

	public Date getCancelDate() {
		return cancelDate;
	}

	public void setCancelDate(Date cancelDate) {
		this.cancelDate = cancelDate;
	}

	@Override
	public String toString() {
		return "ReserveCancel [reserveNo=" + reserveNo + ", cancelReason=" + cancelReason + ", cancelDate=" + cancelDate
				+ "]";
	}
}
