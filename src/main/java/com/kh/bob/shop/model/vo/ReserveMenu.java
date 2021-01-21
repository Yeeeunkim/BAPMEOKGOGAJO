package com.kh.bob.shop.model.vo;

public class ReserveMenu {
	private int reserveNo;		// 예약번호
	private int menuNo;			// 메뉴번호
	private String menuName;	// 메뉴이름
	private int MenuQty;		// 메뉴수량
	
	public ReserveMenu() {}

	public ReserveMenu(int reserveNo, int menuNo, String menuName, int menuQty) {
		super();
		this.reserveNo = reserveNo;
		this.menuNo = menuNo;
		this.menuName = menuName;
		MenuQty = menuQty;
	}

	public int getReserveNo() {
		return reserveNo;
	}

	public void setReserveNo(int reserveNo) {
		this.reserveNo = reserveNo;
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

	public int getMenuQty() {
		return MenuQty;
	}

	public void setMenuQty(int menuQty) {
		MenuQty = menuQty;
	}

	@Override
	public String toString() {
		return "ReserveMenu [reserveNo=" + reserveNo + ", menuNo=" + menuNo + ", menuName=" + menuName + ", MenuQty="
				+ MenuQty + "]";
	}
}
