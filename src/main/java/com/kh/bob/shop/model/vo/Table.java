package com.kh.bob.shop.model.vo;

public class Table {	
	private int rNo;	// 주문번호
	private int sQty;	// 수량
	private int sSize;	// 좌석크기  ex) 2인석, 4인석..
	
	public Table() {}
	

	public Table(int rNo, int sQty, int sSize) {
		super();
		this.rNo = rNo;
		this.sQty = sQty;
		this.sSize = sSize;
	}

	public int getrNo() {
		return rNo;
	}

	public void setrNo(int rNo) {
		this.rNo = rNo;
	}

	public int getsQty() {
		return sQty;
	}

	public void setsQty(int sQty) {
		this.sQty = sQty;
	}

	public int getsSize() {
		return sSize;
	}

	public void setsSize(int sSize) {
		this.sSize = sSize;
	}

	@Override
	public String toString() {
		return "Table [rNo=" + rNo + ", sQty=" + sQty + ", sSize=" + sSize + "]";
	}
}
