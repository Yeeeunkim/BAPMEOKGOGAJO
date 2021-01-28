package com.kh.bob.common;

import com.kh.bob.shop.model.vo.ShoplistPageInfo;

public class ShoplistPagination {
	public static ShoplistPageInfo getPageInfo(int currentPage, int listCount) {
		
		int pageLimit = 10;
		int maxPage;
		int startPage;
		int endPage;
		int boardLimit = 10;
		
		maxPage = (int)Math.ceil((double)listCount / boardLimit);
		
		startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		
		endPage = startPage + pageLimit - 1;
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		

		ShoplistPageInfo pi = new ShoplistPageInfo(currentPage, listCount, pageLimit, maxPage, startPage, endPage, boardLimit);

		return pi;
		
	}
}