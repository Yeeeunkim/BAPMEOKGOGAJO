package com.kh.bob.notice.model.vo;

public class Attachment {
	private int aNo;			// 첨부파일 번호
	private String originName;	// 첨부파일 이름
	private String saveName;	// 첨부파일 리네임
	private int bNo;			// 게시글 번호
	
	public Attachment() {}

	public Attachment(int aNo, String originName, String saveName, int bNo) {
		super();
		this.aNo = aNo;
		this.originName = originName;
		this.saveName = saveName;
		this.bNo = bNo;
	}

	public int getaNo() {
		return aNo;
	}

	public void setaNo(int aNo) {
		this.aNo = aNo;
	}

	public String getOriginName() {
		return originName;
	}

	public void setOriginName(String originName) {
		this.originName = originName;
	}

	public String getSaveName() {
		return saveName;
	}

	public void setSaveName(String saveName) {
		this.saveName = saveName;
	}

	public int getbNo() {
		return bNo;
	}

	public void setbNo(int bNo) {
		this.bNo = bNo;
	}

	@Override
	public String toString() {
		return "Attachment [aNo=" + aNo + ", originName=" + originName + ", saveName=" + saveName + ", bNo=" + bNo
				+ "]";
	}
}
