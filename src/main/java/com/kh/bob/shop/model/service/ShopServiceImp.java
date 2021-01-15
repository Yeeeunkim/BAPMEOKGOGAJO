package com.kh.bob.shop.model.service;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.bob.shop.model.dao.ShopDAO;
import com.kh.bob.shop.model.vo.ShopInfo;
import com.kh.bob.shop.model.vo.ShopMenu;

@Service("siService")
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

	
	
}
