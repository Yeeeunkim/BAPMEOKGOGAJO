package com.kh.bob.shop.model.service;

import java.util.ArrayList;
import java.util.List;

import com.kh.bob.shop.model.vo.ShopInfo;
import com.kh.bob.shop.model.vo.ShopMenu;

public interface ShopService {

	int insertShop(ShopInfo si);

	int insertMenu(List<ShopMenu> shopmenu);


}
