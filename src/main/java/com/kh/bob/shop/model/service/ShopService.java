package com.kh.bob.shop.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.kh.bob.notice.model.vo.PageInfo;
import com.kh.bob.shop.model.vo.ReserveInfo;
import com.kh.bob.shop.model.vo.ReserveMenu;

import com.kh.bob.shop.model.vo.ReviewReply;

import com.kh.bob.shop.model.vo.ShopDeclare;
import com.kh.bob.shop.model.vo.ShopInfo;
import com.kh.bob.shop.model.vo.ShopMenu;
import com.kh.bob.shop.model.vo.ShopReview;
import com.kh.bob.shop.model.vo.ShoplistPageInfo;
import com.kh.bob.shop.model.vo.ShopReview;

public interface ShopService {
	// 강동기 시작 ===============================================

	// 강동기 끝 ================================================

	// 김예은 시작 ================================================
	// 식당마이페이지  - 식당정보 조회
	ShopInfo selectMyShop(String member_id);
				
	// 사장님마이페이지 - 메인
	List<ShopMenu> selectMyMenu1(int shopNo);
				
	// 사장님마이페이지 - 사이드
	List<ShopMenu> selectMyMenu2(int shopNo);
				
	// 사장님마이페이지 - 음료
	List<ShopMenu> selectMyMenu3(int shopNo);
			
	//사장님마이페이지 - 예약받은 정보들
	List<ReserveInfo> selectRinfo(int shopNo);
				
	//사장님마이페이지 - 예약받은 인원수, 시간
	List<ReserveInfo> selectReserveInfo(int shopNo);
				
	//사장님마이페이지 - 예약받은 메뉴
	List<ReserveMenu> selectReserveMenu(int reserveNo);
				
	List<ReserveInfo> selectMyrInfo(String memberId);
				
	//요기
	//사용자마이페이지  - 예약내역 조회
	List<ReserveInfo> selectMyReInfo(String memberId);
			
	//사용자마이페이지  - 사용자가 선택한 식당정보
	List<ShopInfo> selectMyShopPick(int shopNo);
				
	//사용자마이페이지  - 사용자가 선택한 메뉴
	List<ReserveMenu> selectMyReMenu(int reserveNo);
				
	//사용자마이페이지  - 사용자 리뷰
      List<ShopReview> selectMyReview(String memberId);
			
   //사장님마이페이지 식당수정 - 식당 정보
	int sinfoUpdate(ShopInfo si);
				
	//사장님마이페이지 식당수정- 메인 메뉴
    int smenuUpdate(List<ShopMenu> shopmenu);
				
	//마이페이지 로그 시 예약 정보 가져오기 
	ReserveInfo selectri(String memberId);
    //김예은 끝 =============================================

	// 김하영 시작 ================================================
	int getReListCount(int shop_no);

	List<ShopReview> selectReList(int shopNo, PageInfo pi);

	int insertReview(ShopReview re);

	int deleteReview(int reNo);

	int insertReReply(ReviewReply rere);

	ArrayList<ReviewReply> selectReReply(int reviewNo);
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

	List<ShopMenu> selectShopMenu(int shopNo);

	int insertDeclare(ShopDeclare sd);

	int insertReserveShopInfo(ReserveInfo ri);

	ReserveInfo selectReserveNo(ReserveInfo ri);

	int insertReserveShopMenu(List<ReserveMenu> reservemenu);

	ArrayList<ReserveInfo> selectResreveTime(int shopNo);

	// 신진식 끝 =====================================================

	// 원태원 시작 ====================================================

	List<String> getShopList(String SHOP_CATE, ShoplistPageInfo pi);

	List<Map<String, Object>> getReservationList(int shop_no);

	int getListAllCount(ShopInfo shop);

	int getListCateCount(ShopInfo shop);


	/* void insertShop(HashMap<String, Object> data); */

	// 원태원 끝 ======================================================

}
