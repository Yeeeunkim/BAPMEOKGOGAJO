package com.kh.bob.shop.model.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.bob.notice.model.vo.PageInfo;
import com.kh.bob.shop.model.vo.ReserveInfo;
import com.kh.bob.shop.model.vo.ReserveMenu;
import com.kh.bob.shop.model.vo.ShopDeclare;
import com.kh.bob.shop.model.vo.ReviewReply;
import com.kh.bob.shop.model.vo.ShopDeclare;
import com.kh.bob.shop.model.vo.ShopInfo;
import com.kh.bob.shop.model.vo.ShopMenu;
import com.kh.bob.shop.model.vo.ShopReview;
import com.kh.bob.shop.model.vo.ShoplistPageInfo;

@Repository("sDAO")
public class ShopDAO {
	// 강동기 시작 ===============================================

	// 강동기 끝 ================================================


	// 김예은 시작 ================================================
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
	// 김예은 끝 =================================================

	// 김하영 시작 ================================================
	public int getReListCount(SqlSessionTemplate sqlSession, int shop_no) {
		return sqlSession.selectOne("shopMapper.getReListCount", shop_no);
	}

	public List<ShopReview> selectReList(SqlSessionTemplate sqlSession, int shopNo, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());

		return sqlSession.selectList("shopMapper.selectReList", shopNo, rowBounds);
	}

	public int insertReview(SqlSessionTemplate sqlSession, ShopReview re) {
		return sqlSession.insert("shopMapper.insertReveiw", re);
	}

	public int delectReview(SqlSessionTemplate sqlSession, int reNo) {
		return sqlSession.update("shopMapper.deleteReview", reNo);
	}

	public int insertReReply(SqlSessionTemplate sqlSession, ReviewReply rere) {
		return sqlSession.insert("shopMapper.insertReReply", rere);
	}

	public ArrayList<ReviewReply> selectReReply(SqlSessionTemplate sqlSession, int reviewNo) {
		return (ArrayList) sqlSession.selectList("shopMapper.selectReReply", reviewNo);
	}
	// 김하영 끝 =================================================

	// 민병욱 시작 =================================================
	
	public ShopInfo selectShop(SqlSessionTemplate sqlSession, int sNo) {
		return sqlSession.selectOne("shopMapper.selectShop", sNo);
	}
	
	public ReserveInfo selectReserve(SqlSessionTemplate sqlSession, int rNo) {
		return sqlSession.selectOne("shopMapper.selectReserve", rNo);
	}
	
	public List selectMenu(SqlSessionTemplate sqlSession, int rNo) {
		return (ArrayList)sqlSession.selectList("shopMapper.selectMenu", rNo);
	}
	
	public int successReserve(SqlSessionTemplate sqlSession, int rNo) {
		return sqlSession.update("shopMapper.successReserve", rNo);
	}

	public List selectSearchList(SqlSessionTemplate sqlSession, ShopInfo shop, ShoplistPageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("shopMapper.selectSearchList", shop, rowBounds);
	}
	
	public List selectAddressSearch(SqlSessionTemplate sqlSession, ShopInfo shop, ShoplistPageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("shopMapper.selectAddressSearch", shop, rowBounds);
	}
	
	public int getListCount(SqlSessionTemplate sqlSession, ShopInfo shop) {
		return sqlSession.selectOne("shopMapper.getListCount", shop);
	}
	
	public int getAddressListCount(SqlSessionTemplate sqlSession, ShopInfo shop) {
		return sqlSession.selectOne("shopMapper.getAddressListCount", shop);
	}
	
	
	// 민병욱 끝 ====================================================

	// 신진식 시작 ===================================================

	public int insertShop(SqlSessionTemplate sqlSession, ShopInfo si) {
		System.out.println("테스트2:"+si);
		return sqlSession.insert("shopMapper.insertShop", si);
		}

	public int insertMenu(SqlSessionTemplate sqlSession, List<ShopMenu> shopmenu) {
		System.out.println("테스트3:"+shopmenu);
		return sqlSession.insert("shopMapper.insertMenu", shopmenu);
	}
	
	public List<ShopMenu> selectShopMenu(SqlSessionTemplate sqlSession, int shopno) {
		return (ArrayList)sqlSession.selectList("shopMapper.selectShopMenu", shopno);
	}

	public int insertDeclare(SqlSessionTemplate sqlSession, ShopDeclare sd) {
		return sqlSession.insert("shopMapper.insertDeclare", sd);
	}
	
	public int inserReserveShopInfo(SqlSessionTemplate sqlSession, ReserveInfo ri) {
		return sqlSession.insert("shopMapper.insertReserveShopInfo", ri);
	}
	
	public ReserveInfo selectReserveNo(SqlSessionTemplate sqlSession, ReserveInfo ri) {
		return sqlSession.selectOne("shopMapper.selectReserveNo", ri);
	}
	
	public ArrayList<ReserveInfo> selectReserveTime(SqlSessionTemplate sqlSession, int shopNo) {
		return (ArrayList)sqlSession.selectList("shopMapper.reserveTime", shopNo);
	}
	
	public int insertReserveShopMenu(SqlSessionTemplate sqlSession, List<ReserveMenu> reservemenu) {
		System.out.println(reservemenu+"@@@@@@@@@@@@@@@@@!!!!!!!!!!!!!!!!!!@@@@@@@@@@@@2");
		return sqlSession.insert("shopMapper.insertReserveMenu", reservemenu);
	}
	
	
	// 신진식 끝 =====================================================

	// 원태원 시작 ====================================================
	
	public List<String> getShopList(SqlSessionTemplate sqlSession,String SHOP_CATE, ShoplistPageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		List<String> ShopList = sqlSession.selectList("shopMapper.getShopList",SHOP_CATE, rowBounds);
		return ShopList;
	}

	public List<Map<String, Object>> getReservationList(SqlSessionTemplate sqlSession,int shop_no) {
		List<Map<String, Object>> ReservationList = sqlSession.selectList("shopMapper.getReservationList",shop_no);
		return ReservationList;
	}

	public int getListAllCount(SqlSessionTemplate sqlSession, ShopInfo shop) {
		return sqlSession.selectOne("shopMapper.getListAllCount", shop);
	}

	public int getListCateCount(SqlSessionTemplate sqlSession, ShopInfo shop) {
		return sqlSession.selectOne("shopMapper.getListCateCount", shop);
	}

	

	/*
	 * public void insertShop(SqlSessionTemplate sqlSession,HashMap<String, Object>
	 * data) { sqlSession.insert("shopMapper.insertShop"); }
	 */
	
	
	// 원태원 끝 ======================================================

}