package com.kh.bob.shop.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.kh.bob.notice.model.vo.PageInfo;
import com.kh.bob.shop.model.dao.ShopDAO;
import com.kh.bob.shop.model.vo.ReserveInfo;
import com.kh.bob.shop.model.vo.ReserveMenu;
import com.kh.bob.shop.model.vo.ReviewReply;
import com.kh.bob.shop.model.vo.ShopDeclare;
import com.kh.bob.shop.model.vo.ShopInfo;
import com.kh.bob.shop.model.vo.ShopMenu;
import com.kh.bob.shop.model.vo.ShopReview;
import com.kh.bob.shop.model.vo.ShoplistPageInfo;
import com.kh.bob.shop.model.vo.ShopReview;

@Service("sService")
public class ShopServiceImple implements ShopService {

	@Autowired
	private ShopDAO sDAO;

	@Autowired
	private SqlSessionTemplate sqlSession;

	// 강동기 시작 ===============================================

	// 강동기 끝 ================================================

	//김예은 시작 =============================================
		//사장님마이페이지 - 식당 정보 조회
		@Override
		public ShopInfo selectMyShop(String memberId) {
			return sDAO.selectMyShop(sqlSession, memberId);
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
			return sDAO.selectMyrInfo(sqlSession, memberId);
		}


	//김예은 끝 =============================================


	// 김하영 시작 ================================================
	@Override
	public int getReListCount(int shop_no) {
		return sDAO.getReListCount(sqlSession, shop_no);
	}

	@Override
	public int insertReview(ShopReview re) {
		return sDAO.insertReview(sqlSession, re);
	}

	@Override
	public List<ShopReview> selectReList(int shopNo, PageInfo pi) {
		return sDAO.selectReList(sqlSession, shopNo, pi);
	}

	@Override
	public int deleteReview(int reNo) {
		return sDAO.delectReview(sqlSession, reNo);
	}

	@Override
	public int insertReReply(ReviewReply rere) {
		return sDAO.insertReReply(sqlSession, rere);
	}

	@Override
	public ArrayList<ReviewReply> selectReReply(int reviewNo) {
		return sDAO.selectReReply(sqlSession, reviewNo);
	}
	// 김하영 끝 =================================================
	
	// 민병욱 시작 =================================================
	// @@@@@테스트용
	@Override
	public ShopInfo selectShop(int sNo) {
		return sDAO.selectShop(sqlSession, sNo);
	}

	@Override
	public ReserveInfo selectReserve(int rNo) {
		return sDAO.selectReserve(sqlSession, rNo);
	}

	@Override
	public List selectMenu(int rNo) {
		return sDAO.selectMenu(sqlSession, rNo);
	}

	@Override
	public int successReserve(int rNo) {
		return sDAO.successReserve(sqlSession, rNo);
	}

	@Override
	public List selectSearchList(ShopInfo shop, ShoplistPageInfo pi) {
		return sDAO.selectSearchList(sqlSession, shop, pi);
	}

	@Override
	public List selectAddressSearch(ShopInfo shop, ShoplistPageInfo pi) {
		return sDAO.selectAddressSearch(sqlSession, shop, pi);
	}

	@Override
	public int getListCount(ShopInfo shop) {
		return sDAO.getListCount(sqlSession, shop);
	}

	@Override
	public int getAddressListCount(ShopInfo shop) {
		return sDAO.getAddressListCount(sqlSession, shop);
	}

	// 민병욱 끝 ====================================================

	// 신진식 시작 ===================================================

	@Override
	public int insertShop(ShopInfo si) {
		return sDAO.insertShop(sqlSession, si);
	}

	@Override
	public int insertMenu(List<ShopMenu> shopmenu) {
		return sDAO.insertMenu(sqlSession, shopmenu);
	}


	@Override
	public List<ShopMenu> selectShopMenu(int shopNo) {
		return sDAO.selectShopMenu(sqlSession, shopNo);
	}

	@Override
	public int insertDeclare(ShopDeclare sd) {
		return sDAO.insertDeclare(sqlSession, sd);
	}

	@Override
	public int insertReserveShopInfo(ReserveInfo ri) {
		return sDAO.inserReserveShopInfo(sqlSession, ri);
	}

	@Override
	public ReserveInfo selectReserveNo(ReserveInfo ri) {
		return sDAO.selectReserveNo(sqlSession, ri);
	}

	@Override
	public ArrayList<ReserveInfo> selectResreveTime(int shopNo) {
		return sDAO.selectReserveTime(sqlSession, shopNo);
	}

	@Override
	public int insertReserveShopMenu(List<ReserveMenu> reservemenu) {
		return sDAO.insertReserveShopMenu(sqlSession, reservemenu);
	}

	// 신진식 끝 =====================================================

	// 원태원 시작 ====================================================

	@Override
	public List<String> getShopList(String SHOP_CATE, ShoplistPageInfo pi) {

	List<String> ShopList = sDAO.getShopList(sqlSession,SHOP_CATE, pi); 

		return ShopList;
	}

	@Override
	public List<Map<String, Object>> getReservationList(int shop_no) {
		List<Map<String, Object>> ReservationList = sDAO.getReservationList(sqlSession, shop_no);
		return ReservationList;
	}

	@Override
	public int getListAllCount(ShopInfo shop) {
		return sDAO.getListAllCount(sqlSession, shop);
	}

	@Override
	public int getListCateCount(ShopInfo shop) {
		return sDAO.getListCateCount(sqlSession, shop);
	}


	// 원태원 끝 ======================================================

}
