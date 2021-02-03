package com.kh.bob.home.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.bob.home.model.dao.HomeDAO;
import com.kh.bob.home.model.vo.HomeShopList;
import com.kh.bob.notice.model.vo.PageInfo;

@Service("hService")
public class HomeServiceImple implements HomeService {
	@Autowired
	private HomeDAO hDAO;

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int getHomeShopListCount() {
		return hDAO.getHomeShopListCount(sqlSession);
	}

	@Override
	public ArrayList<HomeShopList> getHomeShopList(PageInfo pi) {
		return hDAO.getHomeShopList(pi, sqlSession);
	}

}