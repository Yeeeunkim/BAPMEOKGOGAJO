package com.kh.bob.manager.model.vo;

public class SearchCondition {
	private String bNumber;
	private String sName;
	private String memberId;
	
	public SearchCondition() {}
	
	public SearchCondition(String bNumber, String sName, String memberId) {
		super();
		this.bNumber = bNumber;
		this.sName = sName;
		this.memberId = memberId;
	}

	public String getbNumber() {
		return bNumber;
	}

	public void setbNumber(String bNumber) {
		this.bNumber = bNumber;
	}

	public String getsName() {
		return sName;
	}

	public void setsName(String sName) {
		this.sName = sName;
	}
	
	public String getmemberId() {
		return memberId;
	}

	public void setmemberId(String memberId) {
		this.memberId = memberId;
	}

	@Override
	public String toString() {
		return "SearchCondition [bNumber=" + bNumber + ", sName=" + sName + ", memberId=" + memberId + "]";
	}

}
