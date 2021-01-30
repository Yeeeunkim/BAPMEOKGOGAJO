package com.kh.bob.shop.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.bob.shop.model.dao.ShopDAO;
import com.kh.bob.shop.model.vo.ReserveInfo;
import com.kh.bob.shop.model.vo.ReserveMenu;
import com.kh.bob.shop.model.vo.ShopInfo;
import com.kh.bob.shop.model.vo.ShopMenu;
import com.kh.bob.shop.model.vo.ShopReview;

@Service("sService")
public class ShopServiceImple implements ShopService{
	
	@Autowired
	private ShopDAO sDAO;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// 강동기 시작 ===============================================

	// 강동기 끝 ================================================

	//김예은 시작 =============================================
			//사장님마이페이지 - 식당 정보 조회
			@Override
			public ShopInfo selectMyShop(String member_id) {
				return sDAO.selectMyShop(sqlSession, member_id);
			}
			// 사장님마이페이지 - 메인 
			@Override
			public List<ShopMenu> selectMyMenu1(int shopNo) {
				return sDAO.selectMyMenu1(sqlSession, shopNo);
			}

			// 사장님마이페이지 - 사이드
			@Override
			public List<ShopMenu> selectMyMenu2(int shopNo) {
				return sDAO.selectMyMenu2(sqlSession, shopNo);
			}
			
			// 사장님마이페이지 - 음료
			@Override
			public List<ShopMenu> selectMyMenu3(int shopNo) {
				return sDAO.selectMyMenu3(sqlSession, shopNo);
			}
			//사장님마이페이지 - 예약받은 정보들
			@Override
			public ReserveInfo selectRinfo(int shopNo) {
				return sDAO.selectRinfo(sqlSession, shopNo);
			}
			//사장님마이페이지 - 예약받은 인원수, 시간
			@Override
			public List<ReserveInfo> selectReserveInfo(int shopNo) {
				return sDAO.selectReserveInfo(sqlSession, shopNo);
			}
			//사장님마이페이지 - 예약받은 메뉴
			@Override
			public List<ReserveMenu> selectReserveMenu(int reserveNo) {
				return sDAO.selectReserveMenu(sqlSession, reserveNo);
			}
			

			//사용자마이페이지  - 예약내역 조회
			@Override
			public ReserveInfo selectMyReInfo(String memberId) {
				return sDAO.selectMyReInfo(sqlSession, memberId);
			}
			//사용자마이페이지  - 사용자가 선택한 식당정보
			@Override
			public List<ShopInfo> selectMyShopPick(int shopNo) {
				return sDAO.selectMyShopPick(sqlSession, shopNo);
			}
			//사용자마이페이지  - 사용자가 선택한 메뉴
			@Override
			public List<ReserveMenu> selectMyReMenu(int reserveNo) {
				return sDAO.selectMyReMenu(sqlSession, reserveNo);
			}
		
			//사용자마이페이지  - 사용자 리뷰
			@Override
			public List<ShopReview> selectMyReview(String memberId) {
				return sDAO.selectMyReview(sqlSession, memberId);
			}

			//사장님마이페이지 식당수정 - 식당 정보
			@Override
			public int sinfoUpdate(ShopInfo si) {
				return sDAO.sinfoUpdate(sqlSession, si);
			}

			//사장님마이페이지 식당수정- 식당 메뉴
			@Override
			public int smenuUpdate(List<ShopMenu> shopmenu) {
				return sDAO.smenuUpdate(sqlSession, shopmenu);
			}

			@Override
			public List<ReserveInfo> selectMyrInfo(String memberId) {
				// TODO Auto-generated method stub
				return sDAO.selectMyrInfo(sqlSession, memberId);
			}


	//김예은 끝 =============================================

	// 김하영 시작 ================================================

	// 김하영 끝 =================================================

	// 민병욱 시작 =================================================

	// 민병욱 끝 ====================================================

	// 신진식 시작 ===================================================
	@Override
	public int insertShop(ShopInfo si) {
		return sDAO.insertShop(sqlSession,si);
	}

	@Override
	public int insertMenu(List<ShopMenu> shopmenu) {
		return sDAO.insertMenu(sqlSession,shopmenu);
	}
	// 신진식 끝 =====================================================

	// 원태원 시작 ====================================================
	
	// 원태원 끝 ======================================================
	
	
	
}
