package com.kh.bob.shop.model.service;

import java.util.List;
import java.util.Map;

import com.kh.bob.shop.model.vo.ReserveInfo;
import com.kh.bob.shop.model.vo.ShopInfo;
import com.kh.bob.shop.model.vo.ShopMenu;
import com.kh.bob.shop.model.vo.ShoplistPageInfo;

public interface ShopService {

	// 강동기 시작 ===============================================

	// 강동기 끝 ================================================

	// 김예은 시작 ================================================

	// 김예은 끝 =================================================

	// 김하영 시작 ================================================

	// 김하영 끝 =================================================

	// 민병욱 시작 =================================================

	ShopInfo selectShop(int sNo);
	
	ReserveInfo selectReserve(int rNo);
	
	List selectMenu(int rNo);

	int successReserve(int rNo);
	
	List selectSearchList(ShopInfo shop, ShoplistPageInfo pi);
	
	List selectAddressSearch(ShopInfo shop, ShoplistPageInfo pi);
	
	int getListCount(ShopInfo shop);
	
	int getAddressListCount(ShopInfo shop);
	
	// 민병욱 끝 ====================================================

	// 신진식 시작 ===================================================

	int insertShop(ShopInfo si);

	int insertMenu(List<ShopMenu> shopmenu);

	// 신진식 끝 =====================================================

	// 원태원 시작 ====================================================

	List<String> getShopList(String SHOP_CATE, ShoplistPageInfo pi);

	List<Map<String, Object>> getReservationList(int shop_no);


	
	
	


	/* void insertShop(HashMap<String, Object> data); */
	
	
	// 원태원 끝 ======================================================

}
