package com.kh.bob.home.model.vo;

public class HomeShopList {
	private int sNo;
	private String sName;
	private String sIntro;
	private String sOrigin;
	private String sRename;
	private double avgScore;
	
	public HomeShopList() {}

	public HomeShopList(int sNo, String sName, String sIntro, String sOrigin, String sRename, int avgScore) {
		super();
		this.sNo = sNo;
		this.sName = sName;
		this.sIntro = sIntro;
		this.sOrigin = sOrigin;
		this.sRename = sRename;
		this.avgScore = avgScore;
	}

	public int getsNo() {
		return sNo;
	}

	public void setsNo(int sNo) {
		this.sNo = sNo;
	}

	public String getsName() {
		return sName;
	}

	public void setsName(String sName) {
		this.sName = sName;
	}

	public String getsIntro() {
		return sIntro;
	}

	public void setsIntro(String sIntro) {
		this.sIntro = sIntro;
	}

	public String getsOrigin() {
		return sOrigin;
	}

	public void setsOrigin(String sOrigin) {
		this.sOrigin = sOrigin;
	}

	public String getsRename() {
		return sRename;
	}

	public void setsRename(String sRename) {
		this.sRename = sRename;
	}

	public double getAvgScore() {
		return avgScore;
	}

	public void setAvgScore(double avgScore) {
		this.avgScore = avgScore;
	}

	@Override
	public String toString() {
		return "HomeShopList [sNo=" + sNo + ", sName=" + sName + ", sIntro=" + sIntro + ", sOrigin=" + sOrigin
				+ ", sRename=" + sRename + ", avgScore=" + avgScore + "]";
	}
	
	
}
