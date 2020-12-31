package com.kh.bob.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {
	
	// 로그인 페이지
	@RequestMapping("login.me")
	public String loginForm() {
		return "loginForm";
	}
	

	// 아이디찾기 페이지
	@RequestMapping("findFormId.me")
	public String findIdForm() {
		return "findIdForm";
	}
	
	// 아이디찾기 기능 페이지
	@RequestMapping("findId.me")
	public String findId() {
		return "findId";
	}
	
	// 비밀번호찾기 페이지
	@RequestMapping("findFormPwd.me")
	public String findPwdForm() {
		return "findPwdForm";
	}
	
	// 비밀번호찾기 기능 페이지
	@RequestMapping("findPwd.me")
	public String findPwd() {
		return "findPwd";
	}
	
	// 회원가입 선택 페이지
	@RequestMapping("enrollForm.me")
	public String enrollForm() {
		return "enrollForm";
	}
	
	// 회원가입 동의 페이지
	// 버튼에 따라 1(일반회원), 2(사업자회원)으로 임의의 값을 받아서 화면과 같이 넘겨주어 구분 하였습니다
	@RequestMapping("agreeForm.me")
	public ModelAndView agreeForm(@RequestParam("auth_code") String auth_code, ModelAndView mv) {
		mv.addObject("auth_code", auth_code);
		return mv;
	}
	
	// 일반회원 가입, 사업자 회원가입 페이지
	@RequestMapping("enroll.me")
	public String enroll(@RequestParam("auth_code") String auth_code) {
		if(auth_code.equals("1")) {
			return "memberEnroll";
		} else {
			return "ownerEnroll";
		}
		
	}
}
