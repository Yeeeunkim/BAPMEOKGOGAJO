package com.kh.bob.member.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.text.html.FormSubmitEvent.MethodType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.bob.member.model.exception.MemberException;
import com.kh.bob.member.model.service.MemberService;
import com.kh.bob.member.model.vo.Member;
import com.kh.bob.shop.model.service.ShopService;
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
	private ShopService sService;
	
	@Autowired
	private BCryptPasswordEncoder bcrypt;

	// 로그인 페이지
	@RequestMapping("loginView.me")
	public String login(Model model, HttpSession session) {
		return "loginForm";
	}
	
	// 로그인 기능 페이지
	@RequestMapping("login.me")
	public String login(Member m, HttpSession session, Model model) {
		Member loginUser = bmService.loginMember(m);
		System.out.println("loginUser : " + loginUser);
		if (loginUser != null) {
			session.setAttribute("loginUser", loginUser);
			return "redirect:home.do";
		} else {
			throw new MemberException("로그인에 실패했습니다.");
		}
	}
	// 카카오 로그인
	@RequestMapping("kakaoLogin.me")
	public String kakaoLogin() {
		return "kakoLogin";
	}

	// 로그아웃
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
	public String findId(@RequestParam("member_name") String member_name, @RequestParam("phone") String phone,
			Model model) {

		model.addAttribute("member_name", member_name);
		model.addAttribute("phone", phone);

		Member findId = bmService.findId(model);

		if (findId != null) {
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

		if (findPwd != null) {
			model.addAttribute("findPwd", findPwd);
			return "findPwd";
		} else {
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
		if (auth_code.equals("1")) {
			return "memberEnroll";
		} else {
			return "ownerEnroll";
		}

	}

	// 일반 회원가입 기능 페이지
	@RequestMapping("minsert.me")
	public String insertMember(@ModelAttribute Member m, @RequestParam("year") String year,
			@RequestParam("month") String month, @RequestParam("date") String date) {

		m.setMember_birth(year + "/" + month + "/" + date);

		int result = bmService.memberInsert(m);
		System.out.println("m : " + m);
		if (result > 0) {
			return "redirect:home.do";
		} else {
			throw new MemberException("일반 회원가입에 실패했습니다.");
		}
	}

	// 사업자 회원가입 기능 페이지
	@RequestMapping("oinsert.me")
	public String insertOwner(@ModelAttribute Member m, @RequestParam("year") String year,
			@RequestParam("month") String month, @RequestParam("date") String date) {

		m.setMember_birth(year + "/" + month + "/" + date);

		int result = bmService.memberInsert(m);

		if (result > 0) {
			return "redirect:home.do";
		} else {
			throw new MemberException("사업자 회원가입에 실패했습니다.");
		}
	}

	// 아이디 중복검사
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

	// 일반 마이페이지
	@RequestMapping("myPage.me")
	public ModelAndView myPageForm(HttpSession session, ModelAndView mv) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		
		HashMap<String,Object> paramMap = new HashMap<String,Object>();
		
		paramMap.put("memberId", loginUser.getMember_id());
		//paramMap.put("name","이름");
		
		
		//예약 내역
		HashMap<String, Object> re = sService.selectReserve(paramMap);
		System.out.println("reSelect : " + re);
		
		//사용자가 예약한 식당 정보 조회
		re.put("shopNo", re.get("shopNo"));
		HashMap<String, Object> sp = sService.selectReserveShop(re);
		System.out.println("sp : " + sp);
		
		//예약 메뉴
		HashMap<String,Object> pmMap = new HashMap<String,Object>();		
		pmMap.put("reserveNo", re.get("reserveNo"));
		
		HashMap<String, Object> reme = sService.selectReserveMenu(pmMap);
		System.out.println("reme : " + reme);
		
		//리뷰
		HashMap<String, Object> rev = sService.selectReview(paramMap);
		System.out.println("rev : " + rev);
		
		 if(!sp.isEmpty() || !re.isEmpty() || !reme.isEmpty() || !rev.isEmpty() ){ 
			 mv.addObject("sp", sp);
			 mv.addObject("re", re);
			 mv.addObject("reme", reme);
			 mv.addObject("rev", rev);
			 mv.setViewName("myPage");
			 return mv;
		 }else { 
			 throw new MemberException("일반 마이페이지에 실패했습니다."); 
		 }
	}

	@RequestMapping("mPwdUpdate.me")
	public String pwdUpdate() {
		return "updatePwdForm";
	}

	// 비밀번호 변경
	@RequestMapping("updatePwd.me")
	public String pwdUpdate(@RequestParam("member_pwd") String member_pwd,
			@RequestParam("member_newPwd1") String newPwd, HttpSession session) {
		Member m = bmService.loginMember((Member) session.getAttribute("loginUser"));
		Member loginUser = bmService.loginMember(m);

		if (loginUser != null) {

			HashMap<String, String> map = new HashMap<String, String>();
			map.put("member_id", m.getMember_id());
			map.put("newPwd", newPwd);
			int result = bmService.pwdUpdate(map);

			if (result > 0) {
				return "myPage";
			} else {
				throw new MemberException("비밀번호 수정에 실패하였습니다.");
			}
		} else {

			throw new MemberException("기존 비밀번호 틀렸습니다.");
		}
	}

	@RequestMapping("mInfoPwdForm.me")
	public String mCheckPwdForm() {
		return "checkPwd";
	}

	// 일반 정보 수정 비밀번호 기능 페이지
	@RequestMapping("mInfoPwd.me")
	public String mCheckPwd(Member m, HttpSession session, Model model) {
		Member loginUser = bmService.infoPwd(m);

		if (loginUser != null) {
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
		if (result > 0) {
			model.addAttribute("loginUser", m);
			return "myPage";
		} else { 
			throw new MemberException("일반회원 정보 수정에 실패하였습니다.");
		}
	}

	@RequestMapping(value="shopMypage.me" )
	public ModelAndView shopMyPageForm( HttpSession session, ModelAndView mv) {
		// ★
		// 1. 마이페이지 들어갈 때 사업자 아이디 추출
		Member loginUser = (Member) session.getAttribute("loginUser");
		
		// 2. 추출한 아이디를 이용해 사업자의 식당 정보 가져오기
		ShopInfo si = sService.selectMyShop(loginUser.getMember_id());
		System.out.println(si);
		
		// 3-1. 가져온 식당정보에서 식당번호로 식당 주 메뉴(menu_cate == 1) 리스트에 담기
		List<ShopMenu> sm = sService.selectMyMenu1(si.getShopNo());
		System.out.println(sm);
		
		// 3-2. 가져온 식당정보에서 식당번호로 식당 사이드 메뉴(menu_cate == 2) 리스트에 담기
		List<ShopMenu> sms = sService.selectMyMenu2(si.getShopNo());
		System.out.println(sms);
		
		// 3-3. 가져온 식당정보에서 식당번호로 식당 음료 메뉴(menu_cate == 3) 리스트에 담기
		List<ShopMenu> smb = sService.selectMyMenu3(si.getShopNo());
		System.out.println(smb);
		

		if(si != null || !sm.isEmpty() || !sms.isEmpty() || !smb.isEmpty()){ 
			  
			 mv.addObject("si", si);
			 mv.addObject("sm", sm);
			 mv.addObject("sms", sms);
			 mv.addObject("smb", smb);
			 mv.setViewName("shopMyPage");
			 return mv;
		 }else { 
			 throw new MemberException("사장님 마이페이지에 실패했습니다."); 
		 }
	}

	//사업자 식당 정보 수정 리스트
	@RequestMapping("shopUpdateForm.me")
	public String shopUpateForm(HttpSession session, Model model) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		
		HashMap<String,Object> paramMap = new HashMap<String,Object>();
		
		paramMap.put("memberId", loginUser.getMember_id());
		//paramMap.put("name","이름");
		
		HashMap<String,Object> si = sService.selectSinfo(paramMap);
		System.out.println("si : " + si);
		//System.out.println("Result Data : " + si.isEmpty());
		//System.out.println(si.get("SHOP_CLOSE"));
		
		//ShopInfo shopUser = (ShopInfo) session.getAttribute("memberId");
		
		HashMap<String,Object> smMap = new HashMap<String,Object>();
		
		smMap.put("shopNo", si.get("shopNo"));
		
		//메인메뉴
		HashMap<String, Object> sm = sService.selectSmenu(smMap);
		System.out.println("sm : " + sm);
		 
		
		//사이드메뉴
		HashMap<String, Object> sms = sService.selectSmenuSide(smMap);
		System.out.println("sms : " + sms);
		
		//음료수
		HashMap<String, Object> smb = sService.selectSmenuBeverage(smMap);
		System.out.println("smb : " + smb);

		if(!si.isEmpty() || !sm.isEmpty()){ 
			  
			  model.addAttribute("si", si);
			  model.addAttribute("sm", sm);
			  model.addAttribute("sms", sms);
			  model.addAttribute("smb", smb);
			  return "updateShopInfoForm";
		 }else { 
			 throw new MemberException("사장님 마이페이지에 실패했습니다."); 
		}
	}
	
	// 기존 첨부파일 삭제 메소드
		public void deleteFile(String fileName, HttpServletRequest request) {
			String root = request.getSession().getServletContext().getRealPath("resources");
			String savePath = root + "\\shopuploadFiles";
			
			File f = new File(savePath + "\\" + fileName);
			
			if(f.exists()) {
				f.delete();
			}
		}
	
	//사장님 식당 정보 수정 기능
	@RequestMapping("shopUpdate.me")
	public ModelAndView shopUpdate(@ModelAttribute("shopInfo") ShopInfo shopInfo, @ModelAttribute("shopMenu") ShopMenu smenu, @ModelAttribute("shopMenu") ShopMenu smSmenu, @ModelAttribute("shopMenu") ShopMenu smBmenu,
			         @RequestParam("thumbnailImg") MultipartFile thumbnailImg, HttpServletRequest request, HttpSession session, ModelAndView mv){
		/**
		 ================================================================================
		 
		     public String saveUser(@ModelAttribute("signUpForm") SignUpForm signUpForm, Model model) {
		     }
		     
		     
		     	<form:form action="saveSignUpForm" cssClass="form-horizontal"	method="post" modelAttribute="signUpForm">

						<div class="form-group">
							<label for="firstname" class="col-md-3 control-label">First
								Name</label>
							<div class="col-md-9">
								<form:input path="firstName" cssClass="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label for="lastname" class="col-md-3 control-label">Last
								Name</label>
							<div class="col-md-9">
								<form:input path="lastName" cssClass="form-control" />
							</div>
						</div>
	
		 */
		
		Enumeration<String> enums = request.getParameterNames();
		while (enums.hasMoreElements()) {
			String string = (String) enums.nextElement();
			
			System.out.println("Key:" + string + " / value:" + request.getParameter(string));
			System.out.println("shopInfoUpdate : " + shopInfo);
			System.out.println("shopMenuUpdate : " + smenu);
			
			if(thumbnailImg != null && !thumbnailImg.isEmpty()) {//첨부파일이 있다면
				if (shopInfo.getShopRename() != null) { // 기존에 넣었던 파일이 있다면
					deleteFile(shopInfo.getShopRename(), request);
				}
				String renameFileName = saveFile(thumbnailImg, request);
				
				if(renameFileName != null) {
					shopInfo.setShopRename(renameFileName);
					shopInfo.setShopOrigin(thumbnailImg.getOriginalFilename());
				}
			}
			
	
			int si = sService.sinfoUpdate(shopInfo);
			int sm = sService.smenuUpdate(smenu);
//			int sms = sService.sideUpdate(smSmenu);
//			int smb = sService.beverUpate(smBmenu);
			//System.out.println("사이드메뉴 수정 : " + sms);
			System.out.println("siUpdate" + si);
			System.out.println("smUpdate" + sm);
		 if(si > 0 || sm > 0 ){ 
			  mv.addObject("si", si);
			  mv.addObject("sm", sm);
			 // mv.addObject("sms", sms);
			 // mv.addObject("smb", smb);
			  mv.setViewName("redirect:shopMypage.me"); 
		 }
		}
		return mv;
	}
	//1)
	//수정안된 si안에 있는걸 get하는거랑 
	//수정된  siUp안에 있는 걸 get하게 되면 jsp화면을 재사용이 어렵지 않을까?
	
	//2)
	//만약 식당 메인 메뉴가 2개 이상이면 어떻게 해야할까?
	//Request processing failed; nested exception is org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 2
	
	//파일 이름 날짜로 수정하는 과정
		public String saveFile(MultipartFile file, HttpServletRequest request) {
		  String root = request.getSession().getServletContext().getRealPath("resources");
		  // 웹 서버 contextPath를 불러와 폴더의 경로 받아온다 (webapp 하위의 resources 폴더)
		  String savePath = root + "\\shopuploadFiles";
		  									//ㄴ 최종목적지
		  //혹시라도 파일 안만들어져있으면 여기로 넣어줘
		  File folder = new File(savePath);
		  if(!folder.exists()) {
			  folder.mkdirs();
		  }
		  
		  //파일 이름 바꾸기 
		  SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		  String originFileName  = file.getOriginalFilename();
		  //확장자 png, jpg이런거 바꾸기 
		  String renameFileName = sdf.format(new Date(System.currentTimeMillis())) 
				  			+ "." + originFileName.substring(originFileName.lastIndexOf(".") + 1);
		  
		  String renamePath = folder + "\\" + renameFileName;
		  
		  try {
			  file.transferTo(new File(renamePath));
		  } catch (IllegalStateException e) {
			  e.printStackTrace();
		  } catch (IOException e) {
			  e.printStackTrace();
		  }
		  
		  return renameFileName;//d에 파일 저장용도 
		}

	@RequestMapping("oInfoPwdForm.me")
	public String oCheckPwdForm() {
		return "checkShopPwd";
	}

	// 사업자 정보 수정 전 비밀번호 입력 페이지
	@RequestMapping("oInfoPwd.me")
	public String oCheckPwd(Member m, HttpSession session, Model model) {
		Member loginUser = bmService.infoPwd(m);

		if (loginUser != null) {
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
		if (result > 0) {
			model.addAttribute("loginUser", m);
			return "shopMyPage";
		} else {
			throw new MemberException("일반회원 정보 수정에 실패하였습니다.");
		}
	}
	
	//일반 회원 탈퇴
	@RequestMapping("mdeleteForm.me")
	public String deleteMemberForm() {
		return "deleteMemberForm";
	}
	@RequestMapping("mdelete.me")
	public String deleteMember(@RequestParam("member_id") String member_id, SessionStatus status) {
		int result = bmService.deleteMember(member_id);

		if (result > 0) {
			status.setComplete();
			return "redirect:home.do";
		} else {
			throw new MemberException("일반 회원탈퇴에 실패하였습니다");
		}
	}
	
	//식당 정보 삭제 
	@RequestMapping("deleteShop.me")
	public String deleteShopinfo() {
		return "shopNullPage";
	}
	//사업자  탈퇴
	@RequestMapping("mdeleteShopForm.me")
	public String deleteShopForm() {
		return "deleteShopForm";
	}
	@RequestMapping("sdelete.me")
	public String deleteShop(@RequestParam("member_id") String member_id, SessionStatus status) {
		int result = bmService.deleteMember(member_id);

		if (result > 0) {
			status.setComplete();
			return "redirect:home.do";
		} else {
			throw new MemberException("사업자 회원탈퇴에 실패하였습니다");
		}
	}
	
	
	// 김예은 끝 =================================================
}
