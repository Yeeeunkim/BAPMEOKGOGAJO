package com.kh.bob.shop.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.kh.bob.shop.model.vo.ShopInfo;
import com.kh.bob.shop.model.vo.ShopMenu;

public interface ShopService {

	int insertShop(ShopInfo si);

	int insertMenu(List<ShopMenu> shopmenu);
//김예은 시작 =============================================
	//식당 정보 조회 
	HashMap<String,Object> selectSinfo(HashMap<String,Object> paramMap);

	//식당 메인 메뉴 조회
	HashMap<String, Object> selectSmenu(HashMap<String, Object> smMap);

	//식당 사이드 조회
	HashMap<String, Object> selectSmenuSide(HashMap<String, Object> smMap);

	//식당 음료 조회
	HashMap<String, Object> selectSmenuBeverage(HashMap<String, Object> smMap);

	//식당 정보 수정
	int sinfoUpdate(ShopInfo shopInfo);
	//식당 메뉴 수정
	int smenuUpdate(ShopMenu smenu);
	
	//예약 내역 조회
	HashMap<String, Object> selectReserve(HashMap<String, Object> pMap);
	//예약 메뉴 조회
	HashMap<String, Object> selectReserveMenu(HashMap<String, Object> pmMap);
	//리뷰 조회
	HashMap<String, Object> selectReview(HashMap<String, Object> pMap);
	////사용자가 예약한 식당 정보 조회
	HashMap<String, Object> selectReserveShop(HashMap<String, Object> re);

	// ★식당마이페이지  - 식당정보 조회
	ShopInfo selectMyShop(String member_id);

	List<ShopMenu> selectMyMenu1(int shopNo);

	List<ShopMenu> selectMyMenu2(int shopNo);

	List<ShopMenu> selectMyMenu3(int shopNo);


//	int sideUpdate(ShopMenu smSmenu);
//
//	int beverUpate(ShopMenu smBmenu);



	



//김예은 끝 =============================================

}
