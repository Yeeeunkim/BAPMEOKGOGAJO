package com.kh.bob.shop.model.service;

import java.util.ArrayList;
import java.util.List;

import com.kh.bob.notice.model.vo.PageInfo;
import com.kh.bob.shop.model.vo.ReviewReply;
import com.kh.bob.shop.model.vo.ShopReview;

public interface ShopService {

	// 강동기 시작 ===============================================

	// 강동기 끝 ================================================

	// 김예은 시작 ================================================

	// 김예은 끝 =================================================

	// 김하영 시작 ================================================
	int getReListCount(int shopNo);

	List<ShopReview> selectReList(int shopNo, PageInfo pi);

	int insertReview(ShopReview re);

	int deleteReview(int reNo);

	int insertReReply(ReviewReply rere);

	ArrayList<ReviewReply> selectReReply(int reviewNo);
	// 김하영 끝 =================================================

	// 민병욱 시작 =================================================

	// 민병욱 끝 ====================================================

	// 신진식 시작 ===================================================

	// 신진식 끝 =====================================================

	// 원태원 시작 ====================================================

	// 원태원 끝 ======================================================

}
