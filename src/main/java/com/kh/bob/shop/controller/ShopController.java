package com.kh.bob.shop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.bob.shop.model.service.ShopService;
import com.kh.bob.shop.model.vo.ReserveInfo;
import com.kh.bob.shop.model.vo.ShopInfo;

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
		
		// @@@@@테스트용 
		// 식당 정보 불러와서 넘기기 (식당이름)
		int sNo = 1;
		ShopInfo shop = sService.selectShop(sNo);
		System.out.println(shop);
		// 예약 정보 가져오기 (총 금액, 예약시간) -> 결과 한개의 객체
		int rNo = 1;
		ReserveInfo reserve = sService.selectReserve(rNo);
		System.out.println(reserve);
		// 예약 메뉴 가져오기 (주문메뉴) -> 결과 여러개일 수 있으니 list
//		Map<String, Object> menuMap = new HashMap<String, Object>();
		List mList = sService.selectMenu(rNo);
		System.out.println(mList);
		// 예약 자리 정보 가져오기 (좌석) -> 결과 여러개일 수 있으니 list
//		Map<String, Object> tableMap = sService.selectTable(rNo);
//		List tList = sService.selectTable(rNo);
//		System.out.println(tList);
		
		// 예약정보 불러오기
		
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
		  .addObject("reserve", reserve)
		  .addObject("mList", mList)
		  .setViewName("paymentView");
		return mv;
	}
	
	// @@@@테스트 결제 성공 시
	@RequestMapping("payment.sh")
	public void successPay(@ModelAttribute ReserveInfo reserve) {
		System.out.println(reserve);
		int rNo = reserve.getReserveNo();
		//@@@@@ 테스트
		// 결제 성공 시 상태값 Y로 변경
		int result = sService.successReserve(rNo);
		
	}
	
	// 예약정보 페이지
	@RequestMapping("booking.sh")
	public String bookingInfoView() {
		return "bookingInfo";
	}
	
	// 메뉴바 검색 뷰
	@RequestMapping("searchView.sh")
	public ModelAndView searchView(@RequestParam("searchContents") String searchContents,
							 ModelAndView mv) {
		
		ShopInfo shop = new ShopInfo();
		shop.setShopName(searchContents);
		List sList = sService.selectSearchList(shop);
		
		mv.addObject("sList", sList);
		mv.setViewName("searchTest");
		return mv;
	}
	
	// 민병욱 끝 ====================================================

	// 신진식 시작 ===================================================

	// 신진식 끝 =====================================================

	// 원태원 시작 ====================================================

	// 원태원 끝 ======================================================
	
	
}
