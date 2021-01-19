package com.kh.bob.shop.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.bob.shop.model.dao.ShopDAO;


@Service("shopService")	// 객체생성을 프레임워크가 하게 하는 어노테이션
public class ShopServiceImpl implements ShopService{

	@Autowired
	private ShopDAO shopDAO;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public List<String> getShopList() {
	List<String> ShopList = shopDAO.getShopList(sqlSession);
		return ShopList;
	}

	@Override
	public List<Map<String, Object>> getReservationList(int shop_no) {
		List<Map<String, Object>> ReservationList = shopDAO.getReservationList(sqlSession,shop_no);
		return ReservationList;
	}

	

	/*
	 * @Override public void insertShop(HashMap<String, Object> data) {
	 * shopDAO.insertShop(sqlSession,data);
	 * 
	 * }
	 */


}
