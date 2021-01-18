package com.kh.bob.shop.model.vo;

import java.sql.Date;

public class Reserve {
		private int rNo;			// 주문 번호
		private Date rTime;			// 예약 시간
		private String totalPrice;	// 총 결제금액
		private char rStatus;		// 예약 상태
		private String rName;		// 예약자 이름
		private String rPhone;		// 예약자 연락처
		private String rComment;	// 요청사항
		private Date	rAD;		// 결제 승인 시간
		private String	rPay;		// 결제 시간
		private String mId;			// 회원 아이디
		private int sNo;			// 식당 번호
		
		public Reserve() {}

		public Reserve(int rNo, Date rTime, String totalPrice, char rStatus, String rName, String rPhone, String rComment,
				Date rAD, String rPay, String mId, int sNo) {
			super();
			this.rNo = rNo;
			this.rTime = rTime;
			this.totalPrice = totalPrice;
			this.rStatus = rStatus;
			this.rName = rName;
			this.rPhone = rPhone;
			this.rComment = rComment;
			this.rAD = rAD;
			this.rPay = rPay;
			this.mId = mId;
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

		public String getTotalPrice() {
			return totalPrice;
		}

		public void setTotalPrice(String totalPrice) {
			this.totalPrice = totalPrice;
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

		public Date getrAD() {
			return rAD;
		}

		public void setrAD(Date rAD) {
			this.rAD = rAD;
		}

		public String getrPay() {
			return rPay;
		}

		public void setrPay(String rPay) {
			this.rPay = rPay;
		}

		public String getmId() {
			return mId;
		}

		public void setmId(String mId) {
			this.mId = mId;
		}

		public int getsNo() {
			return sNo;
		}

		public void setsNo(int sNo) {
			this.sNo = sNo;
		}

		@Override
		public String toString() {
			return "Reserve [rNo=" + rNo + ", rTime=" + rTime + ", totalPrice=" + totalPrice + ", rStatus=" + rStatus
					+ ", rName=" + rName + ", rPhone=" + rPhone + ", rComment=" + rComment + ", rAD=" + rAD + ", rPay="
					+ rPay + ", mId=" + mId + ", sNo=" + sNo + "]";
		}
}
