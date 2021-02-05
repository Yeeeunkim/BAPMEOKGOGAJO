package com.kh.bob.home.model.service;

import java.util.ArrayList;

import com.kh.bob.home.model.vo.HomeShopList;
import com.kh.bob.notice.model.vo.PageInfo;

public interface HomeService {

	int getHomeShopListCount();

	ArrayList<HomeShopList> getHomeShopList(PageInfo pi);

}
