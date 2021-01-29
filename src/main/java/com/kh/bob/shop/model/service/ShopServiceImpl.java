package com.kh.bob.shop.model.service;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.bob.shop.model.dao.ShopDAO;
import com.kh.bob.notice.model.vo.PageInfo;
import com.kh.bob.shop.model.vo.ReviewReply;
import com.kh.bob.shop.model.vo.ShopReview;

@Service("sService")
public class ShopServiceImpl implements ShopService {

	@Autowired
	private ShopDAO sDAO;

	@Autowired
	private SqlSessionTemplate sqlSession;

	// 강동기 시작 ===============================================

	// 강동기 끝 ================================================

	// 김예은 시작 ================================================

	// 김예은 끝 =================================================

	// 김하영 시작 ================================================
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
		return sDAO.delectReview(sqlSession, reNo);
	}

	@Override
	public int insertReReply(ReviewReply rere) {
		return sDAO.insertReReply(sqlSession, rere);
	}

	@Override
	public ArrayList<ReviewReply> selectReReply(int reviewNo) {
		return sDAO.selectReReply(sqlSession, reviewNo);
	}
	// 김하영 끝 =================================================

	// 민병욱 시작 =================================================

	// 민병욱 끝 ====================================================

	// 신진식 시작 ===================================================

	// 신진식 끝 =====================================================

	// 원태원 시작 ====================================================

	// 원태원 끝 ======================================================

}
