package com.kh.bob.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	// 로그인 페이지
	@RequestMapping("login.me")
	public String loginForm() {
		return "loginForm";
	}
}
