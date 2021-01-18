package com.kh.bob.manager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ManagerController {
	
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
}
