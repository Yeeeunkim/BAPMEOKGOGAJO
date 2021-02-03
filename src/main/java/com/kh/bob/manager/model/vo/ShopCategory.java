package com.kh.bob.manager.model.vo;

public class ShopCategory {
	private String shopSep;
	private int shopCate;
	
	public ShopCategory() {}

	public ShopCategory(String shopSep, int shopCate) {
		super();
		this.shopSep = shopSep;
		this.shopCate = shopCate;
	}

	public String getShopSep() {
		return shopSep;
	}

	public void setShopSep(String shopSep) {
		this.shopSep = shopSep;
	}

	public int getShopCate() {
		return shopCate;
	}

	public void setShopCate(int shopCate) {
		this.shopCate = shopCate;
	}

	@Override
	public String toString() {
		return "ShopCategory [shopSep=" + shopSep + ", shopCate=" + shopCate + "]";
	}
	
}