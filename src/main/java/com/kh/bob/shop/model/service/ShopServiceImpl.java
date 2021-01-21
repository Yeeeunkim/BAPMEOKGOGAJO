package com.kh.bob.shop.model.service;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.bob.shop.model.dao.ShopDAO;
import com.kh.bob.shop.model.vo.PageInfo;
import com.kh.bob.shop.model.vo.ReviewReply;
import com.kh.bob.shop.model.vo.ShopReview;

@Service("sService")
public class ShopServiceImpl implements ShopService{

	@Autowired
	private ShopDAO sDAO;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int getReListCount(int shopNo) {
		return sDAO.getReListCount(sqlSession, shopNo);
	}
	
	@Override
	public int insertReview(ShopReview re) {
		return sDAO.insertReview(sqlSession, re);
	}

	@Override
	public List<ShopReview> selectReList(int shopNo, PageInfo pi) {
		return sDAO.selectReList(sqlSession, shopNo, pi);
	}

	@Override
	public int deleteReview(int reNo) {
		return sDAO.delectReview(sqlSession,reNo);
	}

	@Override
	public int insertReReply(ReviewReply rere) {
		return sDAO.insertReReply(sqlSession, rere);
	}

	@Override
	public ArrayList<ReviewReply> selectReReply(int reviewNo) {
		return sDAO.selectReReply(sqlSession,reviewNo);
	}
	
}
