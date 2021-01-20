﻿package com.kh.bob.shop.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.bob.shop.model.exception.ShopException;
import com.kh.bob.shop.model.service.ShopService;
import com.kh.bob.shop.model.vo.ShopInfo;
import com.kh.bob.shop.model.vo.ShopMenu;

@Controller
public class ShopController {
	@Autowired
	private ShopService sService;

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
	
	// 민병욱 끝 ====================================================
	   	   
	   // 신진식 시작 ===================================================
			
	
	
			@RequestMapping("Reservation.do")
			public String reservationForm() {

				return "shop/shopReservation";
			}
			
			
			@RequestMapping("shopEnrollAdd.do")
			public String shopEnrollAdd(@ModelAttribute ShopInfo si, @RequestParam("thumbnailImg")  MultipartFile thumbnailImg, HttpServletRequest request
					, @RequestParam("address1") String address1,
					@RequestParam("address2") String address2) {
				
				
				System.out.println("testtest"+si.getMemberId()+"확인");
				
				
				String menuname[]=request.getParameterValues("MenuName");
				String menuprice[]=request.getParameterValues("MenuPrice");
				String sidename[]=request.getParameterValues("SideName");
				String sideprice[]=request.getParameterValues("SidePrice");
				String drinkname[]=request.getParameterValues("DrinkName");
				String drinkprice[]=request.getParameterValues("DrinkPrice");
//				si.setAddress(address1+"/"+address2);
				si.setShopAddress(address1+"/"+address2);
				
				List<ShopMenu> shopmenu=new ArrayList<ShopMenu>();
				
				for(int i=0; i<menuname.length; i++) {
					System.out.println(menuname[i]+"test1");
					System.out.println(menuprice[i]+"test1");
					shopmenu.add(new ShopMenu(menuname[i],menuprice[i],1));
				}
				for(int i=0; i<sidename.length; i++) {
					System.out.println(sidename[i]+"test2");
					System.out.println(sideprice[i]+"test2");
					shopmenu.add(new ShopMenu(sidename[i],sideprice[i],2));
				}
				for(int i=0; i<drinkname.length; i++) {
					System.out.println(drinkname[i]+"test3");
					System.out.println(drinkprice[i]+"test3");
					shopmenu.add(new ShopMenu(drinkname[i],drinkprice[i],3));
				}

				if(thumbnailImg !=null && !thumbnailImg.isEmpty()) {  
					String renameFileName=saveFile(thumbnailImg, request);
					
					if(renameFileName != null) {
						si.setShopRename(renameFileName);
						si.setShopOrigin(thumbnailImg.getOriginalFilename());
					}
				}
				/*test*/
				
				
				
				
				int shopresult=sService.insertShop(si);
				int menuresult=sService.insertMenu(shopmenu);
				
				System.out.println("잘들어왔는지:" +shopresult+","+menuresult);
				
				if (shopresult > 0  && menuresult>0 ) {
					return "/shop/shopList";
				}else {
					throw new ShopException("게시글 등록에 실패하였습니다.");
				}
				
			}
						

			
		/*파일 서비스*/	
			public String saveFile(MultipartFile file,HttpServletRequest request) {
				String root=request.getSession().getServletContext().getRealPath("resources");
				
				String savePath= root + "\\shopuploadFiles";
										
				
				File folder =new File(savePath);
				if(!folder.exists()) {
					folder.mkdirs();
				}
				
				SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddHHmmss");
				String originFileName=file.getOriginalFilename();
				String renameFileName=sdf.format(new Date(System.currentTimeMillis()))+"."+originFileName.substring(originFileName.lastIndexOf(".")+1);
				
				String renamePath=folder+"\\"+renameFileName;
				
				try {
					file.transferTo(new File(renamePath));
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
				return renameFileName;
			
			}
			
			
			
			
			
			
			
			
	   // 신진식 끝 =====================================================

	   
	   // 원태원 시작 ====================================================
	   
	   // 원태원 끝 ======================================================
	
	@RequestMapping("shopEnroll.do")
	public String shopEnrollForm() {
		return "/shop/shopEnroll";
	}	
	
	
	@RequestMapping("shop.do")
	public String shopForm() {
		return "/shop/shopList";
	}		
}
