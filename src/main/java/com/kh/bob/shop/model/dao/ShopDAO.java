package com.kh.bob.shop.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.bob.shop.model.vo.Reserve;
import com.kh.bob.shop.model.vo.Shop;

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
	public Shop selectShop(SqlSessionTemplate sqlSession, int sNo) {
		return sqlSession.selectOne("shopMapper.selectShop", sNo);
	}
	public Reserve selectReserve(SqlSessionTemplate sqlSession, int rNo) {
		return sqlSession.selectOne("shopMapper.selectReserve", rNo);
	}
	public List selectMenu(SqlSessionTemplate sqlSession, int rNo) {
		return (ArrayList)sqlSession.selectList("shopMapper.selectMenu", rNo);
	}
	public List selectTable(SqlSessionTemplate sqlSession, int rNo) {
		return (ArrayList)sqlSession.selectList("shopMapper.selectTable", rNo);
	}
	
	// 민병욱 끝 ====================================================

	// 신진식 시작 ===================================================

	// 신진식 끝 =====================================================

	// 원태원 시작 ====================================================

	// 원태원 끝 ======================================================
}
