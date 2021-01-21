package com.kh.bob.member.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
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
import com.kh.bob.shop.model.vo.ShopInfo;
import com.kh.bob.shop.model.vo.ShopMenu;
import com.kh.bob.shop.model.vo.ShopSeat;


@SessionAttributes("loginUser")

@Controller
public class MemberController {
// 김예은 시작 ================================================
	
	@Autowired
	private MemberService bmService;
	

	@Autowired
	private BCryptPasswordEncoder bcrypt;
	
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
			throw new MemberException("로그인에 실패했습니다.");
		}	
	}
	//카카오 로그인
	@RequestMapping("kakaoLogin.me")
	public String kakaoLogin() {
		return "kakoLogin";
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

		Member findId = bmService.findId(model);
		
		if(findId != null) {
			model.addAttribute("findId", findId);
			return "findId";
		} else {
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
	public String findPwd(@RequestParam String member_id, @RequestParam String email, Model model) {
		
		model.addAttribute("member_id", member_id);
		model.addAttribute("email", email);
		
		Member findPwd = bmService.findPwd(model);
		
		if(findPwd != null) {
			model.addAttribute("findPwd", findPwd);
			return "findPwd";
		}else {
			throw new MemberException("비밀번호 찾기에 실패했습니다.");
		}
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
	public String insertOwner(@ModelAttribute Member m,@RequestParam("year") String year,
													@RequestParam("month") String month,
													@RequestParam("date") String date) {
		
		m.setMember_birth(  year + "/" + month + "/" + date);
		
		int result = bmService.memberInsert(m);
		
		if(result > 0) {
			return "redirect:home.do";
		}else {
			throw new MemberException("사업자 회원가입에 실패했습니다.");
		}
	}
	

	// 수정 아이디 중복검사
	@RequestMapping("dupId.me")
	public void idDuplicateCheck(@RequestParam("member_id") String member_id, HttpServletResponse response) {
		boolean isUsable = bmService.checkIdDup(member_id) == 0 ? true : false;
		System.out.println("isUsable :" + isUsable);
		
		try {
			response.getWriter().print(isUsable);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	//일반 마이페이지  
	@RequestMapping("myPage.me")
	public String myPageForm() {
		return "myPage";
	}
	
	//비밀번호 변경
	@RequestMapping("mPwdUpdate.me")
	public String pwdUpdate() {
		return "updatePwdForm";
	}
	
	// 비밀번호 변경
	@RequestMapping("updatePwd.me")
	public String pwdUpdate( @RequestParam("member_pwd") String member_pwd, @RequestParam("member_newPwd1") String newPwd,
			HttpSession session) {
		Member m = bmService.loginMember((Member)session.getAttribute("loginUser"));
		Member loginUser = bmService.loginMember(m);
		
		if(loginUser != null) {
			
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("member_id", m.getMember_id());
			map.put("newPwd", newPwd);
			int result = bmService.pwdUpdate(map);
			
			if(result > 0) {
				return "myPage";
			}else {
				throw new MemberException("비밀번호 수정에 실패하였습니다.");
			}
		}else {
			
			throw new MemberException("기존 비밀번호 틀렸습니다.");
		}
	}
	
	@RequestMapping("mInfoPwdForm.me")
	public String mCheckPwdForm() {
		return "checkPwd";
	}
	
	//일반 정보 수정 비밀번호 기능 페이지 
	@RequestMapping("mInfoPwd.me")
	public String mCheckPwd(Member m, HttpSession session, Model model) {
		Member loginUser = bmService.infoPwd(m);
		
		if(loginUser  != null ) {
			session.setAttribute("loginUser", loginUser);
			return "updateMemberForm";
		} else {
			throw new MemberException("비밀번호 오류");
		}	
	}
	
	// 일반 회원정보 수정 기능 페이지 
	@RequestMapping("mInfoUpdate.me")
	public String minfoUpdate(@ModelAttribute Member m, Model model) {
		int result = bmService.minfoUpdate(m);
		System.out.println(m);
		if(result > 0) {
			model.addAttribute("loginUser", m);
			return "myPage";
		}else {
			throw new MemberException("일반회원 정보 수정에 실패하였습니다.");
		}
	}
	
	//사업자 마이페이지 
	@RequestMapping("shopMypage.me")
	public String shopMyPageForm(@ModelAttribute ShopInfo si , @ModelAttribute ShopMenu sm, @ModelAttribute ShopSeat ss,  Model model) {
		int sInfo = bmService.selectSinfo(si);
		int sMenu = bmService.selectSmenu(sm);
		
		System.out.println("si : " + si);
		System.out.println("sm : " + sm);
		
		if(sInfo > 0 || sMenu > 0) {
			model.addAttribute("si", si);
			model.addAttribute("sm", sm);
			return "shopMyPage";
		}else {
			throw new MemberException("사업자 마이페이지 조회에 실패하였습니다.");
		}
	}
	
	@RequestMapping("oInfoPwdForm.me")
	public String oCheckPwdForm() {
		return "checkShopPwd";
	}
	
	//사업자 정보 수정 비밀번호 기능 페이지 
		@RequestMapping("oInfoPwd.me")
		public String oCheckPwd(Member m, HttpSession session, Model model) {
			Member loginUser = bmService.infoPwd(m);
			
			if(loginUser  != null ) {
				session.setAttribute("loginUser", loginUser);
				return "updateShopForm";
			} else {
				throw new MemberException("비밀번호 오류");
			}	
		}
	// 사업자 회원정보 수정 기능 페이지 
	@RequestMapping("oInfoUpdate.me")
	public String oinfoUpdate(@ModelAttribute Member m, Model model) {
		int result = bmService.minfoUpdate(m);
		System.out.println(m);
		if(result > 0) {
			model.addAttribute("loginUser", m);
			return "shopMyPage";
		}else {
			throw new MemberException("일반회원 정보 수정에 실패하였습니다.");
		}
	}	

	
	//일반, 사업자 회원 탈퇴
	@RequestMapping("mdelete.me")
	public String deleteMember(@RequestParam("member_id") String member_id, SessionStatus status) {
		int result = bmService.deleteMember(member_id);
		
		if(result > 0) {
			status.setComplete();
			return "redirect:home.do";
		}else {
			throw new MemberException("회원탈퇴에 실패하였습니다");
		}
	}
	
	
	// 김예은 끝 =================================================
}
