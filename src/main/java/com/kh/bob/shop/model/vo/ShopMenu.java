package com.kh.bob.shop.model.vo;

public class ShopMenu {
	private int menuNo;			// 메뉴번호
	private String menuName;	// 메뉴이름
	private String menuPrice;	// 메뉴가격
	private char menuStatus;	// 메뉴상태
	private int menuCate;		// 메뉴카테고리
	private int shopNo;			// 식당번호
	
	public ShopMenu() {}

	public ShopMenu(int menuNo, String menuName, String menuPrice, char menuStatus, int menuCate, int shopNo) {
		super();
		this.menuNo = menuNo;
		this.menuName = menuName;
		this.menuPrice = menuPrice;
		this.menuStatus = menuStatus;
		this.menuCate = menuCate;
		this.shopNo = shopNo;
	}

	public int getMenuNo() {
		return menuNo;
	}

	public void setMenuNo(int menuNo) {
		this.menuNo = menuNo;
	}

	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	public String getMenuPrice() {
		return menuPrice;
	}

	public void setMenuPrice(String menuPrice) {
		this.menuPrice = menuPrice;
	}

	public char getMenuStatus() {
		return menuStatus;
	}

	public void setMenuStatus(char menuStatus) {
		this.menuStatus = menuStatus;
	}

	public int getMenuCate() {
		return menuCate;
	}

	public void setMenuCate(int menuCate) {
		this.menuCate = menuCate;
	}

	public int getShopNo() {
		return shopNo;
	}

	public void setShopNo(int shopNo) {
		this.shopNo = shopNo;
	}

	@Override
	public String toString() {
		return "ShopMenu [menuNo=" + menuNo + ", menuName=" + menuName + ", menuPrice=" + menuPrice + ", menuStatus="
				+ menuStatus + ", menuCate=" + menuCate + ", shopNo=" + shopNo + "]";
	}
}
