package com.kh.bob.shop.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.bob.shop.model.vo.ReserveInfo;
import com.kh.bob.shop.model.vo.ReserveMenu;
import com.kh.bob.shop.model.vo.ShopInfo;
import com.kh.bob.shop.model.vo.ShopMenu;
import com.kh.bob.shop.model.vo.ShopReview;

@Repository("sDAO")
public class ShopDAO {
		// 강동기 시작 ===============================================

		// 강동기 끝 ================================================

		// 김예은 시작 ====================================================================
	//사장님마이페이지 - 식당정보조회
			public ShopInfo selectMyShop(SqlSessionTemplate sqlSession, String member_id) {
				return sqlSession.selectOne("shopMapper.selectMyShop", member_id);
			}
			// 사장님마이페이지 - 메인
			public List<ShopMenu> selectMyMenu1(SqlSessionTemplate sqlSession, int shopNo) {
				return (ArrayList)sqlSession.selectList("shopMapper.selectMyMenu1", shopNo);
			}
			// 사장님마이페이지 - 사이드
			public List<ShopMenu> selectMyMenu2(SqlSessionTemplate sqlSession, int shopNo) {
				return (ArrayList)sqlSession.selectList("shopMapper.selectMyMenu2", shopNo);
			}
			// 사장님마이페이지 - 음료
			public List<ShopMenu> selectMyMenu3(SqlSessionTemplate sqlSession, int shopNo) {
				return (ArrayList)sqlSession.selectList("shopMapper.selectMyMenu3", shopNo);
			}
			
			//사장님마이페이지 - 예약받은 정보들
			public ReserveInfo selectRinfo(SqlSessionTemplate sqlSession, int shopNo) {
				return sqlSession.selectOne("shopMapper.selectRinfo", shopNo);
			}
			//사장님마이페이지 - 예약받은 인원수, 시간
			public List<ReserveInfo> selectReserveInfo(SqlSessionTemplate sqlSession, int shopNo) {
				return (ArrayList)sqlSession.selectList("shopMapper.selectReserveInfo", shopNo);
			}
			//사장님마이페이지 - 예약받은 메뉴
			public List<ReserveMenu> selectReserveMenu(SqlSessionTemplate sqlSession, int reserveNo) {
				return (ArrayList)sqlSession.selectList("shopMapper.selectReserveMenu", reserveNo);
			}
			
			public List<ReserveInfo> selectMyrInfo(SqlSessionTemplate sqlSession, String memberId) {
				// TODO Auto-generated method stub
				return (ArrayList)sqlSession.selectList("shopMapper.selectMyrInfo", memberId);
			}
			//사용자마이페이지  - 예약내역 조회
			public ReserveInfo selectMyReInfo(SqlSessionTemplate sqlSession, String memberId) {
				return sqlSession.selectOne("shopMapper.selectMyReInfo", memberId);
			}
			//사용자마이페이지  - 사용자가 선택한 식당정보
			public List<ShopInfo> selectMyShopPick(SqlSessionTemplate sqlSession, int shopNo) {
				return (ArrayList)sqlSession.selectList("shopMapper.selectMyShopPick", shopNo);
			}
			//사용자마이페이지  - 사용자가 선택한 메뉴
			public List<ReserveMenu> selectMyReMenu(SqlSessionTemplate sqlSession, int reserveNo) {
				return (ArrayList)sqlSession.selectList("shopMapper.selectMyReMenu", reserveNo);
			}
			//사용자마이페이지  - 사용자 리뷰
			public List<ShopReview> selectMyReview(SqlSessionTemplate sqlSession, String memberId) {
				return (ArrayList)sqlSession.selectList("shopMapper.selectMyReview", memberId);
			}
			
			//사장님마이페이지  식당수정 - 식당 정보
			public int sinfoUpdate(SqlSessionTemplate sqlSession, ShopInfo si) {
				return sqlSession.update("shopMapper.sinfoUpdate", si);
			}
			//사장님마이페이지 식당수정- 식당 메뉴
			public int smenuUpdate(SqlSessionTemplate sqlSession, List<ShopMenu> shopmenu) {
				return sqlSession.update("shopMapper.smenuUpdate", shopmenu);
			}

		// 김예은 끝 ====================================================================

		// 김하영 시작 ================================================

		// 김하영 끝 =================================================

		// 민병욱 시작 =================================================
		
		// 민병욱 끝 =================================================
		
		// 신진식 시작 ===================================================
		public int insertShop(SqlSessionTemplate sqlSession, ShopInfo si) {
		System.out.println("테스트2:"+si);
		return sqlSession.insert("shopMapper.insertShop", si);
		}

		public int insertMenu(SqlSessionTemplate sqlSession, List<ShopMenu> shopmenu) {
			System.out.println("테스트3:"+shopmenu);
			return sqlSession.insert("shopMapper.insertMenu", shopmenu);
		}
		
		// 신진식 끝 =====================================================

		// 원태원 시작 ====================================================
		
		// 원태원 끝 ======================================================

	
	

}
