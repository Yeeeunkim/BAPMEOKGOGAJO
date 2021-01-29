package com.kh.bob.manager.model.vo;

public class ManageShopInfo {
	private int shopNo;
	private String shopName;
	private String shopAddress;
	private String shopPhone;
	private String shopCate;
	private String businessNumber;
	private String memberId;
	
	public ManageShopInfo() {}

	public ManageShopInfo(int shopNo, String shopName, String shopAddress, String shopPhone, String shopCate,
			String businessNumber, String memberId) {
		super();
		this.shopNo = shopNo;
		this.shopName = shopName;
		this.shopAddress = shopAddress;
		this.shopPhone = shopPhone;
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

	public String getShopCate() {
		return shopCate;
	}

	public void setShopCate(String shopCate) {
		this.shopCate = shopCate;
	}

	public String getBusinessNumber() {
		return businessNumber;
	}

	public void setBusinessNumber(String businessNumber) {
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
		return "ManageShopInfo [shopNo=" + shopNo + ", shopName=" + shopName + ", shopAddress=" + shopAddress
				+ ", shopPhone=" + shopPhone + ", shopCate=" + shopCate + ", businessNumber=" + businessNumber
				+ ", memberId=" + memberId + "]";
	}
	
	
}
