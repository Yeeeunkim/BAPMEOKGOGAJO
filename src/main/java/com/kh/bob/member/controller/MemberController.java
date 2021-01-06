package com.kh.bob.member.controller;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.kh.bob.member.model.exception.MemberException;
import com.kh.bob.member.model.service.MemberService;
import com.kh.bob.member.model.vo.Member;


@SessionAttributes("loginUser")

@Controller
public class MemberController {
// 김예은 시작 ================================================
	
	@Autowired
	private MemberService bmService;
	
	//로그인 페이지 
	@RequestMapping("loginView.me")
	public String loginForm() {
		return "loginForm";
	}
	
	//로그인 기능 페이지
	@RequestMapping("login.me")
	public String login(Member m, HttpSession session, Model model) {
			Member loginUser = bmService.loginMember(m);
			
		if(loginUser != null) {
			session.setAttribute("loginUser", loginUser);
			return "redirect:home.do"; 
		} else {
			model.addAttribute("message", "로그인에 실패했습니다.");
			return "../common/errorPage";
		}	
	}
	
	//로그아웃
	@RequestMapping("logoutView.me")
	public String logout(SessionStatus status) {
		status.setComplete();
		return "redirect:home.do";
	}

	// 아이디찾기 페이지
	@RequestMapping("findFormId.me")
	public String findIdForm() {
		return "findIdForm";
	}
	
	
	// 아이디찾기 기능 페이지
	@RequestMapping("findId.me")
	public String findId(@RequestParam("member_name") String member_name,@RequestParam("phone") String phone, Model model) {
		
		model.addAttribute("member_name", member_name);
		model.addAttribute("phone", phone);
		
		Member loginUser = bmService.findId(model);
		
		if(loginUser != null) {
			model.addAttribute("loginUser", loginUser);
			return "findId";
		} else {
//			throw new MemberException("아이디 찾기에 실패했습니다.");
			throw new MemberException("아이디 찾기에 실패했습니다.");
		}	
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
	
	//일반 회원가입 기능 페이지
	@RequestMapping("minsert.me") 
	public String insertMember(@ModelAttribute Member m,@RequestParam("year") String year,
														@RequestParam("month") String month,
														@RequestParam("date") String date) {
		
//		System.out.println( year + "/" + month + "/" + date);
//		System.out.println(m);
		m.setMember_birth(  year + "/" + month + "/" + date);
		
		//암호화 관련
		//String encPwd = bcrypt.encode(m.getMember_pwd()());
		//System.out.println(encPwd);
		//m.setMember_pwd(encPwd); 
		
		int result = bmService.memberInsert(m);
		
		if(result > 0) {
			return "redirect:home.do";
		}else {
			throw new MemberException("일반 회원가입에 실패했습니다.");
		}
	}
	
	//사업자 회원가입 기능 페이지
	@RequestMapping("oinsert.me") 
	public String insertOwner(@ModelAttribute Member m) {
		
		int result = bmService.memberInsert(m);
		
		if(result > 0) {
			return "redirect:home.do";
		}else {
			throw new MemberException("사업자 회원가입에 실패했습니다.");
		}
	}
	
	//일반 회원정보 수정
	@RequestMapping("minfoUpate.me")
	public String minfoUpdate() {
		return "updateMemberForm";
	}
	   
	// 김예은 끝 =================================================
}
