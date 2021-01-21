package com.kh.bob.shop.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.bob.notice.model.vo.PageInfo;
import com.kh.bob.shop.model.vo.ReviewReply;
import com.kh.bob.shop.model.vo.ShopReview;

@Repository("sDAO")
public class ShopDAO {

	public int getReListCount(SqlSessionTemplate sqlSession, int shopNo) {
		return sqlSession.selectOne("shopMapper.getReListCount", shopNo);
	}

	public List<ShopReview> selectReList(SqlSessionTemplate sqlSession, int shopNo, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return sqlSession.selectList("shopMapper.selectReList", shopNo, rowBounds);
	}

	public int insertReview(SqlSessionTemplate sqlSession, ShopReview re) {
		return sqlSession.insert("shopMapper.insertReveiw", re);
	}

	public int delectReview(SqlSessionTemplate sqlSession, int reNo) {
		return sqlSession.update("shopMapper.deleteReview", reNo);
	}

	public int insertReReply(SqlSessionTemplate sqlSession, ReviewReply rere) {
		return sqlSession.insert("shopMapper.insertReReply", rere);
	}

	public ArrayList<ReviewReply> selectReReply(SqlSessionTemplate sqlSession, int reviewNo) {
		return (ArrayList)sqlSession.selectList("shopMapper.selectReReply", reviewNo );
	}

}
