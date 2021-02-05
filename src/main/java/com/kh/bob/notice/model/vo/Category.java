package com.kh.bob.notice.model.vo;

public class Category {
	private int cateCode;		// 카테고리 코드
	private String cateName;	// 카테고리명
	
	public Category() {}

	public Category(int cateCode, String cateName) {
		super();
		this.cateCode = cateCode;
		this.cateName = cateName;
	}

	public int getCateCode() {
		return cateCode;
	}

	public void setCateCode(int cateCode) {
		this.cateCode = cateCode;
	}

	public String getCateName() {
		return cateName;
	}

	public void setCateName(String cateName) {
		this.cateName = cateName;
	}

	@Override
	public String toString() {
		return "Category [cateCode=" + cateCode + ", cateName=" + cateName + "]";
	}
}