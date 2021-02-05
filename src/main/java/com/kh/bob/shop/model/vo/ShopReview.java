package com.kh.bob.shop.model.vo;

import java.sql.Date;

public class ShopReview {
	private int reviewNo;				// 리뷰번호
	private String reviewContents;		// 리뷰내용
	private Date reviewWrite;			// 리뷰작성일
	private int reviewScore;			// 리뷰별점
	private int shopNo;					// 식당번호
	private String memberId;			// 회원아이디
	private String originalFilename;	// 리뷰 기존 파일명
	private String renameFilename;		// 리뷰 리네임 파일명
	private char reviewStatus;			// 리뷰상태
	
	private ReviewReply reviewReply;
	
	public ShopReview() {}

	public ShopReview(int reviewNo, String reviewContents, Date reviewWrite, int reviewScore, int shopNo,
			String memberId, String originalFilename, String renameFilename, char reviewStatus,
			ReviewReply reviewReply) {
		super();
		this.reviewNo = reviewNo;
		this.reviewContents = reviewContents;
		this.reviewWrite = reviewWrite;
		this.reviewScore = reviewScore;
		this.shopNo = shopNo;
		this.memberId = memberId;
		this.originalFilename = originalFilename;
		this.renameFilename = renameFilename;
		this.reviewStatus = reviewStatus;
		this.reviewReply = reviewReply;
	}

	public int getReviewNo() {
		return reviewNo;
	}

	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}

	public String getReviewContents() {
		return reviewContents;
	}

	public void setReviewContents(String reviewContents) {
		this.reviewContents = reviewContents;
	}

	public Date getReviewWrite() {
		return reviewWrite;
	}

	public void setReviewWrite(Date reviewWrite) {
		this.reviewWrite = reviewWrite;
	}

	public int getReviewScore() {
		return reviewScore;
	}

	public void setReviewScore(int reviewScore) {
		this.reviewScore = reviewScore;
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

	public char getReviewStatus() {
		return reviewStatus;
	}

	public void setReviewStatus(char reviewStatus) {
		this.reviewStatus = reviewStatus;
	}

	public ReviewReply getReviewReply() {
		return reviewReply;
	}

	public void setReviewReply(ReviewReply reviewReply) {
		this.reviewReply = reviewReply;
	}

	@Override
	public String toString() {
		return "ShopReview [reviewNo=" + reviewNo + ", reviewContents=" + reviewContents + ", reviewWrite="
				+ reviewWrite + ", reviewScore=" + reviewScore + ", shopNo=" + shopNo + ", memberId=" + memberId
				+ ", originalFilename=" + originalFilename + ", renameFilename=" + renameFilename + ", reviewStatus="
				+ reviewStatus + ", reviewReply=" + reviewReply + "]";
	}

	
}
