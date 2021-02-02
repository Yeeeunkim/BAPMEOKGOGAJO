package com.kh.bob.manager.model.service;

import java.util.ArrayList;

import com.kh.bob.manager.model.vo.CategorySales;
import com.kh.bob.manager.model.vo.DeclationReple;
import com.kh.bob.manager.model.vo.ManageDeclaration;
import com.kh.bob.manager.model.vo.ManageReview;
import com.kh.bob.manager.model.vo.ManageShopInfo;
import com.kh.bob.manager.model.vo.SearchCondition;
import com.kh.bob.manager.model.vo.ShopCategory;
import com.kh.bob.notice.model.vo.PageInfo;

public interface ManagerService {

	int getListCount(int sNo);

	ArrayList<ManageReview> selectRList(PageInfo pi, int sNo);

	int getSListCount(SearchCondition sc);

	ArrayList<ManageShopInfo> selectSList(PageInfo pi, SearchCondition sc);

	int deleteReview(Integer[] rNo);

	int getDListCount();

	ArrayList<ManageReview> selectDList(PageInfo pi);

	ManageDeclaration getDeclationDetail(Integer dNo);

	DeclationReple getDeclationReple(int dNo);

	int dRepleInsert(DeclationReple dr);

	ArrayList<ShopCategory> getShopCategory();

	ArrayList<CategorySales> getCategorySales();

}