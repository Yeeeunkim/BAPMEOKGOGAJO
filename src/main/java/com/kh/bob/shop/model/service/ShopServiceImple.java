package com.kh.bob.shop.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.bob.shop.model.dao.ShopDAO;
import com.kh.bob.shop.model.vo.ReserveInfo;
import com.kh.bob.shop.model.vo.ShopInfo;
import com.kh.bob.shop.model.vo.ShopMenu;

@Service("sService")
public class ShopServiceImple implements ShopService {
	
	@Autowired
	private ShopDAO sDAO;

	@Autowired
	private SqlSessionTemplate sqlSession;

	// 강동기 시작 ===============================================

	// 강동기 끝 ================================================

	// 김예은 시작 ================================================

	// 김예은 끝 =================================================

	// 김하영 시작 ================================================

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
	public List selectTable(int rNo) {
		return sDAO.selectTable(sqlSession, rNo);
	}
	// @@@@@테스트용
	@Override
	public int successReserve(int rNo) {
		return sDAO.successReserve(sqlSession, rNo);
	}
	
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
