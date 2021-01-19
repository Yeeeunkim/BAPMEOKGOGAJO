package com.kh.bob.shop.model.service;

<<<<<<< HEAD
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import java.util.List;

import com.kh.bob.shop.model.vo.ReserveInfo;
import com.kh.bob.shop.model.vo.ShopInfo;

public interface ShopService {

	// 강동기 시작 ===============================================

	// 강동기 끝 ================================================

	// 김예은 시작 ================================================

	// 김예은 끝 =================================================

	// 김하영 시작 ================================================

	// 김하영 끝 =================================================

	// 민병욱 시작 =================================================

	// @@@@@테스트용 
	ShopInfo selectShop(int sNo);
	ReserveInfo selectReserve(int rNo);
	List selectMenu(int rNo);
	List selectTable(int rNo);
	// @@@@@테스트용 
	int successReserve(int rNo);
	
	// 민병욱 끝 ====================================================

	// 신진식 시작 ===================================================

	// 신진식 끝 =====================================================

	// 원태원 시작 ====================================================
	public interface ShopService {

	List<String> getShopList();

	List<Map<String, Object>> getReservationList(int shop_no);


	/* void insertShop(HashMap<String, Object> data); */
	// 원태원 끝 ======================================================

}
