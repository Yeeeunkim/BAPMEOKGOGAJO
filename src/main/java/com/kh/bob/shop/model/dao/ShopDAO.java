package com.kh.bob.shop.model.dao;

import java.util.ArrayList;
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

}
