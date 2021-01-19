package com.kh.bob.shop.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;



@Repository("shopDAO")
public class ShopDAO {

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



}
