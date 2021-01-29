package com.kh.bob.shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ShopServlet {
	
	@RequestMapping("/Reservation.do")
	public String reservationForm() {
		return "/shop/shopReservation";
	}	
	
	@RequestMapping("/shopEnroll.do")
	public String shopEnrollForm() {
		return "/shop/shopEnroll";
	}	
	
	
	@RequestMapping("/shop.do")
	public String shopForm() {
		return "/shop/shopList";
	}	
	
}
