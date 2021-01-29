package com.kh.bob.shop.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.bob.shop.model.dao.ShopDAO;
import com.kh.bob.shop.model.vo.ShopInfo;
import com.kh.bob.shop.model.vo.ShopMenu;

@Service("sService")
public class ShopServiceImp implements ShopService{

	@Autowired
	private ShopDAO sDAO;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int insertShop(ShopInfo si) {
		return sDAO.insertShop(sqlSession,si);
	}

	@Override
	public int insertMenu(List<ShopMenu> shopmenu) {
		return sDAO.insertMenu(sqlSession,shopmenu);
	}
	//김예은 시작 =============================================
	//식당 정보 조회 
	@Override
	public HashMap<String,Object> selectSinfo(HashMap<String,Object> paramMap) {
		return sDAO.selectSinfo(sqlSession, paramMap);
	}
	//식당 메인 메뉴 조회
	@Override
	public HashMap<String, Object> selectSmenu(HashMap<String, Object> smMap) {
		return sDAO.selectSmenu(sqlSession, smMap);
	}
	//식당 사이드 메뉴 조회 
	@Override
	public HashMap<String, Object> selectSmenuSide(HashMap<String, Object> smMap) {
		return sDAO.selectSmenuSide(sqlSession, smMap);
	}
	//식당 음료  조회
	@Override
	public HashMap<String, Object> selectSmenuBeverage(HashMap<String, Object> smMap) {
		return sDAO.selectSmenuBeverage(sqlSession, smMap);
	}
	

	@Override
	public int sinfoUpdate(ShopInfo shopInfo) {
		return sDAO.updatesi(sqlSession, shopInfo);
	}

	@Override
	public int smenuUpdate(ShopMenu smenu) {
		return sDAO.updatesmenu(sqlSession, smenu);
	}

	@Override
	public HashMap<String, Object> selectReserve(HashMap<String, Object> pMap) {
		return sDAO.selectReserve(sqlSession, pMap);
	}

	@Override
	public HashMap<String, Object> selectReserveMenu(HashMap<String, Object> pmMap) {
		return sDAO.selectReserveMenu(sqlSession, pmMap);
	}

	@Override
	public HashMap<String, Object> selectReview(HashMap<String, Object> pMap) {
		return sDAO.selectReview(sqlSession, pMap);
	}

	@Override
	public HashMap<String, Object> selectReserveShop(HashMap<String, Object> re) {
		return sDAO.selectReserveShop(sqlSession, re);
	}

//	@Override
//	public int sideUpdate(ShopMenu smSmenu) {
//		return sDAO.updateside(sqlSession, smSmenu);
//	}
//
//	@Override
//	public int beverUpate(ShopMenu smBmenu) {
//		return sDAO.updatebever(sqlSession, smBmenu);
//	}







	//김예은 끝 =============================================
	
	
}
