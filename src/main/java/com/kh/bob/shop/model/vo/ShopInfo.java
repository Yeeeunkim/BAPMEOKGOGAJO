package com.kh.bob.shop.model.vo;

public class ShopInfo {
	
	private int ShopCate;
	private int businessNum;
	private String ShopName;
	private String ShopPhone;
	private String OpenTime;
	private String CloseTime;
	private String BreakTime;
	private String Holiday;
	private String Address;
	private String MaxReservationTime;
	private String MemberId;
	private String ShopOrigin;
	private String ShopRename;
	
	public ShopInfo() {}

	public ShopInfo(int shopCate, int businessNum, String shopName, String shopPhone, String openTime, String closeTime,
			String breakTime, String holiday, String address, String maxReservationTime, String memberId,
			String shopOrigin, String shopRename) {
		super();
		ShopCate = shopCate;
		this.businessNum = businessNum;
		ShopName = shopName;
		ShopPhone = shopPhone;
		OpenTime = openTime;
		CloseTime = closeTime;
		BreakTime = breakTime;
		Holiday = holiday;
		Address = address;
		MaxReservationTime = maxReservationTime;
		MemberId = memberId;
		ShopOrigin = shopOrigin;
		ShopRename = shopRename;
	}

	public int getShopCate() {
		return ShopCate;
	}

	public void setShopCate(int shopCate) {
		ShopCate = shopCate;
	}

	public int getBusinessNum() {
		return businessNum;
	}

	public void setBusinessNum(int businessNum) {
		this.businessNum = businessNum;
	}

	public String getShopName() {
		return ShopName;
	}

	public void setShopName(String shopName) {
		ShopName = shopName;
	}

	public String getShopPhone() {
		return ShopPhone;
	}

	public void setShopPhone(String shopPhone) {
		ShopPhone = shopPhone;
	}

	public String getOpenTime() {
		return OpenTime;
	}

	public void setOpenTime(String openTime) {
		OpenTime = openTime;
	}

	public String getCloseTime() {
		return CloseTime;
	}

	public void setCloseTime(String closeTime) {
		CloseTime = closeTime;
	}

	public String getBreakTime() {
		return BreakTime;
	}

	public void setBreakTime(String breakTime) {
		BreakTime = breakTime;
	}

	public String getHoliday() {
		return Holiday;
	}

	public void setHoliday(String holiday) {
		Holiday = holiday;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}

	public String getMaxReservationTime() {
		return MaxReservationTime;
	}

	public void setMaxReservationTime(String maxReservationTime) {
		MaxReservationTime = maxReservationTime;
	}

	public String getMemberId() {
		return MemberId;
	}

	public void setMemberId(String memberId) {
		MemberId = memberId;
	}

	public String getShopOrigin() {
		return ShopOrigin;
	}

	public void setShopOrigin(String shopOrigin) {
		ShopOrigin = shopOrigin;
	}

	public String getShopRename() {
		return ShopRename;
	}

	public void setShopRename(String shopRename) {
		ShopRename = shopRename;
	}

	@Override
	public String toString() {
		return "ShopInfo [ShopCate=" + ShopCate + ", businessNum=" + businessNum + ", ShopName=" + ShopName
				+ ", ShopPhone=" + ShopPhone + ", OpenTime=" + OpenTime + ", CloseTime=" + CloseTime + ", BreakTime="
				+ BreakTime + ", Holiday=" + Holiday + ", Address=" + Address + ", MaxReservationTime="
				+ MaxReservationTime + ", MemberId=" + MemberId + ", ShopOrigin=" + ShopOrigin + ", ShopRename="
				+ ShopRename + "]";
	}

	
	
	
}
