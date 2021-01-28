﻿package com.kh.bob.shop.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.bob.common.ShoplistPagination;
import com.kh.bob.notice.model.vo.PageInfo;
import com.kh.bob.shop.model.exception.ShopException;
import com.kh.bob.shop.model.service.ShopService;
import com.kh.bob.shop.model.vo.ReserveInfo;
import com.kh.bob.shop.model.vo.ShopInfo;
import com.kh.bob.shop.model.vo.ShopMenu;
import com.kh.bob.shop.model.vo.ShoplistPageInfo;

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
		
		mv.addObject("shop", shop)
		  .addObject("reserve", reserve)
		  .addObject("mList", mList)
		  .setViewName("paymentView");

		return mv;
	}

	// @@@@테스트 결제 성공 시
	@RequestMapping("payment.sh")
	@ResponseBody
	public String successPay(@ModelAttribute ReserveInfo reserve) {
		System.out.println(reserve);
		int rNo = reserve.getReserveNo();
		// @@@@@ 테스트
		// 결제 성공 시 상태값 Y로 변경
		int result = sService.successReserve(rNo);
		return "ture";
	}

	// 예약정보 페이지
	@RequestMapping("booking.sh")
	public String bookingInfoView() {
		return "bookingInfo";
	}
	
	// 메뉴바 검색
	@RequestMapping("shopSearch.sh")
	public ModelAndView shopSearch(@RequestParam(value = "page", required = false) Integer page,
									@RequestParam("searchContents") String searchContents,
									ModelAndView mv) {
		int currentPage = 1;
		if (page != null) {
			currentPage = page;
		}
		
		ShopInfo shop = new ShopInfo();
		searchContents = searchContents.replaceAll("\\p{Z}", ""); // 공백 없앰
		// 카테고리 값 들어왔을 때
		switch(searchContents) {
			case "한식" :
				shop.setShopCate(1);
				break;
			case "양식" : 
				shop.setShopCate(2);
				break;
			case "중식" : 
				shop.setShopCate(3);
				break;
			case "일식" :
				shop.setShopCate(4);
				break;
			case "분식" : 
				shop.setShopCate(5);
				break;
		}
		shop.setShopName(searchContents);
		
		int listCount = sService.getListCount(shop);
		ShoplistPageInfo pi = ShoplistPagination.getPageInfo(currentPage, listCount);
		
		if(!searchContents.equals("") && searchContents != null) {
			List shopList = sService.selectSearchList(shop, pi);
			
//			System.out.println(shopList);
			if(!shopList.isEmpty()) {
				mv.addObject("shopList", shopList)
				  .addObject("pi", pi)
				  .addObject("searchContents", searchContents)
				  .addObject("searchType", "1");
				mv.setViewName("shopSearchList");
			} else {
				throw new ShopException("검색 내용이 없습니다.");
			}
		} else {
			throw new ShopException("검색 내용이 없습니다.");
		}
		return mv;
	}
	
	// 메인페이지 검색
	@RequestMapping("addressSearch.sh")
	public ModelAndView addressSearch(@RequestParam(value = "page", required = false) Integer page,
										@RequestParam("searchContents") String searchContents,
										ModelAndView mv) {
		int currentPage = 1;
		if (page != null) {
			currentPage = page;
		}
		
		ShopInfo shop = new ShopInfo();
		searchContents = searchContents.replaceAll("\\p{Z}", ""); // 공백 없앰
		shop.setShopAddress(searchContents);
		
		int listCount = sService.getAddressListCount(shop);
		ShoplistPageInfo pi = ShoplistPagination.getPageInfo(currentPage, listCount);
		
		if(!searchContents.equals("") && searchContents != null) {
			List shopList = sService.selectAddressSearch(shop, pi);
			
			if(!shopList.isEmpty()) {
				mv.addObject("shopList", shopList)
				  .addObject("pi", pi)
				  .addObject("searchContents", searchContents)
				  .addObject("searchType", "2");
				mv.setViewName("shopSearchList");
			} else {
				throw new ShopException("검색 내용이 없습니다.");
			}
		} else {
			throw new ShopException("검색 내용이 없습니다.");
		}
		return mv;
		
	}
	
	// 민병욱 끝 ====================================================

	// 신진식 시작 ===================================================

	@RequestMapping("shopEnrollAdd.do")
	public String shopEnrollAdd(@ModelAttribute ShopInfo si, @RequestParam("thumbnailImg") MultipartFile thumbnailImg,
			HttpServletRequest request, @RequestParam("address1") String address1,
			@RequestParam("address2") String address2) {

		System.out.println("testtest" + si.getMemberId() + "확인");

		String menuname[] = request.getParameterValues("MenuName");
		String menuprice[] = request.getParameterValues("MenuPrice");
		String sidename[] = request.getParameterValues("SideName");
		String sideprice[] = request.getParameterValues("SidePrice");
		String drinkname[] = request.getParameterValues("DrinkName");
		String drinkprice[] = request.getParameterValues("DrinkPrice");
//		si.setAddress(address1+"/"+address2);
		si.setShopAddress(address1 + "/" + address2);

		List<ShopMenu> shopmenu = new ArrayList<ShopMenu>();

		for (int i = 0; i < menuname.length; i++) {
			System.out.println(menuname[i] + "test1");
			System.out.println(menuprice[i] + "test1");
			shopmenu.add(new ShopMenu(menuname[i], menuprice[i], 1));
		}
		for (int i = 0; i < sidename.length; i++) {
			System.out.println(sidename[i] + "test2");
			System.out.println(sideprice[i] + "test2");
			shopmenu.add(new ShopMenu(sidename[i], sideprice[i], 2));
		}
		for (int i = 0; i < drinkname.length; i++) {
			System.out.println(drinkname[i] + "test3");
			System.out.println(drinkprice[i] + "test3");
			shopmenu.add(new ShopMenu(drinkname[i], drinkprice[i], 3));
		}

		if (thumbnailImg != null && !thumbnailImg.isEmpty()) {
			String renameFileName = saveFile(thumbnailImg, request);

			if (renameFileName != null) {
				si.setShopRename(renameFileName);
				si.setShopOrigin(thumbnailImg.getOriginalFilename());
			}
		}
		/* test */

		int shopresult = sService.insertShop(si);
		int menuresult = sService.insertMenu(shopmenu);

		System.out.println("잘들어왔는지:" + shopresult + "," + menuresult);

		if (shopresult > 0 && menuresult > 0) {
			return "/shop/shopList";
		} else {
			throw new ShopException("게시글 등록에 실패하였습니다.");
		}

	}

	/* 파일 서비스 */
	public String saveFile(MultipartFile file, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");

		String savePath = root + "\\shopuploadFiles";

		File folder = new File(savePath);
		if (!folder.exists()) {
			folder.mkdirs();
		}

		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String originFileName = file.getOriginalFilename();
		String renameFileName = sdf.format(new Date(System.currentTimeMillis())) + "."
				+ originFileName.substring(originFileName.lastIndexOf(".") + 1);

		String renamePath = folder + "\\" + renameFileName;

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

	@RequestMapping("shopEnroll.do")
	public String shopEnrollForm() {
		return "/shop/shopEnroll";
	}

	//	@RequestMapping("shop.do")
	//	public String shopForm() {
	//		return "/shop/shopList";
	//	}

	@RequestMapping("/Reservation.do")
	public ModelAndView reservationForm(@RequestParam HashMap<String, Object> param, HttpServletRequest req,
			ModelAndView mv) {

		int shop_no = Integer.parseInt((String) param.get("SHOP_NO"));

		List<Map<String, Object>> reservationList = sService.getReservationList(shop_no);
		
		System.out.println(reservationList);

		mv.addObject("reservationList", reservationList);
		mv.setViewName("/shop/shopReservation");

		return mv;

	}

	@RequestMapping("/MainMenu.do")
	public @ResponseBody HashMap<String, Object> MainMenu(HttpServletRequest req) {

		System.out.println("req?" + req.getParameter("SHOP_NO"));
		System.out.println("req?" + req.getParameter("T"));

		int shop_no = Integer.parseInt(String.valueOf(req.getParameter("SHOP_NO")));

		HashMap<String, Object> data = new HashMap<String, Object>();

		List MainMenu = new ArrayList();
		List SideMenu = new ArrayList();
		List DrinkMenu = new ArrayList();

		System.out.println("mm test ?  " + shop_no);

		List<Map<String, Object>> reservationList = sService.getReservationList(shop_no);

		for (int i = 0; i < reservationList.size(); i++) {

			if (Integer.parseInt(String.valueOf(reservationList.get(i).get("MENU_CATE"))) == 1) {
				MainMenu.add(reservationList.get(i));
			} else if (Integer.parseInt(String.valueOf(reservationList.get(i).get("MENU_CATE"))) == 2) {
				SideMenu.add(reservationList.get(i));
			} else {
				DrinkMenu.add(reservationList.get(i));
			}

		}

		data.put("MainMenu", MainMenu);
		data.put("SideMenu", SideMenu);
		data.put("DrinkMenu", DrinkMenu);

		return data;

	}

	@RequestMapping("/shop.do")
	
	public ModelAndView shopForm(@RequestParam(value="page", required=false) Integer page,
								 @RequestParam(value="SHOP_CATE", required=false) String SHOP_CATE,
								 ModelAndView mv , 
								 HttpServletRequest req) {
		int currentPage = 1;
	      if(page != null) {
	         currentPage = page;
	    }
	      
	    ShopInfo shop = new ShopInfo();
	      
	    System.out.println(SHOP_CATE);
	    
	    int listCount;
	    if(SHOP_CATE == null) {
	    	listCount = sService.getListAllCount(shop);
	    } else {
	    	switch(SHOP_CATE) {
		    	case "1" :
					shop.setShopCate(1);
					break;
				case "2" : 
					shop.setShopCate(2);
					break;
				case "3" : 
					shop.setShopCate(3);
					break;
				case "4" :
					shop.setShopCate(4);
					break;
				case "5" : 
					shop.setShopCate(5);
					break;
				case "6" :
					shop.setShopCate(6);
					break;
				case "7" : 
					shop.setShopCate(7);
					break; 
	    	}
	    	
	    	listCount = sService.getListCateCount(shop);
	    }
	     
	    
		ShoplistPageInfo pi = ShoplistPagination.getPageInfo(currentPage, listCount);
		
//		SHOP_CATE = req.getParameter("SHOP_CATE");
		
		List<String> shopList = sService.getShopList(SHOP_CATE, pi);
		
		
		if(shopList != null) {
			mv.addObject("shopList", shopList);
			mv.addObject("pi", pi);
			mv.addObject("SHOP_CATE", SHOP_CATE);
			mv.setViewName("/shop/shopList");
		} else {
			throw new ShopException("게시글 전체 조회에 실패했습니다.");
		}

		return mv;
	}

	

	@RequestMapping("/test.do")
	public void ajaxtext() {

		HashMap<String, Object> testmap = new HashMap<String, Object>();
	}

	// 원태원 끝 ======================================================

}
=======
﻿package com.kh.bob.shop.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.bob.shop.model.exception.ShopException;
import com.kh.bob.shop.model.service.ShopService;
import com.kh.bob.shop.model.vo.ReserveInfo;
import com.kh.bob.shop.model.vo.ReserveMenu;
import com.kh.bob.shop.model.vo.ShopDeclare;
import com.kh.bob.shop.model.vo.ShopInfo;
import com.kh.bob.shop.model.vo.ShopMenu;

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

		mv.addObject("shop", shop).addObject("reserve", reserve).addObject("mList", mList).setViewName("paymentView");
		return mv;
	}

	// @@@@테스트 결제 성공 시
	@RequestMapping("payment.sh")
	public void successPay(@ModelAttribute ReserveInfo reserve) {
		System.out.println(reserve);
		int rNo = reserve.getReserveNo();
		// @@@@@ 테스트
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

	@RequestMapping("ShopReservation.do")
	public ModelAndView reservationForm(@ModelAttribute ReserveInfo ri,HttpServletRequest request,ModelAndView mv) {
		
		String mainmenu[] =request.getParameterValues("menuname");  //메뉴이름 받아옴
		String shopname=request.getParameter("shopName");
		int shopNo=ri.getShopNo();
		List<ShopMenu> sm=sService.selectShopMenu(shopNo); //식당번호를 통해 식당메뉴 리스트 다 받아오기.
		List<ReserveMenu> reservemenu = new ArrayList<ReserveMenu>(); //예약메뉴들을 담을 리스트

		int total=0; //총가격  -> 상차림 비용
		
		for(int i=0; i<sm.size(); i++) {
			int menuNo=sm.get(i).getMenuNo();
			String menuName=sm.get(i).getMenuName();
			int price=Integer.parseInt(sm.get(i).getMenuPrice());
			int menucount=Integer.parseInt(mainmenu[i]);
//			total+=price*menucount;
			if(menucount!=0) {
				reservemenu.add(new ReserveMenu(menuNo,menuName,menucount));
			}
		}
		
		for(int i=0; i<reservemenu.size(); i++) {
		System.out.println(reservemenu.get(i)+"예약메뉴 갯수 이름 확인합니다.");
		}
		
		
		total=ri.getReservePeople()*2000;  //인원수 *2000을 상차림 비용
		ri.setTotalPrice(total);
		
		
		int result=sService.insertReserveShopInfo(ri);
		ReserveInfo reserveInfo=sService.selectReserveNo(ri);
		int reserveNo=reserveInfo.getReserveNo();
		int result2=sService.insertReserveShopMenu(reservemenu);
		
		System.out.println(reservemenu+"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@2");
		System.out.println(ri+"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@2"+reserveNo+"##########################");
		
		if(result>0 && result2>0) {
			mv.addObject("reserveNo",reserveNo);
			mv.addObject("shopname", shopname);
			mv.addObject("ri",ri);
			mv.addObject("reservemenu", reservemenu);
			mv.setViewName("/shop/paymentView");
			return mv;
		}else {
			throw new ShopException("게시글 등록에 실패하였습니다.");
		}
	}


	@RequestMapping(value ="/reserveDate.do")
	@ResponseBody
	public void getReserveDateInfo(@RequestParam("shopNo") int shopNo, HttpServletResponse response) {
		
		System.out.println(shopNo+"********************************");
		
		HashMap<String, Object> data = new HashMap<String, Object>();
		
		ArrayList<ReserveInfo> reserveTime=sService.selectResreveTime(shopNo);		
		
		List <Date>shopreserveDate = new ArrayList();
		List shopreserveTime = new ArrayList();
		
		for(int i=0; i<reserveTime.size(); i++) {
		System.out.println(reserveTime.get(i).getReserveDate()+"///"+reserveTime.get(i).getReserveTime());
			shopreserveDate.add(reserveTime.get(i).getReserveDate());
			shopreserveTime.add(reserveTime.get(i).getReserveTime());
		}
		
		data.put("shopreserveDate", shopreserveDate);
		data.put("shopreserveTime", shopreserveTime);
		
		response.setContentType("application/json; charset=UTF-8");
		Gson gson=new GsonBuilder().setDateFormat("yyyy-MM-dd").create();

		try {
			gson.toJson(data,response.getWriter());
		} catch (JsonIOException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		System.out.println(data);
		
//		return data;
	}
	
	
	
	
	
	@RequestMapping("shopEnrollAdd.do")
	public String shopEnrollAdd(@ModelAttribute ShopInfo si, @RequestParam("thumbnailImg") MultipartFile thumbnailImg,
			HttpServletRequest request, @RequestParam("address1") String address1,
			@RequestParam("address2") String address2) {

		System.out.println("testtest" + si.getMemberId() + "확인");

		String menuname[] = request.getParameterValues("MenuName");
		String menuprice[] = request.getParameterValues("MenuPrice");
		String sidename[] = request.getParameterValues("SideName");
		String sideprice[] = request.getParameterValues("SidePrice");
		String drinkname[] = request.getParameterValues("DrinkName");
		String drinkprice[] = request.getParameterValues("DrinkPrice");
//		si.setAddress(address1+"/"+address2);
		si.setShopAddress(address1 + "/" + address2);

		List<ShopMenu> shopmenu = new ArrayList<ShopMenu>();

		for (int i = 0; i < menuname.length; i++) {
			System.out.println(menuname[i] + "test1");
			System.out.println(menuprice[i] + "test1");
			shopmenu.add(new ShopMenu(menuname[i], menuprice[i], 1));
		}
		for (int i = 0; i < sidename.length; i++) {
			System.out.println(sidename[i] + "test2");
			System.out.println(sideprice[i] + "test2");
			shopmenu.add(new ShopMenu(sidename[i], sideprice[i], 2));
		}
		for (int i = 0; i < drinkname.length; i++) {
			System.out.println(drinkname[i] + "test3");
			System.out.println(drinkprice[i] + "test3");
			shopmenu.add(new ShopMenu(drinkname[i], drinkprice[i], 3));
		}

		if (thumbnailImg != null && !thumbnailImg.isEmpty()) {
			String renameFileName = saveFile(thumbnailImg, request);

			if (renameFileName != null) {
				si.setShopRename(renameFileName);
				si.setShopOrigin(thumbnailImg.getOriginalFilename());
			}
		}
		/* test */

		int shopresult = sService.insertShop(si);
		int menuresult = sService.insertMenu(shopmenu);

		System.out.println("잘들어왔는지:" + shopresult + "," + menuresult);

		if (shopresult > 0 && menuresult > 0) {
			return "/shop/shopList";
		} else {
			throw new ShopException("게시글 등록에 실패하였습니다.");
		}

	}

	/* 파일 서비스 */
	public String saveFile(MultipartFile file, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");

		String savePath = root + "\\shopuploadFiles";

		File folder = new File(savePath);
		if (!folder.exists()) {
			folder.mkdirs();
		}

		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String originFileName = file.getOriginalFilename();
		String renameFileName = sdf.format(new Date(System.currentTimeMillis())) + "."
				+ originFileName.substring(originFileName.lastIndexOf(".") + 1);

		String renamePath = folder + "\\" + renameFileName;

		try {
			file.transferTo(new File(renamePath));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return renameFileName;

	}
	
	
	@RequestMapping("DeclareEnrollForm.do")
	public ModelAndView declareEnrollForm(@RequestParam int shopNo, @RequestParam String shopName,ModelAndView mv) {
		
		mv.addObject("shopNo", shopNo);
		mv.addObject("shopName", shopName);
		mv.setViewName("/shop/shopDeclareForm");
		
		return mv;
	}
	
	@RequestMapping("declare.do")
	public String declareEnroll(@ModelAttribute ShopDeclare sd) {
		System.out.println(sd+"testtest");
		
		int declareInsert=sService.insertDeclare(sd);
		
		if (declareInsert>0) {
			return "/shop/shopList";
		} else {
			throw new ShopException("식당신고 등록에 실패하였습니다.");
		}
//		return "/shop/shopList";
	}
	

	// 신진식 끝 =====================================================

	// 원태원 시작 ====================================================

	@RequestMapping("shopEnroll.do")
	public String shopEnrollForm() {
		return "/shop/shopEnroll";
	}

	//	@RequestMapping("shop.do")
	//	public String shopForm() {
	//		return "/shop/shopList";
	//	}

	@RequestMapping("/Reservation.do")
	public ModelAndView reservationForm(@RequestParam HashMap<String, Object> param, HttpServletRequest req,
			ModelAndView mv) {

		int shop_no = Integer.parseInt((String) param.get("SHOP_NO"));
		ShopInfo shopInfo = sService.selectShop(shop_no);
		
		List<String> timeList = new ArrayList<String>();


		
		String openTime=shopInfo.getShopOpen();
		String closeTime=shopInfo.getShopClose();
		String breakStartTime=shopInfo.getShopBreakStart();
		String breakCloseTime=shopInfo.getShopBreakClose();
		int minute1 =30;
		int maxResTime = Integer.parseInt(shopInfo.getMaxReservationTime());
		
		LocalTime opentime1 = LocalTime.parse(openTime);  //오픈시간
		LocalTime closeTime1 = LocalTime.parse(closeTime);  //마감시간
		LocalTime breakStartTime1 = LocalTime.parse(breakStartTime);  //브레이크 시작시간
		LocalTime breakCloseTime1 = LocalTime.parse(breakCloseTime);  //브레이크 마감시간
		
		int reserveTime=60*maxResTime;
		
		breakStartTime1=breakStartTime1.minusMinutes(reserveTime);
		closeTime1=closeTime1.minusMinutes(reserveTime);
		
		System.out.println("변경된 브레이크 시작 시간은?: "+breakStartTime1);
		
		for(int i=0; i<100; i++) {
			String open=opentime1+"";
			String breaktime=breakStartTime1+"";
			opentime1=opentime1.plusMinutes(minute1);
//			System.out.println(open);
				timeList.add(open);
			if(open.equals(breaktime)) {
				break;
			}
		}
		
		for(int i=0; i<100; i++) {
			String closetime=closeTime1+"";
			String breaktime=breakCloseTime1+"";
			breakCloseTime1=breakCloseTime1.plusMinutes(minute1);
//			System.out.println(breaktime);
				timeList.add(breaktime);
			if(breaktime.equals(closetime)) {
				break;
			}
		}
		
		System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
		System.out.println(timeList);


		List<Map<String, Object>> reservationList = sService.getReservationList(shop_no);

		mv.addObject("timeList", timeList);
		mv.addObject("closeTime1",closeTime1);
		mv.addObject("reservationList", reservationList);
		mv.setViewName("/shop/shopReservation");

		return mv;

	}

	@RequestMapping(value = "/MainMenu.do")
	public @ResponseBody HashMap<String, Object> MainMenu(HttpServletRequest req) {

		System.out.println("req?" + req.getParameter("SHOP_NO"));
		System.out.println("req?" + req.getParameter("T"));

		int shop_no = Integer.parseInt(String.valueOf(req.getParameter("SHOP_NO")));

		HashMap<String, Object> data = new HashMap<String, Object>();

		List MainMenu = new ArrayList();
		List SideMenu = new ArrayList();
		List DrinkMenu = new ArrayList();

		System.out.println("mm test ?  " + shop_no);

		List<Map<String, Object>> reservationList = sService.getReservationList(shop_no);

		for (int i = 0; i < reservationList.size(); i++) {

			if (Integer.parseInt(String.valueOf(reservationList.get(i).get("MENU_CATE"))) == 1) {
				MainMenu.add(reservationList.get(i));
			} else if (Integer.parseInt(String.valueOf(reservationList.get(i).get("MENU_CATE"))) == 2) {
				SideMenu.add(reservationList.get(i));
			} else {
				DrinkMenu.add(reservationList.get(i));
			}

		}

		data.put("MainMenu", MainMenu);
		data.put("SideMenu", SideMenu);
		data.put("DrinkMenu", DrinkMenu);

		return data;

	}

	@RequestMapping("/shop.do")
	public ModelAndView shopForm(ModelAndView mv) {

		// HashMap<String,Object> shopList = new HashMap<String,Object>();

		List<String> shopList = sService.getShopList();

		mv.addObject("shopList", shopList);
		mv.setViewName("/shop/shopList");

		return mv;
	}

	@RequestMapping("/test.do")
	public void ajaxtext() {

		HashMap<String, Object> testmap = new HashMap<String, Object>();
	}

	// 원태원 끝 ======================================================

}
