package com.kh.bob.shop.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.bob.shop.model.vo.ShopInfo;
import com.kh.bob.shop.model.vo.ShopMenu;

@Repository("sDAO")
public class ShopDAO {
	
	public int insertShop(SqlSessionTemplate sqlSession, ShopInfo si) {
		System.out.println("테스트2:"+si);
		return sqlSession.insert("shopMapper.insertShop", si);
	}

	public int insertMenu(SqlSessionTemplate sqlSession, List<ShopMenu> shopmenu) {
		System.out.println("테스트3:"+shopmenu);
		return sqlSession.insert("shopMapper.insertMenu", shopmenu);
	}

// 김예은 시작 ====================================================================
	//식당 정보 조회
	public HashMap<String,Object> selectSinfo(SqlSessionTemplate sqlSession, HashMap<String,Object> paramMap) {
		System.out.println("sidao:"+ paramMap);
		return sqlSession.selectOne("shopMapper.selectSinfo", paramMap);
	}
	//식당 메인메뉴 조회
	public HashMap<String, Object> selectSmenu(SqlSessionTemplate sqlSession, HashMap<String, Object> smMap) {
		System.out.println("smdao: " + smMap);
		return sqlSession.selectOne("shopMapper.selectSmenu", smMap);
	}
	//식당 사이드메뉴 조회
	public HashMap<String, Object> selectSmenuSide(SqlSessionTemplate sqlSession, HashMap<String, Object> smMap) {
		return sqlSession.selectOne("shopMapper.selectSmenuSide", smMap);
	}
	//식당 음료 조회
	public HashMap<String, Object> selectSmenuBeverage(SqlSessionTemplate sqlSession, HashMap<String, Object> smMap) {
		return sqlSession.selectOne("shopMapper.selectSmenuBeverage", smMap);
	}


	public int updatesi(SqlSessionTemplate sqlSession, ShopInfo shopInfo) {
		return sqlSession.update("shopMapper.updatesi", shopInfo);
	}

	public int updatesmenu(SqlSessionTemplate sqlSession, ShopMenu smenu) {
		return sqlSession.update("shopMapper.updatesmenu", smenu);
	}

	public HashMap<String, Object> selectReserve(SqlSessionTemplate sqlSession, HashMap<String, Object> pMap) {
		System.out.println();
		return sqlSession.selectOne("shopMapper.selectReserve", pMap);
	}

	public HashMap<String, Object> selectReserveMenu(SqlSessionTemplate sqlSession, HashMap<String, Object> pmMap) {
		return sqlSession.selectOne("shopMapper.selectReserveMenu", pmMap);
	}

	public HashMap<String, Object> selectReview(SqlSessionTemplate sqlSession, HashMap<String, Object> pMap) {
		return sqlSession.selectOne("shopMapper.selectReview", pMap);
	}

	public HashMap<String, Object> selectReserveShop(SqlSessionTemplate sqlSession, HashMap<String, Object> re) {
		return sqlSession.selectOne("shopMapper.selectReserveShop", re);
	}

	public ShopInfo selectMyShop(SqlSessionTemplate sqlSession, String member_id) {
		return sqlSession.selectOne("shopMapper.selectMyShop", member_id);
	}

	public List<ShopMenu> selectMyMenu1(SqlSessionTemplate sqlSession, int shopNo) {
		return (ArrayList)sqlSession.selectList("shopMapper.selectMyMenu1", shopNo);
	}

	public List<ShopMenu> selectMyMenu2(SqlSessionTemplate sqlSession, int shopNo) {
		return (ArrayList)sqlSession.selectList("shopMapper.selectMyMenu2", shopNo);
	}

	public List<ShopMenu> selectMyMenu3(SqlSessionTemplate sqlSession, int shopNo) {
		return (ArrayList)sqlSession.selectList("shopMapper.selectMyMenu3", shopNo);
	}

//	public int updateside(SqlSessionTemplate sqlSession, ShopMenu smSmenu) {
//		// TODO Auto-generated method stub
//		return sqlSession.update("shopMapper.updateside", smSmenu);
//	}
//
//	public int updatebever(SqlSessionTemplate sqlSession,  ShopMenu smBmenu) {
//		// TODO Auto-generated method stub
//		return sqlSession.update("shopMapper.updatebever", smBmenu);
//	}

	



	// 김예은 끝 ====================================================================
	
	

}
