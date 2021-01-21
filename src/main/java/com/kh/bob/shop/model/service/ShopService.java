package com.kh.bob.shop.model.service;

import java.util.ArrayList;
import java.util.List;

import com.kh.bob.shop.model.vo.PageInfo;
import com.kh.bob.shop.model.vo.ReviewReply;
import com.kh.bob.shop.model.vo.ShopReview;

public interface ShopService {

	int getReListCount(int shopNo);

	List<ShopReview> selectReList(int shopNo, PageInfo pi);

	int insertReview(ShopReview re);

	int deleteReview(int reNo);

	int insertReReply(ReviewReply rere);

	ArrayList<ReviewReply> selectReReply(int reviewNo);
	
}
