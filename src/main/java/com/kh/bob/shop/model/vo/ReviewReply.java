package com.kh.bob.shop.model.vo;

import java.sql.Date;

public class ReviewReply {
	private int reviewNo;			// 답글번호
	private String replyContent;	// 답글내용
	private String memberId;		// 멤버아이디
	private Date replyTime;			// 답글작성일
	private char replyStatus;		// 답글상태
	
	public ReviewReply() {}

	

	public ReviewReply(int reviewNo, String replyContent, String memberId, Date replyTime, char replyStatus) {
		super();
		this.reviewNo = reviewNo;
		this.replyContent = replyContent;
		this.memberId = memberId;
		this.replyTime = replyTime;
		this.replyStatus = replyStatus;
	}



	public int getReviewNo() {
		return reviewNo;
	}



	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}



	public String getReplyContent() {
		return replyContent;
	}



	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}



	public String getMemberId() {
		return memberId;
	}



	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}



	public Date getReplyTime() {
		return replyTime;
	}



	public void setReplyTime(Date replyTime) {
		this.replyTime = replyTime;
	}



	public char getReplyStatus() {
		return replyStatus;
	}



	public void setReplyStatus(char replyStatus) {
		this.replyStatus = replyStatus;
	}



	@Override
	public String toString() {
		return "ReviewReply [reviewNo=" + reviewNo + ", replyContent=" + replyContent + ", memberId=" + memberId
				+ ", replyTime=" + replyTime + ", replyStatus=" + replyStatus + "]";
	}

	

}
