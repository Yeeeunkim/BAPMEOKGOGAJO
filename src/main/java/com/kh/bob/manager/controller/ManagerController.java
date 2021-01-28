package com.kh.bob.manager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ManagerController {
	
	
	   // 강동기 시작 ===============================================
	   
	   // 강동기 끝 ================================================

	   
	   // 김예은 시작 ================================================
	   
	   // 김예은 끝 =================================================

	   
	   // 김하영 시작 ================================================
	   
	   // 김하영 끝 =================================================

	    
	   
	   // 민병욱 끝 ====================================================
	   
	   
	   // 신진식 시작 ===================================================
			@RequestMapping("manager.ma")
			public String managerPage() {
				System.out.println("테스트");
				return "manager";
			}
			
			@RequestMapping("review.ma")
			public String reviewPage() {
				System.out.println("테스트");
				return "review";
			}
	   // 신진식 끝 =====================================================

	   
	   // 원태원 시작 ====================================================
	   
	   // 원태원 끝 ======================================================
}
