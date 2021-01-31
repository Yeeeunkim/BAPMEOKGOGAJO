package com.kh.bob.manager.model.vo;

public class CategorySales {
	private String shopCategory;
	private int sales;
	
	public CategorySales() {}

	public CategorySales(String shopCategory, int sales) {
		super();
		this.shopCategory = shopCategory;
		this.sales = sales;
	}

	public String getShopCategory() {
		return shopCategory;
	}

	public void setShopCategory(String shopCategory) {
		this.shopCategory = shopCategory;
	}

	public int getSales() {
		return sales;
	}

	public void setSales(int sales) {
		this.sales = sales;
	}

	@Override
	public String toString() {
		return "CategorySales [shopCategory=" + shopCategory + ", sales=" + sales + "]";
	}
	
	
}
