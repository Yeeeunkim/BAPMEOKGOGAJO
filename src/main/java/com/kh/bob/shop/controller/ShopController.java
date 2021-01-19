package com.kh.bob.shop.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.bob.shop.model.service.ShopService;

@Controller
public class ShopController {
	
	
	   @Autowired
	   private ShopService shopService;
	
	
	

		@RequestMapping("/Reservation.do")
		public ModelAndView reservationForm(@RequestParam HashMap<String,Object> param , HttpServletRequest req,ModelAndView mv) {
			

		      int shop_no = Integer.parseInt((String) param.get("SHOP_NO"));
		      
		      List<Map<String, Object>> reservationList = shopService.getReservationList(shop_no);
		      
		      
		      mv.addObject("reservationList",reservationList);
		      mv.setViewName("/shop/shopReservation");
		      
		      return mv;
			
		}	
	
	@RequestMapping("/shopEnroll.do")
	public String shopEnrollForm() {
		return "/shop/shopEnroll";
	}	
	

	
	@RequestMapping(value ="/MainMenu.do")
		public @ResponseBody HashMap<String,Object> MainMenu(HttpServletRequest req) {
		
		System.out.println("req?" + req.getParameter("SHOP_NO"));
		System.out.println("req?" + req.getParameter("T"));
		
			int shop_no = Integer.parseInt(String.valueOf(req.getParameter("SHOP_NO")));

			HashMap<String,Object> data = new HashMap<String,Object>();
			
			List MainMenu = new ArrayList();
			List SideMenu = new ArrayList();
			List DrinkMenu = new ArrayList();

			
			
			System.out.println("mm test ?  " + shop_no);
		
			List<Map<String, Object>> reservationList = shopService.getReservationList(shop_no);
			
			
			for(int i=0; i<reservationList.size(); i++) {
				
				
				if(Integer.parseInt(String.valueOf(reservationList.get(i).get("MENU_CATE"))) == 1 ) {
					MainMenu.add(reservationList.get(i));
				}
				else if(Integer.parseInt(String.valueOf(reservationList.get(i).get("MENU_CATE"))) == 2) {
					SideMenu.add(reservationList.get(i));
				}
				else {
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

		
// 		HashMap<String,Object> shopList = new HashMap<String,Object>();
		
		List<String> shopList = shopService.getShopList();
	
		mv.addObject("shopList",shopList);
		mv.setViewName("/shop/shopList");
		
		return mv;
	}
	
	
	
	@RequestMapping("/test.do")
	public void ajaxtext() {

		HashMap<String,Object> testmap = new HashMap<String,Object>();
	}
	
	
	
	
}
