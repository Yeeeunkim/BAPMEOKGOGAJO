package com.kh.bob.shop.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.bob.shop.model.service.ShopService;
import com.kh.bob.shop.model.vo.Shop;

@Controller
public class ShopController {
	
	@Autowired
	private ShopService sService;
	
	// 강동기 시작 ===============================================

	// 강동기 끝 ================================================

	// 김예은 시작 ================================================

	// 김예은 끝 =================================================

	// 김하영 시작 ================================================

	// 김하영 끝 =================================================

	// 민병욱 시작 =================================================

	@RequestMapping("resView.sh")
	public ModelAndView resView(ModelAndView mv) {
		
		// @@@@@테스트용 식당 정보 불러와서 넘기기
		int sNo = 1;
		Shop shop = sService.selectShop(sNo);
		
		// @@@@@테스트용 메뉴 정보 불러와서 넘기기 
//		 List<Map<>>에 담아야 할 것 같음
//		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
//		Map<String, Object> menuMap = new HashMap<String, Object>();
		// 예약메뉴 먼저 담기
//		menuMap.put("rNo", "1");	// 주문번호 1
//		menuMap.put("mNo", "1");	// 메뉴번호 1
//		menuMap.put("mQty", "2");		// 수량 2개
//		menuMap.put("mPrice", 10000);	// 가격 10000원
//		
//		menuMap.put("rNo", "1");	// 주문번호 1
//		menuMap.put("mNo", "2");	// 메뉴번호 1
//		menuMap.put("mQty", "2");		// 수량 2개
//		menuMap.put("mPrice", 5000);	// 가격  5000원
		
		mv.addObject("shop", shop)
		  .setViewName("paymentView");
		return mv;
	}
	
	
	// 민병욱 끝 ====================================================

	// 신진식 시작 ===================================================

	// 신진식 끝 =====================================================

	// 원태원 시작 ====================================================

	// 원태원 끝 ======================================================
	
	
}
