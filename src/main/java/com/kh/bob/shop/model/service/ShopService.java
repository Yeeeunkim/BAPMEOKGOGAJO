package com.kh.bob.shop.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;




public interface ShopService {

	List<String> getShopList();

	List<Map<String, Object>> getReservationList(int shop_no);


	/* void insertShop(HashMap<String, Object> data); */


}
