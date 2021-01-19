package com.kh.bob.shop.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;


import com.kh.bob.shop.model.vo.ReserveInfo;
import com.kh.bob.shop.model.vo.ShopInfo;

@Repository("sDAO")
public class ShopDAO {
	
	// 강동기 시작 ===============================================

	// 강동기 끝 ================================================

	// 김예은 시작 ================================================

	// 김예은 끝 =================================================

	// 김하영 시작 ================================================

	// 김하영 끝 =================================================

	// 민병욱 시작 =================================================
	
	// @@@@@테스트용 
	public ShopInfo selectShop(SqlSessionTemplate sqlSession, int sNo) {
		return sqlSession.selectOne("shopMapper.selectShop", sNo);
	}
	public ReserveInfo selectReserve(SqlSessionTemplate sqlSession, int rNo) {
		return sqlSession.selectOne("shopMapper.selectReserve", rNo);
	}
	public List selectMenu(SqlSessionTemplate sqlSession, int rNo) {
		return (ArrayList)sqlSession.selectList("shopMapper.selectMenu", rNo);
	}
	public List selectTable(SqlSessionTemplate sqlSession, int rNo) {
		return (ArrayList)sqlSession.selectList("shopMapper.selectTable", rNo);
	}
	public int successReserve(SqlSessionTemplate sqlSession, int rNo) {
		return sqlSession.update("shopMapper.successReserve", rNo);
	}
	
	// 민병욱 끝 ====================================================

	// 신진식 시작 ===================================================

	// 신진식 끝 =====================================================

	// 원태원 시작 ====================================================
	
	public List<String> getShopList(SqlSessionTemplate sqlSession) {
		List<String> ShopList = sqlSession.selectList("shopMapper.getShopList");
		return ShopList;
	}

	public List<Map<String, Object>> getReservationList(SqlSessionTemplate sqlSession,int shop_no) {
		List<Map<String, Object>> ReservationList = sqlSession.selectList("shopMapper.getReservationList",shop_no);
		return ReservationList;
	}

	/*
	 * public void insertShop(SqlSessionTemplate sqlSession,HashMap<String, Object>
	 * data) { sqlSession.insert("shopMapper.insertShop"); }
	 */
	
	
	// 원태원 끝 ======================================================
}
